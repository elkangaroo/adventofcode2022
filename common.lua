function read(filename)
    local elements = {}

    file = io.open(filename, "r")
    for line in file:lines() do
        table.insert(elements, line)
        -- print(line)
    end
    file:close()

    return elements
end
