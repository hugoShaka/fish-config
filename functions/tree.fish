function tree
    find . | sed 's/[^/]*\//|   /g;s/| *\([^| ]\)/+--- \1/'
end
