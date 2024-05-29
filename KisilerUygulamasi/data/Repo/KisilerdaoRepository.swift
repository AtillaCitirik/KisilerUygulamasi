//
//  KisilerdaoRepository.swift
//  KisilerUygulamasi
//
//  Created by Atilla Çıtırık on 23.05.2024.
//

import Foundation
import RxSwift

class KisilerdaoRepository {
    
    var kisilerListesi = BehaviorSubject<[Kisiler]>(value: [Kisiler]())
    
    let db:FMDatabase?
    
    init(){
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first!
        let veritabaniURL = URL(fileURLWithPath: hedefYol).appendingPathComponent("rehber.sqlite")
        db = FMDatabase(path: veritabaniURL.path)
    }
    
    func kaydet(kisi_ad:String, kisi_tel:String){
        
        db?.open()

        do {
            try db!.executeUpdate("INSERT INTO kisiler(kisi_ad, kisi_tel) values(?,?)", values: [kisi_ad,kisi_tel])
        }catch{
            print(error.localizedDescription)
        }
  
        db?.close()
        
    }
    
    func guncelle(kisi_id:Int, kisi_ad:String, kisi_tel:String) {
        db?.open()

        do {
            try db!.executeUpdate(" UPDATE kisiler SET kisi_ad = ?, kisi_tel = ? WHERE kisi_id = ?", values: [kisi_ad,kisi_tel, kisi_id])
        }catch{
            print(error.localizedDescription)
        }
  
        db?.close()
        
    }
    
    func sil(kisi_id:Int){
        print("kişi sil: \(kisi_id)")
        kisileriYukle()
    }
    
    func ara (aramaKelimesi:String) {
        print("Kişi ara: \(aramaKelimesi)")
    }
    
    func kisileriYukle(){
       
        
        
        db?.open()
        var liste = [Kisiler]()
        
        do {
            let rs = try db!.executeQuery("SELECT * FROM Kisiler", values: nil)
            
            while rs.next() {
                let kisi = Kisiler(kisi_id: Int(rs.string(forColumn: "kisi_id"))!,
                                   kisi_ad: rs.string(forColumn: "kisi_ad") ?? "İsim boş",
                                   kisi_tel: rs.string(forColumn: "kisi_tel") ?? "0000"
                )
                liste.append(kisi)
            }
            
            kisilerListesi.onNext(liste)
            
        }catch{
            print(error.localizedDescription)
        }
        
        
        
        db?.close()
    }
    
    
}
