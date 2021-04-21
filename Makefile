OUT := built
LIB := $(OUT)/libcra.rlib
COMMFLAG := --out-dir $(OUT) --edition 2018
LINKFLAG := -C target-feature=+crt-static

main : bin/main.rs bin/mod01.rs  $(LIB)
	rustc $< $(COMMFLAG) --crate-type bin $(LINKFLAG) --extern cra=$(LIB)

$(LIB) : lib/root.rs lib/mod11.rs
	rustc $< $(COMMFLAG) --crate-type lib

clean :
	rm -rf $(OUT)/*

## refs:
# https://doc.rust-lang.org/rustc/command-line-arguments.html
# https://doc.rust-lang.org/reference/linkage.html
