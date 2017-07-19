# defmodule Bus do
#   def number(stops) do
#     # [{3,0}, {9,1}, {4,8}, {12,2}, {6,1}, {7,8}]
#     if stops == [] || stops == [0,0] do
#       0
#     else
#     get_in = List.zip(stops)
#     |> List.first
#     |> Tuple.to_list
#     |> Enum.reduce(0, &+/2)
    
#     get_out = List.zip(stops)
#     |> List.last
#     |> Tuple.to_list
#     |> Enum.reduce(0, &+/2)
    
#     get_in - get_out
#     end
#   end
# end
# defmodule Codewars.EvilOdious do
#   def evil?(n) do
#   evil = [3, 5, 6, 9, 10, 12, 15, 17, 18, 20]
#     if Enum.member?([3, 5, 6, 9, 10, 12, 15, 17, 18, 20], n) do
#       "It's Evil!")
#     else
#         IO.puts("It's Odious!")   
#     end
#   end
# end

# defmodule Digitizer do
#   def digitize(n) do
#     if n !== 0 do
#     string = Integer.to_string(n)
#     reversed = String.reverse(string)
#     list = String.split(reversed, "", parts: Enum.count(string))
#     list
#     else
#       [0]
#       end
#     end
# end
# defmodule Negator do
#   def make_negative(num) do
#     if num >= 0, do: num * -1, else: num * 1
#   end
# end

# defmodule Series do
#   def summation(n) do
#     Enum.reduce([0..n], x + 0)
#   end
# end

# defmodule TalantDetector do
#   def are_you_playing_banjo?(name) do
#     initial = String.split(name, "", trim: true)
#     |> List.first
    
#     if initial == "R" || initial == "r" do
#       "#{name}" <> " plays banjo"
#     else 
#       "#{name}" <> " does not play banjo" 
#     end
#   end
# end

# defmodule Count do
#   def count_by(x, n) do
#     for n <- 1..n, do: n * x
#   end
# end

# defmodule Rent do
#   def rental_car_cost(d) do
#     cond do
#     d >= 7 ->
#       (d * 40) - 50
#     d >= 3 ->
#       (d * 40) - 20
#     d <=2 ->
#       d * 40
#     end
#   end
# end

# defmodule StringUtils do
#   def digit?(s) do
#     if String.match?(s, ~r/[a-z]+/) do
#       false
#     else 
#         if String.match?(s, ~r/\d+/) do
#           false
#         else 
#           if String.match?(s, ~r/\d{1}/) do
#             true
#           else
#             false
#           end
#         end
#     end
#   end
# end

# defmodule StringUtils do
#   def digit?(s) do
#     s
#     |> 
  
  
#   end
# end

# defmodule Digitizer do
#   def digitize(n) do
#     str = to_string(n)
    
#     str
#     |> String.reverse
#     |> String.split("", parts: String.length(str))
#     |> Enum.map(fn(x) -> String.to_integer(x) end)
    
#     end
# end
#Codewars.Reward.bonus_time(10, true)

# defmodule Codewars.Reward do
#   def bonus_time(salary, bonus) do
#     if bonus == true do
#       "$#{salary * 10}"
#     else
#       "S#{salary}"
#       end
#   end
# end

# defmodule Pipeline do
#   def fix_pipe(pipes) do
#     list = Enum.sort(pipes)
#     last = List.last(list)
#     first = List.first(list)
#     for n <- first..last, do: n   
#   end
# end


# defmodule Polyglot do
#   def validate_hello(greetings) do
#         String.match?(greetings, ~r/(hello|czesc|ciao|ahoj|salut|hola)/i)
#   end
# end

#Solution.two_oldest_ages([3, 4, 5, 6, 66])

# defmodule Solution do
  
#   def two_oldest_ages(ages) do
#     sort = Enum.sort(ages)
#     oldest_age = List.last(sort)
#     sort_2 = List.delete(sort, oldest_age)
#     second_oldest_age = List.last(sort_2)
#     # cut = [other | oldest_age]
#     # second_oldest_age = List.last(other)
#     # [second_oldest_age | oldest_age]
#     [second_oldest_age, oldest_age]
#   end
# end

# defmodule Parsers do
#   def ensure_question(s) do
#     if String.ends_with?(s, "?") do
#       s
#     else
#       s <> "?"
#     end
#   end
# end

# defmodule HelloWorld do
#   def greet do
#     "hello world!"
#   end
# end

# defmodule Finder do
#   def find_needle(haystack) do
#     Enum.find_index(haystack, "needle")
    
#   end
# end

# Finder.find_needle(["gfgdf", "fggfg", "fgfgfg", "needle", "fdfdidjfidefn")

# defmodule OneZeroSequencer do
#   def stringy(size) do
#     ver_a = for a <- 1..(round(size/2)), do: 1
#     ver_b = for b <- 1..(div(size,2)), do: 0
    
#     Enum.zip(ver_a,ver_b)
#     |> Enum.flat_map(fn({x, y}) -> [x,y] end)
    
    
#   end
# end

# defmodule OneZeroSequencer do
#   require Integer
  
#   def stringy(size) do
#     Enum.map(1..size, fn(x) -> if Integer.is_odd(x), do: 1, else: 0 end)
#     |> Enum.join
#   end
# end

# defmodule CodeValidator do
#   def valid?(code) do
    
#     if String.first(Integer.to_string(code)) =~ ~r/[123]/, do: true, else: false
    
#   end
# end

# defmodule Cashier do
#   def format_money(amount) do
    
#     cash = to_string(amount)
#     cond do 
#         cash =~ ~r/\d+\.\d\d/ ->
#             "$#{cash}"
#         cash =~ ~r/\d+\.\d/ ->
#             "$#{cash}" <> "0"
#         cash =~ ~r/\d+/ ->
#             "$#{cash}" <> ".00"
#     end 
#   end
# end

defmodule Cashier do
  def format_money(amount) do
    "$#{Float.to_string(amount, decimals: 2)}"
  end
end

