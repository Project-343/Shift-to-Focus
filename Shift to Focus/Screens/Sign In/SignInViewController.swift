//
//  SignInViewController.swift
//  Shift to Focus
//
//  Created by Boyuan Xu on 10/10/20.
//

import UIKit

class SignInViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
        initConstraints()
    }
    
    let containerView = UIView()
    var imageView: UIImageView!
    let imageSeparator = UIView(height: 1)
    var emailTF: UITextField!
    var pwTF: UITextField!
    var signInButton: UIButton!
    var signUpButton: UIButton!
    let signUpSeparator = UIView(height: 1)
    var orLabel: UILabel!
}

extension SignInViewController {
        
    private func initUI() {
        // MARK: - Logo init
        imageView = UIImageView(image: #imageLiteral(resourceName: "logo"))
        imageView.contentMode = .scaleAspectFit
        // MARK: - TF init
        emailTF = UITextField(placeholder: "email")
        pwTF = UITextField(placeholder: "password")
        // MARK: - Sign in button init
        signInButton = UIButton(customTitle: "sign in")
        // MARK: - Sign up button init
        signUpButton = UIButton(title1: "don't have an account?", title2: "sign up")
        // MARK: - Third party sign in
        orLabel = UILabel()
        orLabel.text = "or"
        orLabel.font = .systemFont(ofSize: 17, weight: .thin)
    }
    
    private func initConstraints() {
        containerView.addSubview(imageView)
        imageView.snp.makeConstraints { (this) in
            this.top.equalToSuperview()
            this.leading.equalToSuperview()
            this.trailing.equalToSuperview()
        }
        containerView.addSubview(imageSeparator)
        imageSeparator.snp.makeConstraints { (this) in
            this.top.equalTo(imageView.snp.bottom)
            this.leading.equalToSuperview()
            this.trailing.equalToSuperview()
        }
        containerView.addSubview(emailTF)
        emailTF.snp.makeConstraints { (this) in
            this.top.equalTo(imageSeparator.snp.bottom).offset(20)
            this.leading.equalToSuperview()
            this.trailing.equalToSuperview()
        }
        containerView.addSubview(pwTF)
        pwTF.snp.makeConstraints { (this) in
            this.top.equalTo(emailTF.snp.bottom).offset(10)
            this.leading.equalToSuperview()
            this.trailing.equalToSuperview()
        }
        containerView.addSubview(signInButton)
        signInButton.snp.makeConstraints { (this) in
            this.top.equalTo(pwTF.snp.bottom).offset(20)
            this.leading.equalToSuperview()
            this.trailing.equalToSuperview()
        }
        containerView.addSubview(signUpButton)
        signUpButton.snp.makeConstraints { (this) in
            this.top.equalTo(signInButton.snp.bottom).offset(50)
            this.leading.equalToSuperview()
            this.trailing.equalToSuperview()
        }
        containerView.addSubview(signUpSeparator)
        signUpSeparator.snp.makeConstraints { (this) in
            this.top.equalTo(signUpButton.snp.bottom).offset(20)
            this.leading.equalToSuperview()
            this.trailing.equalToSuperview()
        }
        containerView.addSubview(orLabel)
        orLabel.snp.makeConstraints { (this) in
            this.top.equalTo(signUpSeparator.snp.bottom).offset(20)
            this.centerX.equalToSuperview()
        }
        view.addSubview(containerView)
        containerView.snp.makeConstraints { (this) in
//            this.top.lessThanOrEqualTo(view.safeAreaLayoutGuide.snp.top)
            this.leading.equalToSuperview()
            this.trailing.equalToSuperview()
            this.bottom.equalTo(orLabel.snp.bottom)
            this.centerY.equalToSuperview()
        }
    }
    
}
