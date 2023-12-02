/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbriand <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/24 20:50:28 by mbriand           #+#    #+#             */
/*   Updated: 2023/12/02 00:51:26 by mbriand          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftprintf.h"
#include <stdio.h>
#include <stdarg.h>

int	ft_parser(char c, va_list args);

// listen the string (arg 1 of printf)
int	ft_printf(const char *s, ...)
{
	int		i;
	int		counter;
	va_list	args;

	va_start(args, s);

	counter = 0;
	i = 0;
	while (s[i])
	{
		//pass the list of argument in parser function
		if (s[i] == '%')
		{
			i++;
			counter += ft_parser(s[i], args);
		}
		else
		{
			ft_print_char(s[i]);
			counter++;
		}
		i++;
	}
	va_end(args);
	return (counter);
}
