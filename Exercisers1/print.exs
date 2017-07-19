defmodule ListExample do
    def print([]), do: :ok
    def print([head|tail]) do
        IO.puts head
        print tail
    end
end