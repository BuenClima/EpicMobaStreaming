$( document ).ready(function() {
    loadFirstStreamers();
});

function loadFirstStreamers() {
    $.getJSON("http://localhost:3000/api/getStreamers",function (dataJson) {
        var row = $(document.createElement('div'));
        row.addClass('row');
        $.each(dataJson[0].data, function (index,element) {
            if(index >= 3){
                return;
            }
            var url = "/streamer/index";
            if (element.streamer_type === 1) {
                url = "/tournament/index";
            }
            var column = $(document.createElement('div'));
            column.addClass('col-sm-4');
            column.append("<div class='streamer'>" +
                            "<div class='streamName'>" +
                                "<a class='link' href='" + url + "' target='_self'><p class='lead'>" + element.twitch_username + "</p></a>" +
                            "</div>" +
                            "<div class='miniature'>" +
                                "<a class='link' href='" + url + "' target='_self'><img class='img-fluid' alt='miniatura' src='" + element.image + "'></a>" +
                            "</div>" +
                            "<p class='stream-info'><strong>" + element.twitch_username + "</strong> con <strong>" + element.twitch_user_id + "</strong> espectadores</p>" +
                           "</div>");
            row.append(column);
        });
        $(".loadContent").append(row);
    });
}

function loadMoreStreamers() {
    var min = document.getElementById("streamerCursor");
    $.getJSON("http://localhost:3000/api/getStreamersBy/" + min.value,function (dataJson) {
        var count = 0;
        var row = $(document.createElement('div'));
        row.addClass('row');
        $.each(dataJson, function (index, element) {
            if (element.id > min.value) {
                if (count >= 3) {
                    return;
                }
                var url = "/streamer/index";
                if (element.streamer_type === 1) {
                    url = "/tournament/index";
                }
                var column = $(document.createElement('div'));
                column.addClass('col-sm-4');
                column.append("<div class='streamer'>" +
                                "<div class='streamName'>" +
                                    "<a class='link' href='" + url + "' target='_self'><p class='lead'>" + element.twitch_username + "</p></a>" +
                                "</div>" +
                                "<div class='miniature'>" +
                                    "<a class='link' href='" + url + "' target='_self'><img class='img-fluid' alt='miniatura' src='" + element.image + "'></a>" +
                                "</div>" +
                                "<p class='stream-info'><strong>" + element.twitch_username + "</strong> con <strong>" + element.twitch_user_id + "</strong> espectadores</p>" +
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
