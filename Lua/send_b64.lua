
fd = file.open("face_test.jpeg", "r")
file.remove("response")
fd_response = file.open("response", "w+")

if fd then
    fd:seek("set")

    for i = 1, 3 do
        test_string = encoder.toBase64(fd:read(3000))
        send_string = " { \"part\" : " .. i .. "," ..
        -- "\"testImageString\":" .. "\"" .. test_string .. "\"" .. "}"
        "\"imageString\":" .. "\"" .. test_string .. "\"" .. "}"


        for j = 1, 2 do

            -- http.post("http://192.168.1.64:8080/api/image/test", 
            http.post("http://192.168.1.64:8080/api/history/clockinauto", 
            'Content-Type: application/json\r\n',
            send_string, 
            function(code, payload)
                if (code < 0) then
                print("HTTP request failed")
                else
                    fd_response:write(payload)
                    fd_response:flush()
                end
            end)

            tmr.delay(1000)
        end

        tmr.delay(10000)
    end

    fd:close()
    fd = nil
    collectgarbage()
end
