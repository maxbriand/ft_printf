/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbriand <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/24 20:50:28 by mbriand           #+#    #+#             */
/*   Updated: 2023/11/24 20:53:39 by mbriand          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftprintf.h"

// listen the string (arg 1 of printf)
int	ft_printf(const char *s, ...)
{
	int		i;
	int		counter;
	va_list	args;

	va_start(args, s);
	i = 0;
	while (s[i])
	{
		if (s[i] == '%')
		{
			i++;
			parser(s[i], args);
		}
		else
		{
			ft_print_char(s[i]);
			printf("ok");// continue to handle return
			counter++;
		}
		i++;
	}
	va_end(args);
	return (counter);
}
