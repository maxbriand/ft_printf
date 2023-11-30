#can have a problem with the connection with libft

NAME = libftprintf.a
CC = cc
CFLAGS = -Wall -Werror -Wextra

SRC = $(wildcard *.c)
INCLUDE = ../libft ../include
OBJECTS = $(patsubst %.c, %.o, $(SRC))

all : $(NAME)

$(NAME) : $(OBJECTS)
	ar rc $(NAME) $(OBJECTS)

%.o : %.c $(INCLUDE)
	$(CC) $(CFLAGS) -c $(SRC) -I../libft -I../include -S

clean :
	@rm -f $(OBJECTS)

fclean : clean
	@rm -f $(NAME)

re : fclean
	@make