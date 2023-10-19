# Aliases
alias b := build
alias r := run

default:
    just --list

# Build File
build target:
    @echo "Building {{target}}..."
    g++ {{target}} -o out.exc
    @echo "Built!"

# Build and Run File
run target: (build target)
    @echo "Running {{target}}"
    @./out.exc
    @echo "Finished running {{target}}, cleaning up"
    rm out.exc