class BootStrap {

    def geocoderService

    def init = { servletContext ->
        def locations = [
                new Location(longitude: 4.6355603, latitude: -74.1236558, name: "Cl�nica universitaria", city: "Bogot�", description: "No pos wow"),
                new Location(longitude: 4.6425933, latitude: -74.1124776, name: "C.C Gran Estacion", city: "Bogot�", description: "From UN")
        ]

        /locations.each { loc ->
            geocoderService.fillInLatLng(loc)
        }/

    }
    def destroy = {
    }
}
