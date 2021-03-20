FROM alpine:latest

RUN apk add --update-cache git g++ make ncurses-dev \
  lua5.3 lua5.3-dev luajit \
  python2-dev python3-dev ruby-dev curl && \
  ln -s /usr/bin/lua5.3 /usr/bin/lua && \
  git clone https://github.com/vim/vim.git && \
  cd vim && \
  ./configure --with-features=huge --enable-multibyte \
  --enable-luainterp=dynamic --enable-gpm \
  --enable-cscope --enable-fontset \
  --enable-fail-if-missing \
  --enable-pythoninterp=dynamic \
  --enable-python3interp=dynamic \
  --enable-rubyinterp=dynamic && \
  make && make install && \
  cd .. && rm -rf vim

WORKDIR /workdir