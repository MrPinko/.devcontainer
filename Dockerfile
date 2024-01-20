FROM alpine:edge

RUN apk add --no-cache bash git make musl-dev curl

#TODO: Installing language
#RUN apk add --no-cache <lang>

# Installing 'alpine-starship'

RUN apk --no-cache add starship

# Installing 'fish shell and fisher'

RUN apk --no-cache add fish
SHELL ["/usr/bin/fish", "-c"]

# Changing default shell to Fish

RUN apk --no-cache add shadow

RUN chsh root -s /usr/bin/fish

RUN apk del shadow

# Fisher

RUN curl -sL https://raw.githubusercontent.com/jorgebucaran/fisher/main/functions/fisher.fish | source && fisher install jorgebucaran/fisher

# Fish shell plugin
# fish-async-prompt for fixing spaceship slowness inside git repo
RUN fisher install acomagu/fish-async-prompt \
    fisher install jethrokuan/z \
    fisher install PatrickF1/fzf.fish \
    gazorby/fish-abbreviation-tips

# Needed for fzf.fish
RUN apk --no-cache add fzf fd bat

# Copy Config

COPY .config /root/.config