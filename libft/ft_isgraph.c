/* ************************************************************************** */
/*                                                                            */
/*                                                        ::::::::            */
/*   ft_isgraph.c                                       :+:    :+:            */
/*                                                     +:+                    */
/*   By: jvisser <jvisser@student.codam.nl>           +#+                     */
/*                                                   +#+                      */
/*   Created: 2019/03/05 14:00:38 by jvisser        #+#    #+#                */
/*   Updated: 2019/03/05 14:03:26 by jvisser       ########   odam.nl         */
/*                                                                            */
/* ************************************************************************** */

int	ft_isgraph(int c)
{
	if (c >= 33 && c <= 126)
		return (1);
	return (0);
}
