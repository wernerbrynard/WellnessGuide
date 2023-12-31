//
//  ChatOptionsView.swift
//  HealthGPT
//
//  Created by Werner Brynard on 2023/07/23.
//

import Foundation
import SwiftUI

struct ChatOptionsView: View {
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var messageManager: MessageManager

    let disclaimer = """
    HealthGPT is powered by the OpenAI API. Data submitted here is not used for training OpenAI's models according to their terms and conditions.

    Currently, HealthGPT is accessing your step count, sleep analysis, exercise minutes, \
    active calories burned, body weight, and heart rate, all from data stored in the Health app.

    Remember to log your data and wear your Apple Watch throughout the day for the most accurate results.
    """

    var body: some View {
        Button("Clear Current Thread") {
            messageManager.clearMessages()
            dismiss()
        }
        .padding()
        .background(.white)
        .cornerRadius(20)
        .foregroundColor(.red)
        .overlay(
            RoundedRectangle(cornerRadius: 20)
                .stroke(.red, lineWidth: 1)
        )

        Text(disclaimer)
        .foregroundColor(.gray)
        .padding(20)
        .font(.system(size: 15))
    }
}
