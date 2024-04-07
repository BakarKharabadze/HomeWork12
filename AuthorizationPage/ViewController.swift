//
//  ViewController.swift
//  AuthorizationPage
//
//  Created by Bakar Kharabadze on 4/6/24.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Properties
    private let mainStackView = UIStackView()
    private let iconImageView = UIImageView()
    private let welcomeLabel = UILabel()
    private let descriptionLabel = UILabel()
    private let authorizationLabel = UILabel()
    private let separatorView = UIView()
    private let fullNameTextField = UITextField()
    private let mailTextField = UITextField()
    private let passwordTextField = UITextField()
    private let enterButton = UIButton()
    private let viewForLine = UIView()
    private var googleButton = UIButton()
    private let fbButton = UIButton()
    
    private let welcomeLabelColor = UIColor(hexString: "#101010")
    private let descriptionLabelColor = UIColor(hexString: "#000000")
    private let separatorColor = UIColor(hexString: "#33A5E5")
    private let fullNameLabelColor = UIColor(hexString: "#2E2E2E")
    private let fullNameTextFieldColor = UIColor(hexString: "#DDDDDD")
    private let enterButtonColor = UIColor(hexString: "#33A5E5")
    private let googleButtonBackGroundColor = UIColor(hexString: "#F0F0F0")
    private let googleButtonColor = UIColor(hexString: "#222222")
    private let lineViewColor = UIColor(hexString: "#D9D9D9")
    private let authorizationColor = UIColor(hexString: "#000000")
    private let lineLabelColor = UIColor(hexString: "#4C4E55")
    
    //MARK: Lice cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setup()
    }
    
    //MARK: Set up Methods
    private func setup() {
        setupMainStackView()
        setupImageView()
        setupWelcomeLabel()
        setupDescription()
        setupDescription()
        setupAuthorization()
        setupSeparator()
        setupFullName()
        setupMailTextField()
        setupPasswordTextField()
        setupEnterButton()
        setupViewForLine()
        setupGoogleButton()
        setupFbButton()
    }
    
    private func setupMainStackView() {
        mainStackView.axis = .vertical
        
        view.addSubview(mainStackView)
        
        mainStackView.spacing = 15
        mainStackView.layoutMargins = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
        mainStackView.isLayoutMarginsRelativeArrangement = true
        mainStackView.translatesAutoresizingMaskIntoConstraints = false
        mainStackView.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor).isActive = true
        mainStackView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor).isActive = true
        mainStackView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor).isActive = true
    }
    
    private func setupImageView() {
        let stackView = UIStackView()
        stackView.alignment = .center
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        iconImageView.image = UIImage(named: "appImage")
        stackView.addArrangedSubview(iconImageView)
        mainStackView.addArrangedSubview(stackView)
        iconImageView.contentMode = .center
        iconImageView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        iconImageView.widthAnchor.constraint(equalToConstant: 90).isActive = true
    }
    
    private func setupWelcomeLabel() {
        welcomeLabel.text = "მოგესალმებით"
        welcomeLabel.textColor = welcomeLabelColor
        welcomeLabel.font = UIFont.systemFont(ofSize: 24.0)
        
        mainStackView.addArrangedSubview(welcomeLabel)
    }
    
    private func setupDescription() {
        descriptionLabel.text = "ამ აპლიკაციის გამოყენების საუკეთესო გზა თქვენს ანგარიშზე შესვლაა, თუ არ გაქვთ ანგარიში გააკეთეთ, თუ არ გსურთ გაკეთება დასტოვეთ აქაურობა და წაშალეთ აპლიკაცია."
        descriptionLabel.numberOfLines = 0
        descriptionLabel.textColor = descriptionLabelColor
        descriptionLabel.font = UIFont.systemFont(ofSize: 14)
        
        mainStackView.addArrangedSubview(descriptionLabel)
    }
    
    private func setupAuthorization() {
        authorizationLabel.text = "ავტორიზაცია"
        authorizationLabel.textColor = authorizationColor
        authorizationLabel.font = UIFont.systemFont(ofSize: 18)
        authorizationLabel.textAlignment = .center
        
        mainStackView.addArrangedSubview(authorizationLabel)
    }
    
    private func setupSeparator() {
        separatorView.heightAnchor.constraint(equalToConstant: 2).isActive = true
        separatorView.backgroundColor = separatorColor
        
        mainStackView.addArrangedSubview(separatorView)
    }
    
    private func setupFullName() {
        let fullNameLabel = UILabel()
        fullNameLabel.text = "სრული სახელი "
        fullNameLabel.textColor = fullNameLabelColor
        fullNameLabel.font = UIFont.systemFont(ofSize: 12)
        
        fullNameTextField.backgroundColor = fullNameTextFieldColor
        fullNameTextField.heightAnchor.constraint(equalToConstant: 44).isActive = true
        fullNameTextField.placeholder = " მაგ: ქეთინო ფერი"
        fullNameTextField.font = UIFont.systemFont(ofSize: 12)
        fullNameTextField.backgroundColor = fullNameTextFieldColor
        fullNameTextField.layer.borderWidth = 1.5
        fullNameTextField.layer.cornerRadius = 5
        fullNameTextField.layer.borderColor = fullNameTextFieldColor.cgColor
        
        mainStackView.addArrangedSubview(fullNameLabel)
        mainStackView.addArrangedSubview(fullNameTextField)
    }
    
    private func setupMailTextField() {
        let mailLabel = UILabel()
        mailLabel.text = "ელ. ფოსტა"
        mailLabel.textColor = fullNameLabelColor
        mailLabel.font = UIFont.systemFont(ofSize: 12)
        
        mailTextField.backgroundColor = fullNameTextFieldColor
        mailTextField.heightAnchor.constraint(equalToConstant: 44).isActive = true
        mailTextField.placeholder = " მაგ: kusuna@mail.ru"
        mailTextField.font = UIFont.systemFont(ofSize: 12)
        mailTextField.backgroundColor = fullNameTextFieldColor
        mailTextField.layer.borderWidth = 1.5
        mailTextField.layer.cornerRadius = 5
        mailTextField.layer.borderColor = fullNameTextFieldColor.cgColor
        
        mainStackView.addArrangedSubview(mailLabel)
        mainStackView.addArrangedSubview(mailTextField)
    }
    
    private func setupPasswordTextField() {
        
        let passwordLabel = UILabel()
        passwordLabel.text = "პაროლი"
        passwordLabel.textColor = fullNameLabelColor
        passwordLabel.font = UIFont.systemFont(ofSize: 12)
        
        passwordTextField.backgroundColor = fullNameTextFieldColor
        passwordTextField.heightAnchor.constraint(equalToConstant: 44).isActive = true
        passwordTextField.placeholder = " მაგ: busuna123, jajanaIsMyKumiri2010"
        passwordTextField.font = UIFont.systemFont(ofSize: 12)
        passwordTextField.backgroundColor = fullNameTextFieldColor
        passwordTextField.layer.borderWidth = 1.5
        passwordTextField.layer.cornerRadius = 5
        passwordTextField.layer.borderColor = fullNameTextFieldColor.cgColor
        passwordTextField.isSecureTextEntry = true
        mainStackView.addArrangedSubview(passwordLabel)
        mainStackView.addArrangedSubview(passwordTextField)
    }
    
    private func setupEnterButton() {
        
        enterButton.heightAnchor.constraint(equalToConstant: 46).isActive = true
        enterButton.layer.borderWidth = 1.5
        enterButton.layer.cornerRadius = 15
        enterButton.layer.borderColor = UIColor.white.cgColor
        enterButton.setTitle("შესვლა", for: .normal)
        enterButton.backgroundColor = enterButtonColor
        
        mainStackView.addArrangedSubview(enterButton)
    }
    
    private func setupViewForLine() {
        let firstView = UIView()
        firstView.backgroundColor = lineViewColor
        let secondView = UIView()
        secondView.backgroundColor = lineViewColor
        let label = UILabel()
        label.text = "ან"
        label.font = UIFont.systemFont(ofSize: 14)
        label.textColor = lineLabelColor
        
        viewForLine.heightAnchor.constraint(equalToConstant: 10).isActive = true
        viewForLine.addSubview(firstView)
        viewForLine.addSubview(label)
        viewForLine.addSubview(secondView)
        
        firstView.translatesAutoresizingMaskIntoConstraints = false
        secondView.translatesAutoresizingMaskIntoConstraints = false
        label.translatesAutoresizingMaskIntoConstraints = false
        
        label.centerYAnchor.constraint(equalTo: viewForLine.centerYAnchor).isActive = true
        label.centerXAnchor.constraint(equalTo: viewForLine.centerXAnchor).isActive = true
        label.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
        firstView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        firstView.leadingAnchor.constraint(equalTo: viewForLine.leadingAnchor).isActive = true
        firstView.trailingAnchor.constraint(equalTo: label.leadingAnchor, constant: -10).isActive = true
        firstView.centerYAnchor.constraint(equalTo: viewForLine.centerYAnchor).isActive = true
        
        secondView.heightAnchor.constraint(equalToConstant: 1).isActive = true
        secondView.leadingAnchor.constraint(equalTo: label.trailingAnchor, constant: 10).isActive = true
        secondView.trailingAnchor.constraint(equalTo: viewForLine.trailingAnchor).isActive = true
        secondView.centerYAnchor.constraint(equalTo: viewForLine.centerYAnchor).isActive = true
        
        mainStackView.addArrangedSubview(viewForLine)
    }
    
    private func setupGoogleButton() {
        googleButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        googleButton.backgroundColor = googleButtonBackGroundColor
        googleButton.layer.borderWidth = 1.5
        googleButton.layer.cornerRadius = 15
        googleButton.layer.borderColor = UIColor.white.cgColor
        googleButton.setTitle("გამოიყენეთ გუგული", for: .normal)
        googleButton.setTitleColor(googleButtonColor, for: .normal)
        googleButton.tintColor = .black
        
        var config = UIButton.Configuration.plain()
        config.image = UIImage(systemName: "g.circle.fill", withConfiguration: UIImage.SymbolConfiguration(scale: .large))
        config.imagePadding = 5
        googleButton.configuration = config
        
        mainStackView.addArrangedSubview(googleButton)
    }
    
    private func setupFbButton() {
        fbButton.heightAnchor.constraint(equalToConstant: 48).isActive = true
        fbButton.backgroundColor = googleButtonBackGroundColor
        fbButton.layer.borderWidth = 1.5
        fbButton.layer.cornerRadius = 15
        fbButton.layer.borderColor = UIColor.white.cgColor
        fbButton.setTitle("გამოიყენეთ ფეიზბურგი", for: .normal)
        fbButton.setTitleColor(googleButtonColor, for: .normal)
        fbButton.tintColor = .black
        
        var config = UIButton.Configuration.plain()
        config.image = UIImage(systemName: "f.circle.fill", withConfiguration: UIImage.SymbolConfiguration(scale: .large))
        config.imagePadding = 5
        fbButton.configuration = config
        mainStackView.addArrangedSubview(fbButton)
    }
}

extension UIColor {
    convenience init(hexString: String) {
        let hex = hexString.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
        var int = UInt64()
        Scanner(string: hex).scanHexInt64(&int)
        let a, r, g, b: UInt64
        switch hex.count {
        case 3: // RGB (12-bit)
            (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
        case 6: // RGB (24-bit)
            (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
        case 8: // ARGB (32-bit)
            (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
        default:
            (a, r, g, b) = (255, 0, 0, 0)
        }
        self.init(red: CGFloat(r) / 255, green: CGFloat(g) / 255, blue: CGFloat(b) / 255, alpha: CGFloat(a) / 255)
    }
}
