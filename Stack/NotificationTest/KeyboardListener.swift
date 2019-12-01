//
//  KeyboardListener.swift
//  Stack
//
//  Created by Алексей on 05.11.2019.
//  Copyright © 2019 Алексей. All rights reserved.
//

import SwiftUI
import Combine

final class KeyboardListener: ObservableObject {
    
    @Published var keyboardHeight: CGFloat = 0
    
    public var keyboardRect: CGRect = CGRect()
    public var keyboardIsHidden = true
    
    
    func addObserver() {
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardWillShow(notification:)), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyBoardDidHide(notification:)), name: UIResponder.keyboardDidHideNotification, object: nil)
    }
    
    func removeObserver() {
        NotificationCenter.default.removeObserver(self)
    }
    
    @objc private func keyBoardWillShow(notification: Notification) {
        if keyboardIsHidden {
            keyboardIsHidden = false
            if let rect = notification.userInfo?["UIKeyboardFrameEndUserInfoKey"] as? CGRect {
                keyboardRect = rect
                keyboardHeight = max(rect.height, 0)
            }
        }
    }
    
    @objc private func keyBoardDidHide(notification: Notification) {
        keyboardIsHidden = true
        keyboardHeight = 0
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
}

