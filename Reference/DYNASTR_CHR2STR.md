# The `DYNASTR_CHR2STR(c)` Macro
This macro takes a character and converts it to a string in form of a static array. The result would be `(char[2]){c,0}`.
## Example
```c
#include<stdio.h>
#include"dynastr.h"
int main(){
	printf("%s\n",DYNASTR_CHR2STR('C'));
	return 0;
}
```
In this example, we print the character `'C'` in form of a string.

That's about it...
