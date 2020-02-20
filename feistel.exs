defmodule Feistel do
  def cipher({l, r}, f \\ & &1) do
    {l, r} =
      {l, r}
      |> round(f)
      |> round(f)
      |> round(f)
      |> round(f)

    {r, l}
  end

  defp round({l, r}, f) do
    {r, :crypto.exor(l, f.(r))}
  end
end
