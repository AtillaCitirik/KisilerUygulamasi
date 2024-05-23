//
//  kisiKayitViewModel.swift
//  KisilerUygulamasi
//
//  Created by Atilla Çıtırık on 23.05.2024.
//

import Foundation

class KisiKayitViewModel{
    
    var kRepo = KisilerdaoRepository()
    
    func kaydet(kisi_ad:String, kisi_tel:String){
        kRepo.kaydet(kisi_ad: kisi_ad, kisi_tel: kisi_tel)
    }
    
    
}
