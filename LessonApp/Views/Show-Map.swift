//
//  Show-Map.swift
//  LessonApp
//
//  Created by Krzysztof  Sajdak  on 10/08/2020.
//  Copyright © 2020 Krzysztof  Sajdak . All rights reserved.
//

import SwiftUI
import MapKit

struct Show_Map: View {
    
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 51.507222, longitude: -0.1275), span: MKCoordinateSpan(latitudeDelta: 0.5, longitudeDelta: 0.5))

    var body: some View {
        Text("")
    }
}
//struct Show_Map: UIViewRepresentable {
//
//  var locationManager = CLLocationManager()
//  func setupManager() {
//    locationManager.desiredAccuracy = kCLLocationAccuracyBest
//    locationManager.requestWhenInUseAuthorization()
//    locationManager.requestAlwaysAuthorization()
//  }
//
//  func makeUIView(context: Context) -> MKMapView {
//    setupManager()
//    let mapView = MKMapView(frame: UIScreen.main.bounds)
//    mapView.showsUserLocation = true
//    mapView.userTrackingMode = .follow
//    return mapView
//  }
//
//  func updateUIView(_ uiView: MKMapView, context: Context) {
//  }
//}

struct Show_Map_Previews: PreviewProvider {
    static var previews: some View {
        Show_Map()
    }
}
