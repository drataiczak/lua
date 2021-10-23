#include <stdio.h>
#include <lua.h>
#include <lualib.h>
#include <lauxlib.h>

static void lua() {
  lua_State *l = luaL_newstate();

  luaL_openlibs(l);
  luaL_dofile(l, "lua_c.lua");

  lua_close(l);

  return;
}

int main() {
  printf("This code is written in C\n");
  lua();
  printf("Now we are back in C\n");

  return 0;
}
