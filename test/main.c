#include <stdarg.h>
#include <stdio.h>
#include "libft.h"
#include "libftprintf.h"

int main(void)
{
	//char test
	char	c = 'a';
	char	d = 'b';
	char	e = 'c';
	int r1 = ft_printf("Char test: %c %c %c\n", c, d, e);
	int r2 = printf("Char test: %c %c %c\n", c, d, e);
	printf("%d VS %d\n", r1, r2);

	// string test
	char*	m = "Let's get";
	char*	u = "done";
	char*	l = "to business!";
	int r3 = ft_printf("String test: %s %s %s\n", m, u, l);
	int r4 = printf("String test: %s %s %s\n", m, u, l);
	printf("%d VS %d\n", r3, r4);

	// decimal test
	int	i = -52;
	int j = 2147483647;
	int k = -2147483648;
	int r5 = ft_printf("Decimal test: %d %d %d\n", i, j, k);
	int r6 = printf("Decimal test: %d %d %d\n", i, j, k);
	printf("%d VS %d\n", r5, r6);

	// integer test
	int r7 = ft_printf("Integer test: %i %i %i\n", i, j, k);
	int r8 = printf("Integer test: %i %i %i\n", i, j, k);
	printf("%d VS %d\n", r7, r8);

	// unsigned decimal test
	int nega = -2;
	unsigned int big = -2147483648;
	unsigned int nor = -1147483647;
	int r9 = ft_printf("Unsigned decimal test: %u %u %u\n", nega, big, nor);
	int r10 = printf("Unsigned decimal test: %u %u %u\n", nega, big, nor);
	printf("%d VS %d\n", r9, r10);

    //hexadecimal low test
	unsigned int h1 = 2147483648;
	int h2 = 485677;
	int h3 = -2147483648;
	int r11 = ft_printf("Low hexadecimal: %x %x %x\n", h1, h2, h3);
	int r12 = printf("Low hexadecimal: %x %x %x\n", h1, h2, h3);
	printf("%d VS %d\n", r11, r12);

	//hexadecimal upper test
	unsigned int ha1 = 2147483648;
	int ha2 = 4856;
	int ha3 = -845;
	int r13 = ft_printf("Upper hexadecimal: %X %X %X\n", ha1, ha2, ha3);
	int r14 = printf("Upper hexadecimal: %X %X %X\n", ha1, ha2, ha3);
	printf("%d VS %d\n", r13, r14);

	// pointer test
    int demo = 89;
	char*	pt_demo = &c;
    int r15 = ft_printf("Pointer test: %p\n", pt_demo);
    int r16 = printf("Pointer test: %p\n", pt_demo);
	printf("%d VS %d\n", r15, r16);

	// % case test
	int r17 = ft_printf("I am a legend %%%%\n");
	int r18 = printf("I am a legend %%%%\n");
	printf("%d VS %d\n", r17, r18);
	return(0);
}
