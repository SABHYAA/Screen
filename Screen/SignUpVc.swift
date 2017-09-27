//
//  SignUpVc.swift
//  Screen
//
//  Created by appinventiv on 27/09/17.
//  Copyright © 2017 appinventiv. All rights reserved.
//

import UIKit

class SignUpVc: UIViewController {
    //----------------------Outlet---------------------------------//
    @IBOutlet weak var signupTableview: UITableView!
    
    override func viewDidLoad(){
        super.viewDidLoad()
        self.signupTableview.dataSource = self
        self.signupTableview.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
//-------------------------Tableview Datasource and Delegates-------------------//
extension SignUpVc: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 11
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.row {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImageCellId") as!
            ImageCell
            self.ImageCell(cell: cell, index: indexPath)
            return cell
        case 1,2,6,7,8:
            let cell = tableView.dequeueReusableCell(withIdentifier: "GeneralDataCellId") as! GeneralDataCell
            self.GeneralDataCell(cell: cell, index: indexPath)
            return cell
        case 4,5:
            let cell = tableView.dequeueReusableCell(withIdentifier: "GenderdatacellId") as! GenderDatacell
            self.GenderdatacellHandeling(cell: cell, index: indexPath)
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "DobCellId") as! DobCell
            self.DobCell(cell: cell, index: indexPath)
            return cell
        case 9,10:
            let cell = tableView.dequeueReusableCell(withIdentifier: "RegisterCellId") as! RegisterCell
            self.RegisterCell(cell: cell, index: indexPath)
            return cell
        default:
            fatalError("wrong indexpath")
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.row {
        case 0:
            return 200
        
        default:
            return 150
        }
    }
}
//----------------------Private functions--------------------------//
extension SignUpVc{
    private func ImageCell(cell: ImageCell, index: IndexPath){
        cell.profilepicImageView.image = nil
    }
    private func GeneralDataCell(cell: GeneralDataCell, index: IndexPath){
        switch index.row {
        case 1:
            cell.dataTextfield.placeholder = "Email Password"
        case 2:
            cell.dataTextfield.placeholder = "Name"
        case 3:
            cell.dataTextfield.placeholder = "Mobile number"
        case 6:
            cell.dataTextfield.placeholder = "Password"
        case 7,8:
            cell.dataTextfield.placeholder = "confirm Password"
        default:
            fatalError("not found")
        }
    }
    private func GenderdatacellHandeling(cell: GenderDatacell, index: IndexPath){
        switch index.row {
        case 4:
            cell.genderLbl.text = "Gender"
            cell.maleLbl.text = "Male"
            cell.femaleLbl.text = "Female"
        case 5:
            cell.genderLbl.text = "I am"
            cell.maleLbl.text = "Indivisual"
            cell.femaleLbl.text = "Company"
        default:
            fatalError("empty")
        }
    }
    private func DobCell(cell: DobCell, index: IndexPath){
        switch index.row {
        case 3:
            cell.dobTextField.placeholder = "DD-MM-YY"
        default:
            fatalError("not found")
        }
    }
    private func RegisterCell(cell: RegisterCell, index: IndexPath){
        switch index.row {
        case 9:
            cell.registerBtn.setTitle("SIGNUP", for: .normal)
            
        default:
            cell.registerBtn.setTitle("Already have an account? SIGNIN", for: .normal)
        }
    }
}
//----------------------Custom Cell Class------------------------------//
class ImageCell: UITableViewCell {
    @IBOutlet weak var profilepicImageView: UIImageView!
    override func awakeFromNib() {
    }
    override func prepareForReuse() {
    }
}
class GeneralDataCell: UITableViewCell {
    @IBOutlet weak var dataTextfield: UITextField!
    override func awakeFromNib() {
    }
    override func prepareForReuse() {
    }
}
class GenderDatacell: UITableViewCell{
    @IBOutlet weak var genderLbl: UILabel!
    @IBOutlet weak var maleLbl: UILabel!
    @IBOutlet weak var femaleLbl: UILabel!
    override func awakeFromNib() {
    }
    override func prepareForReuse() {
    }
}

class DobCell: UITableViewCell{
    @IBOutlet weak var dobTextField: UITextField!
    override func awakeFromNib() {
    }
    override func prepareForReuse() {
    }
}
class RegisterCell: UITableViewCell{
    @IBOutlet weak var registerBtn: UIButton!
    override func awakeFromNib() {
    }
    override func prepareForReuse() {
    }
}
