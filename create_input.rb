puts "id,comment,score"
for i in 0...5000000
    c = (0...8).map { (65 + rand(26)).chr }.join
    s = rand(5)
    puts "#{i},#{c},#{s}"
end
