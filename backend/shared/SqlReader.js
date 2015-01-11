.pragma library

function read(sql) {
    var request = new XMLHttpRequest
    request.open('GET', sql, false)
    request.send()
//    console.debug(sql, request.responseText)
    return request.responseText
}

