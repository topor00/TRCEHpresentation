//
//  MapView.swift
//  TRCEH presentation
//
//  Created by Станислав Жук on 30.01.2020.
//  Copyright © 2020 Тюменский Рекламный Цех. All rights reserved.
//

import SwiftUI
import MapKit

struct MapView: UIViewRepresentable {
    func makeUIView(context: Context) -> MKMapView {
        MKMapView(frame: .zero)
    }
    
    func updateUIView(_ uiView: MKMapView, context: UIViewRepresentableContext<MapView>) {
        let annotation = MKPointAnnotation()
        annotation.coordinate = CLLocationCoordinate2D(latitude: 57.156585, longitude: 65.562495)
        let coordinate = CLLocationCoordinate2D(latitude: 57.156585, longitude: 65.562495)
        let span = MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005)
        let region = MKCoordinateRegion(center: coordinate, span: span)
        uiView.setRegion(region, animated: true)
        uiView.addAnnotation(annotation)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
