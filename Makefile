NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Werror -Wextra -std=c99

#need to write all sources files
SRC = 	src/ft_parser.c \
	src/ft_print_char.c \
	src/ft_print_hexanbr.c \
	src/ft_print_nbr.c \
	src/ft_print_pt.c \
	src/ft_print_unnbr.c \
	src/ft_printf.c \
	src/ft_up_or_low.c \

LIBFT = libft/libft.a

LIBFTPRINTF_H = include/libftprintf.h
OBJ = $(patsubst %.c, %.o, $(SRC))

TESTER = test/main.c

all : $(NAME)

# generate libftprintf.a file
$(NAME) : $(OBJ)
	ar rc $(NAME) $(OBJ)

# generate src .o files
src/%.o : src/%.c $(LIBFT) $(LIBFTPRINTF_H)
	$(CC) $(CFLAGS) -g -c $< -o $@ -I include -I libft

# generate libft .a file
$(LIBFT) :
	make -C libft

# v clean all .o in libft & src
clean :
	@make clean -C libft
	rm -f $(OBJ)

# v clean libft.a & libftprintf.a
fclean : clean
	@make fclean -C libft
	@rm -f $(NAME)

re : fclean
	@make

# printf tester
test : $(NAME)
	$(CC) $(CFLAGS) $(TESTER) -I include -I libft -L. -lftprintf