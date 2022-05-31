list_a = IO.gets("List : ")
split_list = list_a |> String.replace("\n", "") |> String.split(" ", trim: true)

result = Enum.reduce(split_list, %{
        text: [],
        number: [],
        odd_number: [],
        even_number: []
    }, fn val, res -> 
        case Integer.parse(val) do
            {int_val, ""} when rem(int_val, 2) == 1 -> 
                Map.merge(res, %{
                    number: res.number ++ [val],
                    odd_number: res.odd_number ++ [val]
                })
            {int_val, ""} when rem(int_val, 2) == 0 -> 
                Map.merge(res, %{
                    number: res.number ++ [val],
                    even_number: res.even_number ++ [val]
                })
            _ -> Map.put(res, :text, res.text ++ [val])
        end
      end
)

IO.inspect result

find = IO.gets("Apa yang mau dicari ? ")
find = String.replace(find, "\n", "")
find = Enum.find_index(split_list, fn f -> f == find end)

IO.inspect find