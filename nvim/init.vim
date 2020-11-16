for f in split(glob('~/Tweaking/dotfiles/nvim/config/*.vim'), '\n')
    exe 'source' f
endfor