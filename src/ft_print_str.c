/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_str.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbriand <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/14 23:24:20 by mbriand           #+#    #+#             */
/*   Updated: 2023/11/26 20:48:04 by mbriand          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftprintf.h"

int	ft_print_str(char *s)
{
	int	i;

	if (!s)
		return (0);
	i = 0;
	while (s[i])
	{
		ft_print_char(s[i]);
		i++;
	}
	return (i);
}

/*int main(void)
{
	int test = ft_print_str("Hello, world!");
	printf("%d\n", test);
	int test_return = printf("%s", "Hello, world!");
	printf("%d", test_return);
	return (0);
}*/
