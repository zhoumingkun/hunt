var lnglat = [111.790247,38.064189];
var map = new AMap.Map('map', {
    resizeEnable: true,
    center: [111.790247,38.064189],
	zoom: 16
});
var marker = new AMap.Marker({
    position: lnglat
});
// map.add(marker);
marker.setMap(map);
