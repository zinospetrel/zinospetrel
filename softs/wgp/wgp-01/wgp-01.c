#include <stdio.h>
#include <stdlib.h>
#include <locale.h>
#include <string.h>
#include <unistd.h>
#include <time.h>
#include <termios.h>
#include <ctype.h>

int getch();
int getche();
void wgp_sys_banner();
void wgp_fs_run(const char *p_cmd);
void wgp_fs_srun(const char *p_cmd);
char *wgp_fs_read_text_file(const char *p_filename);
int wgp_fs_write_text_file(const char *p_filename, const char *p_text);
char *wgp_fs_get_str();
char *wgp_fs_exec(const char *p_cmd);
void wgp_sys_call(const char *p_mod);

int getch() {
  struct termios oldattr, newattr;
  int ch;

  tcgetattr(STDIN_FILENO, &oldattr);

  newattr = oldattr;
  newattr.c_lflag &= ~(ICANON | ECHO);

  tcsetattr(STDIN_FILENO,  TCSANOW, &newattr);

  ch = getchar();

  tcsetattr(STDIN_FILENO, TCSANOW, &oldattr);

  return ch;
}

int getche() {
  struct termios oldattr, newattr;
  int ch;

  tcgetattr(STDIN_FILENO, &oldattr);

  newattr = oldattr;
  newattr.c_lflag &= ~(ICANON);
  newattr.c_lflag |= ECHO;

  tcsetattr(STDIN_FILENO,  TCSANOW, &newattr);

  ch = getchar();

  tcsetattr(STDIN_FILENO, TCSANOW, &oldattr);

  return ch;
}

void wgp_sys_banner() {
  printf("\033[2J\033[H");
  printf("====================================\n");
  printf("         _  > Gopher Proxy via Web <\n");
  printf(" __ __ _(_)__ _ ___ ___ _ _  ╋╋┏┓┏┓ \n");
  printf(" \\ V  V / / _` / -_) _ \\ ' \\ ┃┃┃┓┃┃ \n");
  printf("  \\_/\\_/|_\\__, \\___\\___/_||_|╋╋┗┛┣┛ \n");
  printf("   P-01   |___/ V6: 2025.11.03_17.00\n");
  printf("====================================\n");
  printf("     Gopher Proxy for Android       \n"); 
  printf("====================================\n");
  printf("\n");
}

void wgp_fs_run(const char *p_cmd) {
  char *v_msg = (char *)malloc(1024 * 2);
  sprintf(v_msg, "\n==[WGP]==> %s \n", p_cmd);
  printf("%s", v_msg);
  system(p_cmd);
}

void wgp_fs_srun(const char *p_cmd) {
  system(p_cmd);
}

char *wgp_fs_read_text_file(const char *p_filename) {
  FILE *v_fp = (FILE *)fopen(p_filename, "r");
  if (v_fp == NULL) {
    return NULL;
  }

  fseek(v_fp, 0, SEEK_END);
  long v_file_size = (long)ftell(v_fp);
  fseek(v_fp, 0, SEEK_SET);

  char *v_buffer = (char *)malloc(v_file_size + 1);
  if (v_buffer == NULL) {
    fclose(v_fp);
    return NULL;
  }

  size_t v_bytes_read = (size_t)fread(v_buffer, 1, v_file_size, v_fp);
  if (v_bytes_read != v_file_size) {
    free(v_buffer);
    fclose(v_fp);
    return NULL;
  }

  v_buffer[v_file_size] = '\0';

  fclose(v_fp);

  return v_buffer;
}

int wgp_fs_write_text_file(const char *p_filename, const char *p_text) {
  FILE *v_fp = (FILE *)fopen(p_filename, "w");
  if (v_fp == NULL) {
    return -1;
  }
  fprintf(v_fp, "%s", p_text);
  fclose(v_fp);
  return 0;
}

char *wgp_fs_get_str() {
  long v_max_size = 1024 * 10;
  char *v_ret = (char *)malloc(v_max_size + 1);
  char v_c = getchar();
  long v_pos = 0;
  while (v_c != '\n' && v_c != '\r' && v_pos < v_max_size) {
    v_ret[v_pos++] = v_c;
    v_c = getchar();
  }
  v_ret[v_pos] = '\0';
  if (v_pos == 0) {
    return v_ret;
  }
  return v_ret;
}

char *wgp_fs_exec(const char *p_cmd) {
  char *v_ret = NULL;
  FILE *v_fp;

  v_fp = popen(p_cmd, "r");
  if (v_fp == NULL) return v_ret;

  v_ret = (char *)malloc(1024 * 64);
  char *v_ret_tmp = (char *)malloc(1024 * 64);
  int v_tmp_sz = 1024;
  char *v_tmp = (char *)malloc(v_tmp_sz + 1);

  sprintf(v_ret, "%s", "");
  while (fgets(v_tmp, v_tmp_sz, v_fp) != NULL) {
    sprintf(v_ret_tmp, "%s", v_ret);
    sprintf(v_ret, "%s%s", v_ret_tmp, v_tmp);
  }

  pclose(v_fp);

  return v_ret;
}

void wgp_sys_call(const char *p_mod) {
  char *v_cmd = (char *)malloc(1024 * 2);
  sprintf(v_cmd, "cd ~ && pwd -P");
  char *v_home_dir = wgp_fs_exec(v_cmd);
  sprintf(v_cmd, "%s/wgb/wgp-01.bh %s", v_home_dir, p_mod);
  wgp_fs_srun(v_cmd);
}

int menu_register() {
  wgp_sys_banner();
  printf("====================================\n");
  printf("             Register               \n");
  printf("   -----------------------------    \n");
  printf("                                    \n");
  printf("Enter your license key: ");
  char *v_key = wgp_fs_get_str();
  char *v_cmd = (char *)malloc(1024 * 2);
  sprintf(v_cmd, "cd ~ && pwd -P");
  char *v_home_dir = wgp_fs_exec(v_cmd);
  sprintf(v_cmd, "%s/wgb/wgp-01-lic.txt", v_home_dir);
  wgp_fs_write_text_file(v_cmd, v_key);
  wgp_sys_call("register");
  printf("\nPress any key to continue ... ");
  getch();
}

int menu_configure() {
  wgp_sys_banner();
  printf("====================================\n");
  printf("             Configure              \n");
  printf("   -----------------------------    \n");
  printf("                                    \n");
  wgp_sys_call("config");
  printf("\nPress any key to continue ... ");
  getch();
}

int menu_modify() {
  wgp_sys_banner();
  printf("====================================\n");
  printf("              Modify                \n");
  printf("   -----------------------------    \n");
  printf("                                    \n");
  wgp_sys_call("data");
  printf("\nPress any key to continue ... ");
  getch();
}

int menu_start() {
  wgp_sys_banner();
  printf("====================================\n");
  printf("              Start                 \n");
  printf("   -----------------------------    \n");
  printf("                                    \n");
  wgp_sys_call("start");
  printf("\nPress any key to continue ... ");
  getch();
}

int menu_stop() {
  wgp_sys_banner();
  printf("====================================\n");
  printf("               Stop                 \n");
  printf("   -----------------------------    \n");
  printf("                                    \n");
  wgp_sys_call("stop");
  printf("\nPress any key to continue ... ");
  getch();
}

int menu_uninstall() {
  wgp_sys_banner();
  printf("====================================\n");
  printf("              Uninstall             \n");
  printf("   -----------------------------    \n");
  printf("                                    \n");
  wgp_sys_call("uninstall");
  printf("\nPress any key to continue ... ");
  getch();
}


int menu_login() {
  wgp_sys_banner();
  printf("====================================\n");
  printf("               Login                \n");
  printf("   -----------------------------    \n");
  printf("                                    \n");
  wgp_sys_call("login");
  printf("\nPress any key to continue ... ");
  getch();
}

int menu_main() {
  int v_ret = 0;

  while (v_ret == 0) {
    wgp_sys_banner();
    printf("====================================\n");
    printf("            Entrance                \n");
    printf("   -----------------------------    \n");
    printf("                                    \n");
    printf("1. Register                         \n");
    printf("2. Configure Servers                \n");
    printf("3. Modify Gopherspace               \n");
    printf("4. Start Servers                    \n");
    printf("5. Stop Servers                     \n");
    printf("6. Uninstall Servers                \n");
    printf("7. Login to Servers                 \n");
    printf("_                                   \n");

    char v_c = (char)getch();
    if (v_c == '1') menu_register();
    if (v_c == '2') menu_configure();
    if (v_c == '3') menu_modify();
    if (v_c == '4') menu_start();
    if (v_c == '5') menu_stop();
    if (v_c == '6') menu_uninstall();
    if (v_c == '7') menu_login();
  }

  return v_ret;
}

int main(int p_argc, char *p_argv[]) {
  return menu_main();
}
