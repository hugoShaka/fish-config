function fish_prompt --description "Write out the prompt"
    set -l color_cwd
    set -l suffix
    set -l color_user
    set -l color_hostname
    switch $USER
        case root toor
            set color_cwd $fish_color_cwd_root
            set color_user $fish_color_user_root
            set suffix '#'
        case '*'
            set color_cwd $fish_color_cwd
            set color_user $fish_color_user
            set suffix '>'
    end

    set -q SSH_CLIENT; or set -q SSH_TTY; and set color_hostname $fish_color_hostname_ssh; or set color_hostname $fish_color_hostname

    echo -n -s (set_color $color_user) "$USER" (set_color $color_hostname) @ (hostname|cut -d . -f 1) ' ' (set_color $color_cwd) (prompt_pwd) (set_color $fish_command_color) "$suffix "
end
