# **************************************************************************** #
#                                                                              #
#                                                         ::::::::             #
#    Makefile                                           :+:    :+:             #
#                                                      +:+                     #
#    By: jvisser <jvisser@student.codam.nl>           +#+                      #
#                                                    +#+                       #
#    Created: 2019/02/04 19:18:41 by jvisser        #+#    #+#                 #
#    Updated: 2019/03/07 18:55:24 by jvisser       ########   odam.nl          #
#                                                                              #
# **************************************************************************** #

NAME = libftprintf.a
TESTNAME = ft_printf
CC = gcc
LIBDIR = libft/
LIB = -L $(LIBDIR) -lft
FLAGS = -Wall -Wextra -Werror
C_FILES =	ft_printf.c\
			parse.c\
			parse_utils.c\
			utils.c\
			print.c\
			print_num.c\
			is_utf8.c\
			is_utf8_3b.c\
			is_utf8_4b.c\
			print_txt.c\
			print_base.c\
			print_decimal.c\
			print_wide.c\
			print_utils.c\
			print_utils2.c\
			validate.c\
			colors.c\
			cast.c
O_FILES =	$(C_FILES:.c=.o)
C_LIBFILES = $(LIBDIR)ft_memalloc.c\
			$(LIBDIR)ft_memdel.c\
			$(LIBDIR)ft_bzero.c\
			$(LIBDIR)ft_memset.c\
			$(LIBDIR)ft_memcpy.c\
			$(LIBDIR)ft_memccpy.c\
			$(LIBDIR)ft_memmove.c\
			\
			$(LIBDIR)ft_memchr.c\
			$(LIBDIR)ft_memcmp.c\
			\
			$(LIBDIR)ft_wclen.c\
			$(LIBDIR)ft_strlen.c\
			$(LIBDIR)ft_strlench.c\
			$(LIBDIR)ft_wstrbytes.c\
			\
			$(LIBDIR)ft_strnew.c\
			$(LIBDIR)ft_strclr.c\
			$(LIBDIR)ft_strdel.c\
			$(LIBDIR)ft_strdup.c\
			$(LIBDIR)ft_wstrdup.c\
			$(LIBDIR)ft_strcpy.c\
			$(LIBDIR)ft_strncpy.c\
			$(LIBDIR)ft_strcat.c\
			$(LIBDIR)ft_strncat.c\
			$(LIBDIR)ft_strlcat.c\
			$(LIBDIR)ft_strtrim.c\
			$(LIBDIR)ft_strsplit.c\
			$(LIBDIR)ft_strjoin.c\
			$(LIBDIR)ft_strsub.c\
			$(LIBDIR)ft_striter.c\
			$(LIBDIR)ft_striteri.c\
			$(LIBDIR)ft_strmap.c\
			$(LIBDIR)ft_strmapi.c\
			$(LIBDIR)ft_formatwchar.c\
			\
			$(LIBDIR)ft_strchr.c\
			$(LIBDIR)ft_strrchr.c\
			$(LIBDIR)ft_strchri.c\
			$(LIBDIR)ft_strstr.c\
			$(LIBDIR)ft_strnstr.c\
			$(LIBDIR)ft_strcmp.c\
			$(LIBDIR)ft_strncmp.c\
			$(LIBDIR)ft_strequ.c\
			$(LIBDIR)ft_strnequ.c\
			\
			$(LIBDIR)ft_toupper.c\
			$(LIBDIR)ft_tolower.c\
			\
			$(LIBDIR)ft_isalnum.c\
			$(LIBDIR)ft_isalpha.c\
			$(LIBDIR)ft_isascii.c\
			$(LIBDIR)ft_isblank.c\
			$(LIBDIR)ft_iscntrl.c\
			$(LIBDIR)ft_isdigit.c\
			$(LIBDIR)ft_isgraph.c\
			$(LIBDIR)ft_islower.c\
			$(LIBDIR)ft_isprint.c\
			$(LIBDIR)ft_ispunct.c\
			$(LIBDIR)ft_isspace.c\
			$(LIBDIR)ft_isupper.c\
			$(LIBDIR)ft_isxdigit.c\
			\
			$(LIBDIR)ft_atoi.c\
			$(LIBDIR)ft_itoa.c\
			$(LIBDIR)ft_itoa_base.c\
			$(LIBDIR)ft_lltoa.c\
			$(LIBDIR)ft_ulltoa_base.c\
			$(LIBDIR)ft_cap_lftoa.c\
			$(LIBDIR)ft_cap_lftoa2.c\
			\
			$(LIBDIR)ft_putchar.c\
			$(LIBDIR)ft_putchar_fd.c\
			$(LIBDIR)ft_putwchar.c\
			$(LIBDIR)ft_putcharn.c\
			$(LIBDIR)ft_putstr.c\
			$(LIBDIR)ft_putstrn.c\
			$(LIBDIR)ft_putstrch.c\
			$(LIBDIR)ft_putstr_fd.c\
			$(LIBDIR)ft_putendl.c\
			$(LIBDIR)ft_putendl_fd.c\
			$(LIBDIR)ft_putnbr.c\
			$(LIBDIR)ft_putnbr_fd.c\
			\
			$(LIBDIR)ft_lstnew.c\
			$(LIBDIR)ft_lstadd.c\
			$(LIBDIR)ft_lstaddend.c\
			$(LIBDIR)ft_lstnadd.c\
			$(LIBDIR)ft_lstdel.c\
			$(LIBDIR)ft_lstdelone.c\
			$(LIBDIR)ft_lstmap.c\
			$(LIBDIR)ft_lstiter.c\
			\
			$(LIBDIR)ft_abs.c\
			$(LIBDIR)ft_labs.c\
			$(LIBDIR)ft_factorial.c\
			$(LIBDIR)ft_sqrt.c\
			$(LIBDIR)ft_cubed.c\
			$(LIBDIR)ft_powerof.c
O_LIBFILES = $(C_LIBFILES:.c=.o)
INCLUDES = -I $(LIBDIR)/

all: $(NAME)

$(NAME):
	make -C $(LIBDIR)
	$(CC) $(FLAGS) -c $(C_FILES) $(INCLUDES)
	ar rcs $(NAME) $(O_FILES) $(O_LIBFILES)

clean:
	make -C $(LIBDIR) clean
	/bin/rm -f $(O_FILES)

fclean: clean
	make -C $(LIBDIR) fclean
	/bin/rm -f $(TESTNAME) $(NAME)

test: clean
	$(CC) -c $(C_FILES) $(INCLUDES) main.c
	$(CC) -o $(TESTNAME) $(O_FILES) main.o $(LIB) $(INCLUDES)

re: fclean all