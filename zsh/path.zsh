######## ADD to PATH varible ############

for d in /home/kumaran/.dotfiles/.local/bin/*/; do
    PATH+=":$d"
done

PATH+=":/home/kumaran/compressed_packages/unarchived_packages/dart-sass"

#### Do not forget to add it to path variable in .zprofile ##########

