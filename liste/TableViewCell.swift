//
//  TableViewCell.swift
//  liste
//
//  Created by user1 on 24/04/2018.
//  Copyright © 2018 LBP. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var nomMonnaie: UILabel!
    @IBOutlet weak var initialMonnaie: UILabel!
    @IBOutlet weak var valeurUSMonnaie: UILabel!
    @IBOutlet weak var evolutionMonnaie: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func setNom(nom: String)
    {
        nomMonnaie.text = nom;
    }
    func setInitial(initial: String)
    {
        initialMonnaie.text = initial
    }
    func setValeurUS(val: String)
    {
        valeurUSMonnaie.text = "$\(val)"
    }
    func setEvolution(evol: String)
    {
        if(evol.starts(with: "-"))
        {
            evolutionMonnaie.textColor = #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)
        }
        else
        {
            evolutionMonnaie.textColor = #colorLiteral(red: 0, green: 0.9768045545, blue: 0, alpha: 1)
        }
        evolutionMonnaie.text = "\(evol) %"
    }

}
