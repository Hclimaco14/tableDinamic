//
//  ViewController.swift
//  TableQuestions
//
//  Created by Hector Climaco on 1/6/19.
//  Copyright © 2019 Personal. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var arrayQuestion : [Pregunta] = []
    
    
    struct Pregunta {
        var question : String
        var answer   : String
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        arrayQuestion.append( Pregunta(question: "¿Pregunta Una Linea?", answer: "Respuesta una linea"))
        arrayQuestion.append( Pregunta(question: "¿Pregunta Una Linea?", answer: "Respuesta de dos lineas por el largo del texto"))
        arrayQuestion.append( Pregunta(question: "¿Pregunta de dos o mas lineas prueba de ancho en header?", answer: "Respuesta una linea"))
        arrayQuestion.append( Pregunta(question: "¿Pregunta de dos o mas lineas prueba de ancho en header?", answer: "Respuesta de dos lineas por el largo del texto o eso espero"))
        
        
        
        tableView.register(UINib(nibName: "QuestionSectionView", bundle: Bundle.main), forHeaderFooterViewReuseIdentifier: "Question")
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "Answer")
        
        tableView.estimatedSectionHeaderHeight = 50
        tableView.sectionHeaderHeight = UITableView.automaticDimension
        
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        tableView.reloadData()
    }
    
}

extension ViewController : UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return arrayQuestion.count
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let sectionView = tableView.dequeueReusableHeaderFooterView(withIdentifier: "Question")
        as! QuestionSectionView
        
        sectionView.lblQuestion.text = arrayQuestion[section].question
        
        return sectionView
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Answer", for: indexPath) as! TableViewCell
        
        cell.lblAnswer.text = arrayQuestion[indexPath.section].answer
        
        return cell
    }

    
}

