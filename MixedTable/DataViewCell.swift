//
//  DataViewCell.swift
//  MixedTable
//
//  Created by Ekaterina Saveleva on 12.07.2023.
//

import UIKit

import UIKit

class DataViewCell: UITableViewCell {
    
    // MARK: - Public properties

    private var labelNumber: UILabel = {
       let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    
    // MARK: - Init
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        setupSubview()
        setupConstraits()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Private methods
    
    private func setupSubview() {
        contentView.addSubview(labelNumber)
    }
    
    private func setupConstraits() {
        NSLayoutConstraint.activate([
        
            labelNumber.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 10),
            labelNumber.leftAnchor.constraint(equalTo: contentView.leftAnchor, constant: 10),
            labelNumber.widthAnchor.constraint(equalToConstant: 100),
            labelNumber.heightAnchor.constraint(equalToConstant: 20)
           
        ])
    }
    
    func update (_ model: Data) {
        labelNumber.text = String(model.number)
    }
}

