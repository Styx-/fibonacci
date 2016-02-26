def fibs(num_of_fibs)
  current_terms = [1, 2]
  fibs_collection = [1]
  while fibs_collection.size < num_of_fibs
    fibs_collection << current_terms[1]
    new_fib = current_terms.reduce(:+)
    current_terms[0] = current_terms[1]
    current_terms[1] = new_fib
  end
  fibs_collection
end


#my_solution
def fibs_rec(num_of_fibs, fibs_group = [0, 1])
  fibs_group << fibs_group[-1] + fibs_group[fibs_group.size - 2]
  fibs_group << fibs_rec(num_of_fibs, fibs_group) if fibs_group.size < num_of_fibs
  fibs_group
end

# a better solution
def fibs_rec num
  return [1] * num.to_i if num.to_i <= 2
  last = fibs_rec(num - 1)
  last << last[-1] + last[-2] 
end

puts fibs_rec(16).inspect
