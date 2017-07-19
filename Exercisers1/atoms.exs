# Given a list of atoms, build a function called word_count that returns a
# keyword list, where the keys are atoms from the list and the values are
# the number of occurrences of that word in the list. For example,
# word_count([:one, :two, :two]) returns [one: 1, two: 2].

defmodule Atoms do 
    def word_count() do
        list = [:aaa, :aaa, :aaa, :aaa, :ccc, :ttt]
        list
        |> Enum.group_by(&(&1))
        |> Enum.map(fn({key,value})->{key,Enum.count(value)} end)
    

    end
end
