function topten
    du -sk $(/bin/ls -A) | sort -rn | head -10
end
