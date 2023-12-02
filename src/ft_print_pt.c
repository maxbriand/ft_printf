/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_pt.c                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbriand <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/24 20:50:17 by mbriand           #+#    #+#             */
/*   Updated: 2023/12/02 17:44:43 by mbriand          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftprintf.h"


// the result for NULL case is weird
int	ft_print_pt(unsigned long long n, char x)
{
	int	i;
	
	i = 0;
	if (n > 15)
	{
		i = ft_print_pt(n / 16, x);
		ft_print_pt(n % 16, x);
	}
	else
		ft_up_or_low(n, x);
	i++;
	return (i);
}
