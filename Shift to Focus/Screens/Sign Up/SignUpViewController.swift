//
//  SignUpViewController.swift
//  Shift to Focus
//
//  Created by Boyuan Xu on 10/19/20.
//

import UIKit

class SignUpViewController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        initUI()
    }
    
    var containerView = UIView()
    var containerStackView: UIStackView!
    var imageView: UIImageView!
    let imageSeparator = UIView(height: 1)
    var emailTF: InsetTextField!
    var pwTF: InsetTextField!
    var confirmPWTF: InsetTextField!
    var tosSwitch: UISwitch!
    var tosButton: UIButton!
    var tosStackView: UIStackView!
    var signUpButton: UIButton!
    var spacer = UIView(spacer: .defaultLow, axis: .vertical)
    var signInLabelButton: UIButton!

}

extension SignUpViewController {
    
    private func initUI() {
        //
        imageView = UIImageView(image: #imageLiteral(resourceName: "logo"))
        imageView.contentMode = .scaleAspectFit
        //
        emailTF = InsetTextField(placeholder: "email / username")
        //
        pwTF = InsetTextField(placeholder: "password")
        //
        confirmPWTF = InsetTextField(placeholder: "confirm password")
        //
        tosSwitch = UISwitch()
        //
        tosButton = UIButton(title1: "I agree to the ", title2: "Terms of Service")
        //
        tosStackView = UIStackView(arrangedSubviews: [tosSwitch, tosButton])
        tosStackView.axis = .horizontal
        tosStackView.spacing = 10
        //
        signUpButton = UIButton(customTitle: "sign up & sign in")
        //
        signInLabelButton = UIButton(title1: "already have an account? ", title2: "sign in")
        //
        containerStackView = UIStackView(arrangedSubviews: [imageSeparator, emailTF, pwTF, confirmPWTF, tosStackView, signUpButton, spacer, signInLabelButton])
        containerStackView.axis = .vertical
        containerStackView.spacing = 10
        containerStackView.setCustomSpacing(20, after: imageSeparator)
        containerStackView.setCustomSpacing(20, after: confirmPWTF)
        containerStackView.setCustomSpacing(20, after: tosStackView)
        containerStackView.setCustomSpacing(50, after: signUpButton)
        //
        initConstraints()
    }
    
    private func initConstraints() {
        let margins = Shared.margins
        containerView.addSubview(imageView)
        imageView.snp.makeConstraints { (this) in
            this.leading.trailing.equalToSuperview()
            this.top.equalToSuperview().offset(40)
        }
        containerView.addSubview(containerStackView)
        containerStackView.snp.makeConstraints { (this) in
            this.top.equalTo(imageView.snp.bottom).offset(10)
            this.leading.trailing.equalToSuperview().inset(margins)
            this.bottom.equalToSuperview().offset(-40)
        }
        view.addSubview(containerView)
        containerView.snp.makeConstraints { (this) in
            this.top.bottom.leading.trailing.equalToSuperview().inset(view.safeAreaInsets)
        }
    }
    
}
