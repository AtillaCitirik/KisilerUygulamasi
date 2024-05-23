//
//  KisiKayit.swift
//  KisilerUygulamasi
//
//  Created by Atilla Çıtırık on 9.05.2024.
//

import UIKit

class KisiKayit: UIViewController {

    @IBOutlet weak var tfKisiAd: UITextField!
    @IBOutlet weak var tfKisiTel: UITextField!
    
    var viewModel = KisiKayitViewModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func vuttonKaydet(_ sender: Any) {
        if let ka = tfKisiAd.text, let kt = tfKisiTel.text {
            viewModel.kaydet(kisi_ad: ka, kisi_tel: kt)
        }
    }
    
    func kaydet(kisi_ad:String, kisi_tel:String){
        print("Kişi Kaydet: \(kisi_ad) - \(kisi_tel)")
    }
    

}
