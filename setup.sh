##########
# General 
##########
# Startup
alias rc="vim ~/.zshrc"

# Git
alias s="git status"

################
# Blender dev
################
# Common
alias makeformat="make format > /dev/null"	

# Git
review-patch () {
        git fetch origin "pull/$1/head:review-$1"
        git checkout "review-$1"
}

# Clean local branches
SCRIPT_DIR="$(dirname "$(readlink -f "$0")")"
alias prune_local_branches="bash $SCRIPT_DIR/prune_local_branches.sh"


# OS sepcifc
if [[ "$OSTYPE" == "darwin"* ]]; then
    echo "Running on macOS"
    alias genxcode="cmake . -B ../build_xcode/ -G 'Xcode'"
	alias genxcode2="cmake . -B ../build_xcode_2/ -G 'Xcode'"
	alias genxcode3="cmake . -B ../build_xcode_3/ -G 'Xcode'"
	alias bx="$HOME/blender-git/build_xcode/bin/Debug/Blender.app/Contents/MacOS/Blender"
	alias bx2="$HOME/blender-git/build_xcode_2/bin/Debug/Blender.app/Contents/MacOS/Blender"
	alias bx3="$HOME/blender-git/build_xcode_3/bin/Debug/Blender.app/Contents/MacOS/Blender"
	alias bx4="$HOME/blender-git/build_xcode_4/bin/Debug/Blender.app/Contents/MacOS/Blender"
	alias b="$HOME/blender-git/build_darwin/bin/Blender.app/Contents/MacOS/Blender"
	alias b2="$HOME/blender-git/build_darwin_2/bin/Blender.app/Contents/MacOS/Blender"
	alias b3="$HOME/blender-git/build_darwin_3/bin/Blender.app/Contents/MacOS/Blender"
	alias b4="$HOME/blender-git/build_darwin_4/bin/Blender.app/Contents/MacOS/Blender"
	alias br="$HOME/blender-git/build_darwin_review/bin/Blender.app/Contents/MacOS/Blender"
	alias make2="make BUILD_DIR='../build_darwin_2'"
	alias make3="make BUILD_DIR='../build_darwin_3'"
	alias make4="make BUILD_DIR='../build_darwin_4'"
	alias maker="make BUILD_DIR='../build_darwin_review'"

elif [[ "$OSTYPE" == "linux-gnu"* ]]; then
    echo "Running on Linux"
    # Todo: when back on linux
    # Todo: remove OS specific commands (e.g. remove darwin and linux from build dirs)
fi