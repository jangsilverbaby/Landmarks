//
//  MapView.swift
//  Landmarks
//
//  Created by 장은애(Eunae Jang) on 2022/04/15.
//

import SwiftUI
import MapKit

struct MapView: View {
    /*
     <state property>
     - 뷰 내부에서 특정 View의 상태를 나타내는 변수
     - 뷰내부에서만 사용 가능하기 때문에 private 선언
     - 하위 뷰나 다은 뷰에서 참조하기 위해선 @Binding 해야함
     - state property에 해당하는 변수 값이 변경되면 view를 다시 랜더링함 -> 항상 최신값을 가짐
     - 뷰전체가 다시 랜다링 되는 일을 막기 위해 하위뷰로 데이터 변동이 반영되는 뷰만 따로 빼줌 -> 따로 뺀 뷰에 state property를 binding 해줌
     */
    @State private var region = MKCoordinateRegion(
        center: CLLocationCoordinate2D(latitude: 34.011_286, longitude: -116.166_868),
        span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2)
    )
    
    var body: some View {
        /*
         <$>
         상태 프로퍼티를 선언했다면 레이아웃에 있는 뷰와 바인딩 할 수 있음. 바인딩 되어있는 뷰에서 어떤 변경이 일어나면 해당 상태에 프로퍼티를 자동으로 업데이트함. 상태 프로퍼티와의 바인딩은 프로퍼티 이름 앞에 '$'를 붙이면 됨.
         */
        Map(coordinateRegion: $region)
    }
}

struct MapView_Previews: PreviewProvider {
    static var previews: some View {
        MapView()
    }
}
