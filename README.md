# Feistel Cipher

```sh
iex feistel.exs
```

```elixir
f = &(:crypto.hash(:md5, &1) |> Base.encode16(case: :lower))

# 32 chars are required for XOR to work properly
input = {String.pad_trailing("Mario", 32), String.pad_trailing("Uher", 32)}

input
|> Feistel.cipher(f)
|> IO.inspect() # some gibberish
|> Feistel.cipher(f)
# input
```

![](https://media1.tenor.com/images/c7eac59fb909510e714e85de277ca81a/tenor.gif?itemid=5139389)

Watch this!

[![](https://img.youtube.com/vi/FGhj3CGxl8I/0.jpg)](https://www.youtube.com/watch?v=FGhj3CGxl8I)
