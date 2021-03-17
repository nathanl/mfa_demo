defmodule MfaDemo do
  @moduledoc """
  Documentation for `MfaDemo`.
  """
  @type actual_mfa :: {module(), atom(), list()}

  @doc """
  Applies an mfa and converts the return value to a boolean

  If the spec uses `mfa()` instead of `actual_mfa()`,
  `mix dialyzer` will fail.
  """
  @spec apply?(mfa :: actual_mfa()) :: boolean()
  def apply?({m, f, a}) do
    !!apply(m, f, a)
  end
end
