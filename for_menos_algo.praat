table = Create Table with column names: "data", 0, { "id", "valor" }

    # Agreguemos algunos datos
    for i from 1 to 10
        Append row
        Set numeric value: i, "id", i
        Set numeric value: i, "valor", randomInteger(0, 1)
    endfor

    # Ahora tu script
    for i from 1 to Object_'table'.nrow-1
        this = Object_'table'[ i, "valor" ]
        next = Object_'table'[ i+1, "valor" ]

        appendInfo: i, " == ", i+1, "? "
        if this == next
            appendInfoLine: "SI"
        else
            appendInfoLine: "NO"
        endif
    endfor
