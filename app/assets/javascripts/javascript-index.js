$( document ).ready(function() {
    loadFirstStreamers();
});

function loadFirstStreamers() {
    $.getJSON("http://localhost:3000/api/getStreamers",function (dataJson) {
        var row = $(document.createElement('div'));
        row.addClass('row');
        console.log(dataJson[0].data);
        $.each(dataJson[0].data, function (index,element) {
            if(index >= 3){
                return;
            }
            var column = $(document.createElement('div'));
            column.addClass('col-sm-4');
            column.append("<div class='streamer'>" +
                            "<div class='streamName'>" +
                                "<a class='link' href='" + element.url + "' target='_self'><p class='lead'>" + element.title + "</p></a>" +
                            "</div>" +
                            "<div class='miniature'>" +
                                "<a class='link' href='" + element.url + "' target='_self'><img class='img-fluid' alt='miniatura' src='" + element.thumbnail_url + "'></a>" +
                            "</div>" +
                            "<p class='stream-info'><strong>" + element.user_name + "</strong> con <strong>" + element.viewer_count + "</strong> espectadores</p>" +
                           "</div>");
            row.append(column);
        });
        $(".loadContent").append(row);
    });
}

function loadMoreStreamers() {
    //alert('Hey');
    $.getJSON("http://localhost:3000/api/getStreamers",function (dataJson) {
        var min = document.getElementById("streamerCursor");
        var count = 0;
        var row = $(document.createElement('div'));
        row.addClass('row');
        $.each(dataJson.data, function (index, element) {
            if (element.id > min.value) {
                if (count >= 3) {
                    return;
                }
                var column = $(document.createElement('div'));
                column.addClass('col-sm-4');
                column.append("<div class='streamer'>" +
                                "<div class='streamName'>" +
                                    "<a class='link' href='" + element.url + "' target='_self'><p class='lead'>" + element.title + "</p></a>" +
                                "</div>" +
                                "<div class='miniature'>" +
                                    "<a class='link' href='" + element.url + "' target='_self'><img class='img-fluid' alt='miniatura' src='" + element.thumbnail_url + "'></a>" +
                                "</div>" +
                                "<p class='stream-info'><strong>" + element.user_name + "</strong> con <strong>" + element.viewer_count + "</strong> espectadores</p>" +
                               "</div>");
                row.append(column);
                count++;
            }
        });
        $(".moreContent").append(row);
        min.value = parseInt(min.value) + count;
    });
}

function applyFilters() {
    alert("Filtros aplicados....");
}
