# The `dynastr.h` Reference
## Note
Some functions require a `release` argument. Since one of the ways to store strings in C is assigning a dynamic character array in a character pointer (which is the way strings are mostly returned in this library), there's an option which allows users to free the strings given as arguments. For string-returning functions which take only one string as an input, you can set its `release` argument to `1` in case it needs to be freed. Unless, you can pass `0` to it.
>[!IMPORTANT]
>String literals & static character arrays must not be freed because they're allocated in the stack (and not heap) and thus, they're not freeable. If you do such, you'll get a runtime error.

But what if the function needed 2 strings as an input (like `strappend`, for example)? In such case, we can do the following steps below:
1. Set the initial value of the `release` argument to `0`.
2. If the first string's needed to be freed, add `2` to it.
3. If the second strings's needed to be freed, add `1` to it.
4. Pass the current value as the `release` argument.

You might notice that the `release` argument is treated like a binary number in this case. The first bit from the left indicates if the first string needs to be freed, and the second bit does the same to the second string.
## List of macros & functions
### Macros
|Macro|Description|
|-|-|
|[`DYNASTR_CHR2STR(c)`](https://github.com/Amirreza-Ipchi-Haq/dynastr/blob/main/Reference/DYNASTR_CHR2STR.md)|Converts a character to a static character array which is a string.|
### Functions
|Function|Description|
|-|-|
|[`char* dynastr_strtmp(char* s,const char release)`](https://github.com/Amirreza-Ipchi-Haq/dynastr/blob/main/Reference/dynastr_strtmp.md)|Creates a copy of a string which will be allocated in the heap.|
|[`char* dynastr_strntmp(char* s,size_t len,const char release)`](https://github.com/Amirreza-Ipchi-Haq/dynastr/blob/main/Reference/dynastr_strntmp.md)|Creates a copy of a string which will be allocated in the heap with a character limit of `len` from the left.|
|[`char* dynastr_strnrtmp(char* s,size_t len,const char release)`](https://github.com/Amirreza-Ipchi-Haq/dynastr/blob/main/Reference/dynastr_strnrtmp.md)|Creates a copy of a string which will be allocated in the heap with a character limit of `len` from the right.|
|[`char* dynastr_strappend(char* s0,char* s1,const char release)`](https://github.com/Amirreza-Ipchi-Haq/dynastr/blob/main/Reference/dynastr_strappend.md)|Appends `s1` to `s0` and returns the result allocated in the heap.|
|[`char* dynastr_mltstr(char* s0,char* s1,size_t n,const char release)`](https://github.com/Amirreza-Ipchi-Haq/dynastr/blob/main/Reference/dynastr_mltstr.md)|Returns the result of multiplying `s1` in `n` and appending it to `s0`.|
|[`char* dynastr_rmchr(char* n,char c,const char release)`](https://github.com/Amirreza-Ipchi-Haq/dynastr/blob/main/Reference/dynastr_rmchr.md)|Returns a copy of a string with `c` removed.|
|[`void dynastr_swapstr(char** a,char** b)`](https://github.com/Amirreza-Ipchi-Haq/dynastr/blob/main/Reference/dynastr_swapstr.md)|Swaps 2 strings of any type.|
