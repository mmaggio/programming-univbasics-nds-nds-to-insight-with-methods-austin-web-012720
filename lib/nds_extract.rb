$LOAD_PATH.unshift(File.dirname(__FILE__))
require 'directors_database'

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input

def gross_for_director(director_data)
  num_movies = 0
  total = 0
  while num_movies < director_data[:movies].length do
    total += director_data[:movies][num_movies][:worldwide_gross]
    num_movies += 1
  end
  total
end
     
     
  def directors_totals(nds)
    director_grosses = {}
    row_counter = 0
      while row_counter < nds.length do
       directors_name = nds[row_counter][:name]
       director_data = nds[row_counter]
       director_total = gross_for_director(director_data)
       director_grosses[directors_name] = director_total
       row_counter += 1
      end
  director_grosses
end