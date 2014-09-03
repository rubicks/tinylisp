# tinylisp/Makefile.am

ACLOCAL_AMFLAGS = -I m4

#AM_CXXFLAGS = -Wall -Wno-unused -fmax-errors=5
#AM_CXXFLAGS = -Wall -Wextra -Werror -pedantic-errors # -rdynamic
#AM_CFLAGS = -std=c99 -Wall -Wextra -Werror # -pedantic-errors
AM_CFLAGS = -std=gnu99


bin_PROGRAMS = tinylisp

tinylisp_SOURCES = \
  tinylisp.c       \
  symbol_table.c   \
  symbol_table.h   \
  base.c           \
  base.h           \
  hashmap.c        \
  hashmap.h        \
  parser.c         \
  parser.h         \
  lisp_scanner.l


check_PROGRAMS = test_runner

test_runner_SOURCES = \
  hashmap.c           \
  hashmap.h           \
  base.c              \
  base.h              \
  symbol_table.c      \
  symbol_table.h      \
  hashmap_test.c


TESTS = $(check_PROGRAMS)

# Makefile contents follow

# LIBFL = /opt/local/lib/libfl.a

# CFLAGS+=-D_GNU_SOURCE -I/opt/local/include -Weverything -Wno-padded -Werror -Wno-gnu-zero-variadic-macro-arguments -Wno-gnu-statement-expression #-DDEBUG

# .c.o:
# 	$(CC) $(CFLAGS) -c $<

# # separate target because it would fail with -Werror
# lisp_scanner.o: lisp_scanner.c
# 	$(CC) -c lisp_scanner.c

# tinylisp: tinylisp.o symbol_table.o base.o lisp_scanner.o parser.o hashmap.o
# 	$(CC) -g -lreadline -o tinylisp $^ $(LIBFL)

# run: tinylisp
# 	./tinylisp

# clean: 
# 	$(RM) tinylisp test_runner *.o lisp_scanner.c

# all: tinylisp

# test: hashmap.o hashmap_test.o base.o symbol_table.o
# 	$(CC) -o test_runner $^ -lcheck -L/opt/local/lib 
# 	./test_runner
