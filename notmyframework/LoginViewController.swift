//
//  LoginViewController.swift
//  notmyframework
//
//  Created by Vishwas Anandani on 10/01/22.
//

import UIKit

public class LoginViewController: UIViewController {

    public override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    public init() {
        super.init(nibName: "LoginViewController", bundle: Bundle(for: LoginViewController.self))
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    @IBAction func signin(_ sender: Any) {
        print("username \(usernamefield.text) password \(pwd.text)")
    }
    
    @IBOutlet weak var pwd: UITextField!
    
    @IBOutlet weak var usernamefield: UITextField!
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
