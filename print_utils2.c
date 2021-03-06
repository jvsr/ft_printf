/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   print_utils2.c                                     :+:    :+:            */
/*                                                     +:+                    */
/*   By: jvisser <jvisser@student.codam.nl>           +#+                     */
/*                                                   +#+                      */
/*   Created: 2019/03/04 17:24:57 by jvisser        #+#    #+#                */
/*   Updated: 2019/03/07 18:49:43 by jvisser       ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

#include "libft/libft.h"
#include "ft_printf.h"

int		set_init_diff(t_pf *pf, char *num)
{
	int	result;

	result = 0;
	if (num[0] == '-')
	{
		if (pf->precision > (int)ft_strlen(&num[1]))
			result = pf->width - (pf->precision + 1);
		else
			result = pf->width - ft_strlen(num);
	}
	else
	{
		if (pf->precision > (int)ft_strlen(num))
			result = pf->width - pf->precision;
		else
			result = pf->width - ft_strlen(num);
	}
	return (result);
}

int		calc_diff(t_pf *pf, char *num)
{
	int	result;

	result = set_init_diff(pf, num);
	if (ZERO_FLAG != 1 && ((PLUS_FLAG == 1 && num[0] != '-')
	|| (SPACE_FLAG == 1 && num[0] != '-')))
		result--;
	if (pf->data_type == 'p'
	|| (HASH_FLAG == 1 && (pf->data_type == 'x'
	|| pf->data_type == 'X') && num[0] != '0'))
		result -= 2;
	if ((HASH_FLAG == 1 && (pf->data_type == 'o' || pf->data_type == 'O')
	&& num[0] != '0') && pf->precision <= (int)ft_strlen(num))
		result--;
	if (result < 0)
		result = 0;
	return (result);
}

void	print_precision(t_pf *pf, char *num)
{
	if (num[0] == '-')
	{
		while (pf->precision > 0 && pf->precision > (int)ft_strlen(&num[1]))
		{
			write(1, "0", 1);
			pf->len++;
			pf->precision--;
		}
	}
	else
	{
		while (pf->precision > 0 && pf->precision > (int)ft_strlen(num))
		{
			write(1, "0", 1);
			pf->len++;
			pf->precision--;
		}
	}
}
