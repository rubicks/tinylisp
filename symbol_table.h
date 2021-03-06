#ifndef __SYMBOL_TABLE_H
#define __SYMBOL_TABLE_H

#include "base.h"
typedef struct {
  object object;
  char name[128];
} symbol;

#define SYMBOL_TABLE_SIZE 2048

typedef struct {
  symbol symbols[SYMBOL_TABLE_SIZE];
  int size;
} symbol_table;

object * st_insert(const char * name);
object * st_lookup(const char * name);
char * st_id_to_name(int id);

#endif
