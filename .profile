# vim:set foldmethod=marker :

# the default umask is set in /etc/profile; for setting the umask
# for ssh logins, install and configure the libpam-umask package.
# umask 022

# load .bashrc, follow ubuntu's convention
if [ -n "$BASH_VERSION" ]; then

    # include .bashrc if it exists
    if [ -f "$HOME/.bashrc" ]; then
        . "$HOME/.bashrc"
    fi
fi

PATH="$HOME/bin:$HOME/.local/bin:$HOME/.ddd/script:$HOME/.vim/script:$PATH"
PATH=${PATH}:/usr/local/bin/script:$HOME/.cargo/bin:$PATH:/opt/Qt/Qt5.6.0/5.6/gcc_64/bin/

export PYTHONPATH=${PYTHONPATH}:~/study/python/util
export VISUAL="vim"
export EDITOR="$VISUAL"
export NTOY_DEFAULT_FRAG=~/.mkt_template/osg.frag
export OSG_DIR=/usr/local
export OSGDIR=/usr/local

export GCC_COLORS='error=91:warning=35:note=36:range1=32:range2=34:locus=32:quote=33:fixit-insert=32:fixit-delete=31:diff-filename=01:diff-hunk=32:diff-delete=31:diff-insert=32'

# ReaderWriterViewer need deprecated library.
# export OSG_CONFIG_FILE="$HOME/.osg.view"

export OSG_WINDOW="100 100 1280 720"
export OSG_FILE_PATH=.:~/work/ufo/data:/usr/local/source/OpenSceneGraph-Data:~/journey/osg/data
export OSG_LIBRARY_PATH=/usr/local/lib
export OSG_NOTIFY_LEVEL=NOTICE
export FZF_DEFAULT_COMMAND='find .'
export ESM_DATA="/usr/local/source/openmw/data/Morrowind.esm"
export BSA_DATA="/usr/local/source/openmw/data/Morrowind.bsa"
export MANPAGER="vim -n -M +MANPAGER +'file -' --not-a-term -"
export CVSROOT=/usr/local/source/cvsroot
export GLFRAG_TEMPLATE=~/work/glfrag/data/shader/template.frag
export GLFRAG_FILE_PATH=~/work/glfrag/data
if [ -d ~/journey/gl2/data ]; then
    export GL_FILE_PATH="$(realpath ~/journey/gl2/data);$(realpath ~/journey/gl4/data)"
fi

# awk posix
# POSIXLY_CORRECT=true
# export POSIXLY_CORRECT

anacron -t ~/.anacrontab/tab -S ~/.anacrontab/spool
