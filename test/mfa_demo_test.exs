defmodule MfaDemoTest do
  use ExUnit.Case
  doctest MfaDemo

  defmodule MyMod do
    def return(val), do: val
  end

  test "runs the mfa and returns a boolean" do
    for v <- [true, false, :badger, nil] do
      assert MfaDemo.apply?({MyMod, :return, [v]}) == !!v
    end
  end
end
