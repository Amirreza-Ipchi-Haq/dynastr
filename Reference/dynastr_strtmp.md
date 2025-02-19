# The `char* dynastr_strtmp(char* s,const char release)` Function
This function returns a duplicated string from `s` allocated in the heap. It functions like the POSIX `string.h` function `strdup`, but with the ability to free the original string afterwards.
## Arguments
* `char* s`: The string to be duplicated
* `const char release`: The argument indicating that `s` needs to be freed or not (Read [here](https://github.com/Amirreza-Ipchi-Haq/dynastr/blob/main/Reference.md#note) for more information)
## Return Value
The string with the value of `s` allocated in the heap
## Example
```c
#include<stdio.h>
#include"cstrcal.h"
int main(){
	char *s=dynastr_strtmp("String allocated in the heap",0);
	printf("%s\n",s);
	free(s);
	return 0;
}
```
In this example, we give the string literal `"String allocated in the heap"` to `dynastr_strtmp` and store the result in the character pointer `s`. Then, we print the string followed by a newline and free the string afterwards (because it's allocated in the heap).
