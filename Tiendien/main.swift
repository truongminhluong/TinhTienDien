//
//  main.swift
//  TinhTienDien
//
//  Created by Trương Minh Lượng Jr on 30/10/2023.
//

import Foundation

func tinhTienDien(soDien: Double) -> Double {
    var donGia: Double = 0.0
    
    if soDien <= 50 {
        donGia = 1.678
    } else if soDien <= 100 {
        donGia = 1.734
    } else if soDien <= 200 {
        donGia = 2.014
    } else if soDien <= 300 {
        donGia = 2.536
    } else if soDien <= 400 {
        donGia = 2.843
    } else {
        donGia = 2.927
    }
    
    return soDien * donGia
}


func nhapSoDien() -> Double {
    print("Nhập số điện (kWh): ", terminator: "")
    let soDien = Double(readLine() ?? "") ?? 0.0
    return soDien
}


func main() {
    let soDien = nhapSoDien()
    let tienDien = tinhTienDien(soDien: soDien)
    
    print("Số tiền điện cần thanh toán: \(tienDien) đồng")
}
main()
