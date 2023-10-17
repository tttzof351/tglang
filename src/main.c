#include <time.h>
#include <stdio.h>
#include "tglang.h"

int main() {
  //const char* text = "let x = 1;";
  char* text = "#include <stdio.h>\n\nint main(int argc, char* argv[])\n{\n\n  printf(\"Hello world\");\n}";
  
  printf("\nStart measure\n");  
  clock_t t = clock();
  enum TglangLanguage tg_lang_code = tglang_detect_programming_language(text);  
  
  t = clock() - t;
  double time_taken = 1000.0 * ((double)t)/CLOCKS_PER_SEC;   

  printf("Input: %s\n", text);
  printf("Output: %s\n", TG_LANG_NAMES[tg_lang_code]);
  printf("\nFunction: %f milliseconds to execute \n\n", time_taken);


  text = "<?php echo 'Hello, World!'; ?>";
  printf("\nStart measure\n");  
  t = clock();
  tg_lang_code = tglang_detect_programming_language(text);
        
  t = clock() - t;
  time_taken = 1000.0 * ((double)t)/CLOCKS_PER_SEC;   

  printf("Input: %s\n", text);
  printf("Output: %s\n", TG_LANG_NAMES[tg_lang_code]);
  printf("\nFunction: %f milliseconds to execute \n\n", time_taken);

  return 0;
}

