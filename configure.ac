# tinylisp/configure.ac

AC_PREREQ([2.68])
AC_INIT([tinylisp],
        [0.1.0-snapshot],
        [web@matthias-schuetz.eu],
        [rendera],
        [https://github.com/mschuetz/tinylisp])
AC_LANG_PUSH([C])
AC_CONFIG_SRCDIR([tinylisp.c])
AC_CONFIG_HEADERS([config.h])
AC_CONFIG_MACRO_DIR([m4])
AM_INIT_AUTOMAKE([subdir-objects])
LT_PREREQ([2.4])
LT_INIT

# Checks for programs.
AC_PROG_CC
AX_PROG_FLEX([],[AC_MSG_ERROR([flex is not available])])

# Checks for libraries.
# FIXME: Replace `main' with a function in `-lcheck':
AC_CHECK_LIB([check],[check_fork])
# FIXME: Replace `main' with a function in `-lreadline':
AC_CHECK_LIB([readline],[rl_initialize])

# Checks for header files.
AC_CHECK_HEADERS([stdint.h stdlib.h string.h])

# Checks for typedefs, structures, and compiler characteristics.
AC_CHECK_HEADER_STDBOOL
AC_TYPE_SIZE_T
AC_TYPE_UINT32_T

# Checks for library functions.
AC_FUNC_MALLOC
AC_CHECK_FUNCS([memset strdup])

AC_CONFIG_FILES([Makefile])
AC_OUTPUT
