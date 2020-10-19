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
        initActions()
    }
    
    let containerView = UIView()
    var imageView: UIImageView!
    let imageSeparator = UIView(height: 1)
    var emailTF: InsetTextField!
    var pwTF: InsetTextField!
    var signInButton: UIButton!
    var signUpButton: UIButton!
    let signUpSeparator = UIView(height: 1)
    var orLabel: UILabel!
    
    @objc func didTapSignUp() {
        let signUpVC = SignUpViewController()
        present(signUpVC, animated: true, completion: nil)
    }
}

extension SignInViewController {
    
    private func initActions() {
        signUpButton.addTarget(self, action: #selector(didTapSignUp), for: .touchUpInside)
    }
    
}

extension SignInViewController {
        
    private func initUI() {
        // MARK: - Logo init
        imageView = UIImageView(image: #imageLiteral(resourceName: "logo"))
        imageView.contentMode = .scaleAspectFit
        // MARK: - TF init
        emailTF = InsetTextField(placeholder: "email")
        pwTF = InsetTextField(placeholder: "password")
        // MARK: - Sign in button init
        signInButton = UIButton(customTitle: "sign in")
        // MARK: - Sign up button init
        signUpButton = UIButton(title1: "don't have an account? ", title2: "sign up")
        // MARK: - Third party sign in
        orLabel = UILabel()
        orLabel.text = "or"
        orLabel.font = .systemFont(ofSize: orLabel.font.pointSize, weight: .thin)
    }
    
    private func initConstraints() {
        let margins = Shared.margins
        containerView.addSubview(imageView)
        imageView.snp.makeConstraints { (this) in
//            this.top.equalToSuperview()
//            this.leading.equalToSuperview()
//            this.trailing.equalToSuperview()
            // Shorthand
            this.top.leading.trailing.equalToSuperview()
        }
        containerView.addSubview(imageSeparator)
        imageSeparator.snp.makeConstraints { (this) in
            this.top.equalTo(imageView.snp.bottom).offset(10)
            this.leading.equalToSuperview().inset(margins)
            this.trailing.equalToSuperview().inset(margins)
        }
        containerView.addSubview(emailTF)
        emailTF.snp.makeConstraints { (this) in
            this.top.equalTo(imageSeparator.snp.bottom).offset(20)
            this.leading.equalToSuperview().inset(margins)
            this.trailing.equalToSuperview().inset(margins)
        }
        containerView.addSubview(pwTF)
        pwTF.snp.makeConstraints { (this) in
            this.top.equalTo(emailTF.snp.bottom).offset(10)
            this.leading.equalToSuperview().inset(margins)
            this.trailing.equalToSuperview().inset(margins)
        }
        containerView.addSubview(signInButton)
        signInButton.snp.makeConstraints { (this) in
            this.top.equalTo(pwTF.snp.bottom).offset(20)
            this.leading.equalToSuperview().inset(margins)
            this.trailing.equalToSuperview().inset(margins)
        }
        containerView.addSubview(signUpButton)
        signUpButton.snp.makeConstraints { (this) in
            this.top.equalTo(signInButton.snp.bottom).offset(50)
            this.leading.equalToSuperview().inset(margins)
            this.trailing.equalToSuperview().inset(margins)
        }
        containerView.addSubview(signUpSeparator)
        signUpSeparator.snp.makeConstraints { (this) in
            this.top.equalTo(signUpButton.snp.bottom).offset(20)
            this.leading.equalToSuperview().inset(margins)
            this.trailing.equalToSuperview().inset(margins)
        }
        containerView.addSubview(orLabel)
        orLabel.snp.makeConstraints { (this) in
            this.top.equalTo(signUpSeparator.snp.bottom).offset(20)
            this.centerX.equalToSuperview()
        }
        view.addSubview(containerView)
        containerView.snp.makeConstraints { (this) in
            this.leading.equalToSuperview()
            this.trailing.equalToSuperview()
            this.bottom.equalTo(orLabel.snp.bottom)
            this.centerY.equalToSuperview()
        }
    }
    
}
