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
	src/ft_print_str.c \
	libft/ft_strlcpy.c \
	libft/ft_strlen.c \

OBJ = $(patsubst %.c, %.o, $(SRC))

LIBFT = ./libft/libft.a
LIBFTPRINTF_H = ./include/ft_printf.h

TESTER = ./test/main.c

OUTPUT = a.out

all : $(NAME) $(LIBFT)

# generate libftprintf.a file
$(NAME) : $(LIBFT) $(OBJ) 
	cp $(LIBFT) $(NAME)
	ar rcs $(NAME) $(OBJ)

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

test : all $(OUTPUT)
	@./a.out | cat -e
	@rm ./a.out

# how can I check if my main file is changed?
$(OUTPUT) :
	@$(CC) $(CFLAGS) $(TESTER) -I include -I libft -L. -lftprintf