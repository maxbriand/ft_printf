/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_printf.h                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbriand <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/24 20:43:25 by mbriand           #+#    #+#             */
/*   Updated: 2023/12/04 19:38:18 by mbriand          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef FT_PRINTF_H
# define FT_PRINTF_H

# include "libft.h"
# include <stdio.h>
# include <stdarg.h>

int		ft_printf(const char *s, ...);
int		ft_parser(char c, va_list args);
int		ft_print_char(char c);
int		ft_print_str(char *s);
int		ft_print_nbr(int n);
int		ft_print_unnbr(unsigned int n);
int		ft_print_hexanbr(unsigned int n, char x);
int		ft_print_pt(unsigned long long n, char x, int d);
void	ft_up_or_low(int n, char x);

#endif