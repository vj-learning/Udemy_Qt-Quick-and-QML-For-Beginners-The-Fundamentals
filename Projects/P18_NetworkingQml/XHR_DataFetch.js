// Sync call
function getPageDataSync(url) {
    console.log("getPageDataSync() called ...")

    var xhr = new XMLHttpRequest();

    xhr.onreadystatechange =function(){
        if(xhr.readyState === XMLHttpRequest.HEADERS_RECEIVED){
            console.log("Header received ...")
        }
        else if(xhr.readyState === XMLHttpRequest.DONE){
            if(xhr.status === 200){
                console.log("Got the all data from url...")
                txtArea1Id.text = xhr.responseText.toString();
            }else{
                console.log("Something went wronge ....")
                txtArea1Id.text = "Something went wronge ...."
            }
        }
    }

    xhr.open("GET",url);
    xhr.send();

}


function getPageDataAsync(url,callback){
    console.log("getPageDataAsync() called ... URL="+url)

    var xhr = new XMLHttpRequest();

    xhr.onreadystatechange =function(){
        if(xhr.readyState === XMLHttpRequest.HEADERS_RECEIVED){
            console.log("Header received ...")
        }
        else if(xhr.readyState === XMLHttpRequest.DONE){
            if(xhr.status === 200){
                console.log("Got the all data from url...")
                callback(xhr.responseText.toString());
            }else{
                console.log("Something went wronge ....")
                callback(null)
            }
        }
    }

    xhr.open("GET",url);
    xhr.send();
}

function setTextArea1Text(data){
    if(data){
        txtArea1Id.text = data;
    }else{
        txtArea1Id.text = "Something went wronge ...."
    }
}
