function fish_greeting
    set start_window_size (tput cols)
    if math "$start_window_size >= 80" >/dev/null
        cat $FISH_CONFIG_PATH/logo
    else
        echo "==== Shaka ===="
    end
end
