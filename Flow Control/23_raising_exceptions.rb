rescue HatchError => err
    puts $!.message
    raise
end
