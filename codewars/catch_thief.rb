def catch_thief(queue)
  sum = 0
  q = queue
  q.each_char.with_index do |c, idx|
    if c.match(/\d/)
      c = c.to_i
      start_idx = idx-c < 0 ? 0 : idx-c
      sum += q[start_idx..idx+c].scan(/X/).count
      q[start_idx..idx+c] = q[start_idx..idx+c].gsub('X', '#')
    end
  end
  puts sum
end

# catch_thief("X1X#2X#XX")
# catch_thief("X5X#3X###XXXX##1#X1X")
catch_thief("XX#X###XXXX###XX")
# catch_thief("5#3#####1#1#")
