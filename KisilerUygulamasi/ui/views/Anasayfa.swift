//
//  ViewController.swift
//  KisilerUygulamasi
//
//  Created by Atilla Çıtırık on 9.05.2024.
//

import UIKit

class Anasayfa: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonDetay(_ sender: Any) {
        let kisi = Kisiler(kisi_id: 1, kisi_ad: "ahmet", kisi_tel: "1111")
        performSegue(withIdentifier: "toDetay", sender: kisi)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toDetay" {
            if let kisi = sender as? Kisiler {
                let gidilecekVC = segue.destination as! KisiDetay
                gidilecekVC.kisi = kisi
            }
        }
    }
    
}

