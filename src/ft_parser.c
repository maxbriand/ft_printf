/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_parser.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbriand <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/24 20:49:59 by mbriand           #+#    #+#             */
/*   Updated: 2023/12/02 17:40:07 by mbriand          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftprintf.h"
#include <stdarg.h>

int	ft_parser(char c, va_list args)
{
	int	lenght;
	//test
	lenght = 0;
	if (c == 'c')
		lenght = ft_print_char(va_arg(args, int));
	else if (c == 's')
		lenght = ft_print_str(va_arg(args, char *));
	else if (c == 'd' || c == 'i')
		lenght = ft_print_nbr(va_arg(args, int));
	else if (c == 'u')
		lenght = ft_print_unnbr(va_arg(args, unsigned int));
	else if (c == 'x')
		lenght = ft_print_hexanbr(va_arg(args, unsigned int), c);
	else if (c == 'X')
		lenght = ft_print_hexanbr(va_arg(args, unsigned int), c);
	else if (c == 'p')
	{
		lenght = ft_print_str("0x"); //should I count that? +2
		lenght += ft_print_pt(va_arg(args, unsigned long long), 'x');
	}
	else if (c == '%')
		lenght = ft_print_char('%');
	return (lenght);
}
