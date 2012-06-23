#! /bin/zsh
# PosgreSQL control functions for Homebrew installations

if [ -e "/usr/local/var/postgres" ] ; then
  function pg-start () {
    pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log start
  }

  function pg-stop () {
    pg_ctl -D /usr/local/var/postgres -l /usr/local/var/postgres/server.log stop
  }
fi
