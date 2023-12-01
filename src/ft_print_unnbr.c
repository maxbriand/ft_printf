/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_unnbr.c                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbriand <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/24 20:50:57 by mbriand           #+#    #+#             */
/*   Updated: 2023/12/01 19:53:46 by mbriand          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libftprintf.h"

int	ft_print_unnbr(unsigned int n)
{
	if (n > 9)
	{
		ft_print_unnbr(n / 10);
		ft_print_unnbr(n % 10);
	}
	else
	{
		ft_print_char(n + '0');
	}
	// handle return
	return (0);
}
