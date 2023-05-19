collect2 version 8.5.0 20210514 (Red Hat 8.5.0-4)
/usr/bin/ld -plugin /usr/libexec/gcc/x86_64-redhat-linux/8/liblto_plugin.so -plugin-opt=/usr/libexec/gcc/x86_64-redhat-linux/8/lto-wrapper -plugin-opt=-fresolution=/tmp/ccoRTv8a.res -plugin-opt=-pass-through=-lgcc -plugin-opt=-pass-through=-lgcc_s -plugin-opt=-pass-through=-lc -plugin-opt=-pass-through=-lgcc -plugin-opt=-pass-through=-lgcc_s --build-id --no-add-needed --eh-frame-hdr --hash-style=gnu -m elf_x86_64 -dynamic-linker /lib64/ld-linux-x86-64.so.2 -o person /usr/lib/gcc/x86_64-redhat-linux/8/../../../../lib64/crt1.o /usr/lib/gcc/x86_64-redhat-linux/8/../../../../lib64/crti.o /usr/lib/gcc/x86_64-redhat-linux/8/crtbegin.o -L/usr/lib/gcc/x86_64-redhat-linux/8 -L/usr/lib/gcc/x86_64-redhat-linux/8/../../../../lib64 -L/lib/../lib64 -L/usr/lib/../lib64 -L/usr/lib/gcc/x86_64-redhat-linux/8/../../.. -v person.o -lgcc --as-needed -lgcc_s --no-as-needed -lc -lgcc --as-needed -lgcc_s --no-as-needed /usr/lib/gcc/x86_64-redhat-linux/8/crtend.o /usr/lib/gcc/x86_64-redhat-linux/8/../../../../lib64/crtn.o
person.o: In function `main':
person.c:(.text+0x9): undefined reference to `connect_person'
person.c:(.text+0x2a): undefined reference to `remove_person'
person.c:(.text+0x5d): undefined reference to `PQfinish'
person.c:(.text+0x73): undefined reference to `add_person'
person.c:(.text+0xa6): undefined reference to `PQfinish'
person.c:(.text+0xb9): undefined reference to `get_person'
person.c:(.text+0xec): undefined reference to `PQfinish'
person.c:(.text+0xff): undefined reference to `PQfinish'
collect2: error: ld returned 1 exit status
