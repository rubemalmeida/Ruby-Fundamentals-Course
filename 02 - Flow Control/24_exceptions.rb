def batten_hatches
    hatch_file = File.Open("hatches.txt")
    # ...
    true
rescue SystemCallError => e
    # handle system call errors
    false
else
    puts "Well done, no exceptions"
ensure
    hatch_file.close if hatch_file
end

def batten_hatches
    hatch_list = API.request("/hatches")
    # ...
rescue RuntimeError => e
    attempts ||= 0
    attempts += 1
    if attempts < 3
        puts e.message + ". Retrying request."
        retry
    else
        puts "Request failed."
        raise
    end
end
