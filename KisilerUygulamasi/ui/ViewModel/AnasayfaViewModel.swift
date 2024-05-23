//
//  AnasayfaViewModel.swift
//  KisilerUygulamasi
//
//  Created by Atilla Çıtırık on 23.05.2024.
//

import Foundation
import RxSwift

class AnasayfaViewModel{
    var kisilerListesi = BehaviorSubject<[Kisiler]>(value: [Kisiler]())
    var krepo = KisilerdaoRepository()
    
    init(){
        kisilerListesi = krepo.kisilerListesi
        kisileriYukle()
    }
    
    func sil(kisi_id:Int){
        krepo.sil(kisi_id: kisi_id)
    }
    
    func ara (aramaKelimesi:String) {
        krepo.ara(aramaKelimesi: aramaKelimesi)
    }
    
    func kisileriYukle(){
        krepo.kisileriYukle()
    }
    
}
