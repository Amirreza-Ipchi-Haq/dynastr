# The `char* dynastr_strntmp(char* s,size_t len,const char release)` Function
This function is similar to [`char* dynastr_strntmp(char* s,size_t len,const char release)`](https://github.com/Amirreza-Ipchi-Haq/strcal/blob/main/Documentation/C/Reference/strtmp.md) with the difference that you can give a character limit from the left.
## Arguments
* `char* s`: The string to be duplicated
* `size_t len`: The number of characters to be copied from the left
* `const char release`: The argument indicating that `s` needs to be freed or not (Read [here](https://github.com/Amirreza-Ipchi-Haq/dynastr/blob/main/Reference.md#note) for more information)
## Return Value
The string with `len` characters copied from the left side of `s` allocated in the heap
## Example
```c
#include<stdio.h>
#include"cstrcal.h"
int main(){
	char *s=dynastr_strntmp("String allocated in the heap",16,0);
	printf("%s\n",s);
	free(s);
	return 0;
}
```
In this example we assign `s` with the first 16 characters of the string literal `"String allocated in the heap"` and print the result followed by a newline. The output would be:
```
String allocated
```
Finally, we free the string since it's allocated in the heap.
