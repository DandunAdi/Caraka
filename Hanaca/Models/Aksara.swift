//
//  Aksara.swift
//  Hanaca
//
//  Created by DDD on 30/05/20.
//  Copyright © 2020 Dandun Adi. All rights reserved.
//

import Foundation

struct Aksara {
    let baca: String
    let code: String
    let contoh: String
    let ctBaca: String
    var keterangan: String = ""
}

struct AksaraManager {
    
    static let shared = AksaraManager()
    
    private let aksaraNglegena: [Aksara] = [
        Aksara(baca: "Ha", code: "a", contoh: "ap", ctBaca: "Apa"),
        Aksara(baca: "Na", code: "n", contoh: "nns\\", ctBaca: "Nanas"),
        Aksara(baca: "Ca", code: "c", contoh: "cmt\\", ctBaca: "Camat"),
        Aksara(baca: "Ra", code: "r", contoh: "rm", ctBaca: "Rama"),
        Aksara(baca: "Ka", code: "k", contoh: "kpuk\\", ctBaca: "Kapuk"),
        Aksara(baca: "Da", code: "f", contoh: "fln\\", ctBaca: "Dalan"),
        Aksara(baca: "Ta", code: "t", contoh: "trkn\\", ctBaca: "Tarakan"),
        Aksara(baca: "Sa", code: "s", contoh: "spi", ctBaca: "Sapi"),
        Aksara(baca: "Wa", code: "w", contoh: "wl=", ctBaca: "Walang"),
        Aksara(baca: "La", code: "l", contoh: "ln=", ctBaca: "Lanang"),
        Aksara(baca: "Pa", code: "p", contoh: "pri", ctBaca: "Pari"),
        Aksara(baca: "Dha", code: "d", contoh: "wedi", ctBaca: "Wedhi"),
        Aksara(baca: "Ja", code: "j", contoh: "jgu=", ctBaca: "Jagung"),
        Aksara(baca: "Ya", code: "y", contoh: "ykin\\", ctBaca: "Yakin"),
        Aksara(baca: "Nya", code: "v", contoh: "vw", ctBaca: "Nyawa"),
        Aksara(baca: "Ma", code: "m", contoh: "mzn\\", ctBaca: "Mangan"),
        Aksara(baca: "Ga", code: "g", contoh: "ggk\\", ctBaca: "Gagak"),
        Aksara(baca: "Ba", code: "b", contoh: "bt", ctBaca: "Bata"),
        Aksara(baca: "Tha", code: "q", contoh: "ququk\\", ctBaca: "Thuthuk"),
        Aksara(baca: "Nga", code: "z", contoh: "zc", ctBaca: "Ngaca"),
        ]
    private let aksaraPasangan: [Aksara] = [
        Aksara(baca: "Ha", code: "H", contoh: "ap", ctBaca: "Apa"),
        Aksara(baca: "Na", code: "N", contoh: "ap", ctBaca: "Apa"),
        Aksara(baca: "Ca", code: "C", contoh: "ap", ctBaca: "Apa"),
        Aksara(baca: "Ra", code: "R", contoh: "ap", ctBaca: "Apa"),
        Aksara(baca: "Ka", code: "K", contoh: "ap", ctBaca: "Apa"),
        Aksara(baca: "Da", code: "F", contoh: "ap", ctBaca: "Apa"),
        Aksara(baca: "Ta", code: "T", contoh: "ap", ctBaca: "Apa"),
        Aksara(baca: "Sa", code: "S", contoh: "ap", ctBaca: "Apa"),
        Aksara(baca: "Wa", code: "W", contoh: "ap", ctBaca: "Apa"),
        Aksara(baca: "La", code: "L", contoh: "ap", ctBaca: "Apa"),
        Aksara(baca: "Pa", code: "P", contoh: "ap", ctBaca: "Apa"),
        Aksara(baca: "Dha", code: "D", contoh: "ap", ctBaca: "Apa"),
        Aksara(baca: "Ja", code: "J", contoh: "ap", ctBaca: "Apa"),
        Aksara(baca: "Ya", code: "Y", contoh: "ap", ctBaca: "Apa"),
        Aksara(baca: "Nya", code: "V", contoh: "ap", ctBaca: "Apa"),
        Aksara(baca: "Ma", code: "M", contoh: "ap", ctBaca: "Apa"),
        Aksara(baca: "Ga", code: "G", contoh: "ap", ctBaca: "Apa"),
        Aksara(baca: "Ba", code: "B", contoh: "ap", ctBaca: "Apa"),
        Aksara(baca: "Tha", code: "Q", contoh: "ap", ctBaca: "Apa"),
        Aksara(baca: "Nga", code: "Z", contoh: "ap", ctBaca: "Apa"),
    ]
    
    private let sandhangan: [Aksara] = [
        Aksara(baca: "Wulu", code: "i", contoh: "siji", ctBaca: "Siji", keterangan: "Digunakan untuk mengubah vocal dasar aksara menjadi 'i'. Penulisan wulu diletakkan di atas aksara Carakan."),
        Aksara(baca: "Suku", code: "u", contoh: "buku", ctBaca: "Buku", keterangan: "Digunakan untuk mengubah vocal dasar aksara menjadi 'u'. Penulisan suku diletakkan di bawah aksara Carakan dan disambungkan dengan aksara Carakan"),
        Aksara(baca: "Taling", code: "[", contoh: "[d[w", ctBaca: "Dhéwé", keterangan: "Digunakan untuk mengubah vocal dasar aksara menjadi 'é'. Penulisan taling diletakkan di depan aksara Carakan"),
        Aksara(baca: "Pepet", code: "e", contoh: "ceq", ctBaca: "Cetha", keterangan: "Digunakan untuk mengubah vocal dasar aksara menjadi 'e'. Penulisan pepet diletakkan di atas aksara Carakan. Bentuknya mirip seperti wulu, hanya ukurannnya lebih besar."),
        Aksara(baca: "Taling Tarung", code: "[o", contoh: "[to[ko", ctBaca: "Toko", keterangan: "Digunakan untuk mengubah vocal dasar aksara menjadi 'o'. Penulisan taling diletakkan di depan aksara Carakan dan penulisan tarung diletakkan di belakang aksara Carakan"),
        Aksara(baca: "Layar", code: "/", contoh: "zj/", ctBaca: "Ngajar", keterangan: "tanda konsonan yang dipergunakan untuk menutup suku kata dengan huruf 'r', yang terletak pada posisi akhir suku kata. Penulisan layar diletakkan di atas aksara Carakan yang akan diakhiri"),
        Aksara(baca: "Wignyan", code: "h", contoh: "gjh", ctBaca: "Gajah", keterangan: "tanda konsonan yang dipergunakan untuk menutup suku kata dengan huruf 'h', yang terletak pada posisi akhir suku kata. Penulisan wignyan diletakkan di belakang aksara Carakan yang akan diakhiri"),
        Aksara(baca: "Cecek", code: "=", contoh: "ged=", ctBaca: "Gedhang", keterangan: "tanda konsonan yang dipergunakan untuk menutup suku kata dengan 'ng', yang terletak pada posisi akhir suku kata. Penulisan cecek diletakkan di atas aksara Carakan yang akan diakhiri"),
        Aksara(baca: "Pangkon", code: "\\", contoh: "nns\\", ctBaca: "Nanas", keterangan: "Pangkon digunakan untuk mengakhiri semua aksara Carakan kecuali aksara Carakan yang sudah memiliki Sandangan mati seperti layar, ceceg, dan wignyan. Penggunaan pangkon ini akan menghilangkan huruf vokal aksara Carakan. Pangkon hanya boleh digunakan di kata paling akhir dari suatu kalimat. Penulisan pangkon diletakkan di belakang aksara Carakan yang akan diakhiri"),
    ]
    
    func getNglegena() -> [Aksara] {
        return aksaraNglegena
    }
    
    func getPasangan() -> [Aksara] {
        return aksaraPasangan
    }
    
    func getSandhangan() -> [Aksara] {
        return sandhangan
    }
}


