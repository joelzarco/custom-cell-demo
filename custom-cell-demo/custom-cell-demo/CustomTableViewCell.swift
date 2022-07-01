//
//  CustomTableViewCell.swift
//  custom-cell-demo
//
//  Created by Johel Zarco on 24/06/22.
//

import UIKit

class CustomTableViewCell: UITableViewCell {

    static let identifier = "CustomTableViewCell"
    static let rowHeight : CGFloat = 450
    
    let topMargin : CGFloat = 10
    let margin : CGFloat = 10
    let spacing : CGFloat = 20
    
    let titleLabel = UILabel()
    let subtitleLabel = UILabel()
    let artImage = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setup()
        layout()
    }
    
    required init(coder : NSCoder) {
        fatalError("init(coder: ) has not been implemented")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
    }

    override func prepareForReuse(){
        super.prepareForReuse()
        artImage.image = nil
    }
}


extension CustomTableViewCell{
    
    private func setup(){
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        titleLabel.font = .systemFont(ofSize: 16, weight: .semibold)
        titleLabel.adjustsFontForContentSizeCategory = true
        titleLabel.text = "The Tragedy of the Unwanted Child: What Ancient Cultures Did Before Abortion"
        titleLabel.numberOfLines = 0
        
        subtitleLabel.translatesAutoresizingMaskIntoConstraints = false
        subtitleLabel.font = .systemFont(ofSize: 13, weight: .regular)
        subtitleLabel.adjustsFontForContentSizeCategory = true
        subtitleLabel.text = "Safe abortion is the modern cure for the ancient heartbreaks of neonaticide and abandonment"
        subtitleLabel.numberOfLines = 0
        
        artImage.translatesAutoresizingMaskIntoConstraints = false
        artImage.image = UIImage(named: "quillete")
        artImage.contentMode = .scaleToFill
        artImage.clipsToBounds = true
        artImage.layer.cornerRadius = 5
        artImage.backgroundColor = .systemBackground
        
        contentView.addSubview(titleLabel)
        contentView.addSubview(artImage)
        contentView.addSubview(subtitleLabel)
        
    }
    
    private func layout(){
        titleLabel.topAnchor.constraint(equalTo: topAnchor, constant: spacing).isActive = true
        titleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: margin).isActive = true
        titleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: margin).isActive = true
        
        artImage.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: spacing).isActive = true
        artImage.leadingAnchor.constraint(equalTo: leadingAnchor, constant: margin).isActive = true
        trailingAnchor.constraint(equalTo: artImage.trailingAnchor, constant: margin).isActive = true
        artImage.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -4*spacing).isActive = true
        
        subtitleLabel.topAnchor.constraint(equalTo: artImage.bottomAnchor, constant: spacing).isActive = true
        subtitleLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: margin).isActive = true
        subtitleLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -margin).isActive = true
        subtitleLabel.bottomAnchor.constraint(equalTo: bottomAnchor, constant: -2*spacing).isActive = true
        
    }
}
