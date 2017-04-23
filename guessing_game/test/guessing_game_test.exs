defmodule GuessingGameTest do
    use ExUnit.Case

    test "Checking valid user input" do
        assert GuessingGame.check_user_input(5) == {:ok, 5}
        assert GuessingGame.check_user_input(9) == {:ok, 9}
        assert GuessingGame.check_user_input(10) == {:ok, 10}

    end

    test "Invalid user input" do
        # Check user input bigger than 10
        assert GuessingGame.check_user_input(11) == {:error, "11 is not valid number. Please input number between 1-10"}
        assert GuessingGame.check_user_input(22) == {:error, "22 is not valid number. Please input number between 1-10"}
    end

end
