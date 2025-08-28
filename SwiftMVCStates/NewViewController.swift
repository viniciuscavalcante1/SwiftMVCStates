//
//  NewViewController.swift
//  SwiftMVCStates
//
//  Created by Vinícius Cavalcante on 23/08/2025.
//

import UIKit

class NewViewController: UIViewController {

    @IBOutlet weak var tfEmail: UITextField!
    @IBOutlet weak var tfSenha: UITextField!
    @IBOutlet weak var lbError: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("Tela 2: viewDidLoad (view foi carregada)")
        lbError.text = ""
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("Tela 2: viewWillAppear (view vai aparecer)")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("Tela 2: viewDidAppear (view foi exibido)")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("Tela 2: viewWillDisappear (view vai desaparecer)")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("Tela 2: viewDidDisappear (view SUMIU)")
    }
    
    @IBAction func checkTextFields(_ sender: UIButton) {
        // view.endEditing faz com que qualquer edição de text field seja encerrada
        view.endEditing(true)
        lbError.text = ""
        if tfEmail.text!.isEmpty || tfSenha.text!.isEmpty {
            lbError.text = "Ambos os campos precisam ser preenchidos"
        } else {
            // performSegue vai pra segue. Dá pra selecionar o identifier para especificar a segue.
            performSegue(withIdentifier: "next", sender: nil)
        }
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
