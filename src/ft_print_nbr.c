/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_nbr.c                                     :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbriand <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/14 23:22:12 by mbriand           #+#    #+#             */
/*   Updated: 2023/11/24 21:47:40 by mbriand          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftprintf.h"

// modify the return value

int	ft_print_nbr(int n)
{
	if (n == -2147483648)
		return (ft_print_str("-2147483648"));
	if (n < 0)
	{
		ft_print_char('-');
		n *= -1;
	}
	if (n > 9)
	{
		ft_print_nbr(n / 10);
		ft_print_char(n % 10 + 48);
	}
	if (n < 10 && n >= 0)
		ft_print_char(n + 48);
	return (10);
}

/*int main(void)
{
	ft_putnbr_fd(2, 1);
	return (0);
}*/
