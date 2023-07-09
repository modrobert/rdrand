# rdrand

## Reading the RDRAND x86-64 instruction.

### Copyright (C) 2023  Robert V. &lt;modrobert@gmail.com&gt;
### Software licensed under GPLv3.

---

### Description

Prints the output from the RDRAND (Read Random) x86-64 instruction under GNU/Linux.

Thoughts; is this hardware-generated random value really random? When creating a raw image out of the values it looks like subtle patterns forming in the noise lowering the entropy.

---

### Usage

<pre>
$ ./rdrand
0xc7b80e64d1dd0603
$ printf "%llu\n" $((`./rdrand`))
12700299757966314797
</pre>

---

### Build

You need 'nasm' to build this.  
  
Use the included Makefile which supports several targets:  
<pre>
make all        ; Default, builds all.
make debug      ; Builds all with debug info for 'gdb'.  
make strip      ; Builds all and strips output binaries from symbols.  
make clean      ; Deletes all output binaries.
</pre>
