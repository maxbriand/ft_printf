/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_pt.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbriand <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/24 20:50:17 by mbriand           #+#    #+#             */
/*   Updated: 2023/11/24 21:45:51 by mbriand          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftprintf.h"

int	ft_print_pt(unsigned long long n, char x)
{
	if (n > 15)
	{
		ft_print_pt(n / 16, x);
		ft_print_pt(n % 16, x);
	}
	else
	{
		ft_choose_base(n, x);
	}
}
