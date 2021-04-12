

function save_image (filename, string)

    fd = file.open(filename, "w+")

    if fd then
        fd:write(string)
    end

    fd:close()
    fd = nil

end
