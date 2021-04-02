for f in ~/.config/fish/components/*
    source $f
end

# Global vars
set -gx EDTIOR nvim
set -gx VISUAL nvim
set -gx MANPAGER "nvim +Man!"
set -gx MANWIDTH 999
