#!/usr/bin/env sh

ASSEMBLER="fasm"
ASSEMBLY="helloworld.asm"
OUTPUT="helloworld"

if [ -z "$1" ]; then com="help"; else com="$1"; fi

case "$com" in
    ("help")
        echo "tool <target>"
        echo "  valid targets:"
        echo "    clean  -  removes the output directory"
        echo "    build  -  builds the executable"
        echo "    run    -  runs the build target, then runs the executable"
        return
    ;;
    ("clean")
        printf "\ncleaning...\n"
        rm -fr ./out
        return
    ;;
    ("build")
        printf "\nbuilding...\n"

        if [ -z "$(command $ASSEMBLER)" ]; then
            echo "The assembler ($ASSEMBLER) could not be found! Add it or specify the full path in build.sh";
        fi

        if [ ! -d ./out ]; then
            mkdir ./out
        fi

        $ASSEMBLER $ASSEMBLY ./out/$OUTPUT
        chmod +x ./out/$OUTPUT
        return
    ;;
    ("run")
        $0 build
        printf "\nexecuting...\n"
        ./out/$OUTPUT

        return
    ;;
esac