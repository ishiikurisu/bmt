first_line = true
score = 0
File.readlines(ARGV[0]).each do |line|
    if first_line
        first_line = false
    else
        score += line.split(",")[2].to_i
    end
end
puts score
