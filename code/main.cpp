
#include <stdio.h>

int main(void) {
#if TEST_COMPILE_DEFINE
 printf("Hello world\n");
#else
 printf("Debug world\n");
#endif

 return 0;
}
