/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libftprintf.h                                      :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mbriand <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/11/24 20:43:25 by mbriand           #+#    #+#             */
/*   Updated: 2023/11/25 20:20:52 by mbriand          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBFTPRINTF_H
# define LIBFTPRINTF_H

# include "libft.h"
# include <stdio.h>

int		ft_printf(const char *s, ...);
int		ft_parser(char c, va_list args);
int		ft_print_char(char c);
int		ft_print_str(char *s);
int		ft_print_nbr(int n);
int		ft_print_unnbr(unsigned int n);
int		ft_print_hexanbr(unsigned int n, char x);
int		ft_print_pt(unsigned long long n, char x);
void	ft_up_or_low(int n, char x);

size_t	ft_strlen(const char *s);

#endif