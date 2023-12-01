/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_print_char.c                                    :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbriand <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/14 23:21:58 by mbriand           #+#    #+#             */
/*   Updated: 2023/11/30 02:15:30 by mbriand          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>
#include <stdio.h>
#include "libftprintf.h"

int	ft_print_char(char c)
{
	write(1, &c, 1);
	//printf("%d", ft_atoi("565"));
	return (1);
}

int main(void)
{
	ft_print_char('a');
	return (0);
}
