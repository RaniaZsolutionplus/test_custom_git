//
//  FilledButton.swift
//  TestGit
//
//  Created by IMac Pro on 10/12/2025.
//


import SwiftUI

struct FilledButton: View {
    private var action: () -> Void
    
    private var title: String
    
    private var titleFont: SwiftUI.Font?
    
    private var fillColor: Color
    private var textColor: Color
    private var titleTopPadding: CGFloat = 7
    
    init(
        title: String,
        fillColor: Color = .blue,
        textColor: Color = .white,
        titleTopPadding: CGFloat = 7,
        action: @escaping () -> Void
    ) {
        self.action = action
        self.title = title
        self.fillColor = fillColor
        self.titleTopPadding = titleTopPadding
        self.textColor = textColor
    }
    
    var body: some View {
        Button(action: {
            action()
            
        }, label: {
            Text(title)
                .font(titleFont)
                .foregroundStyle(textColor)
                .padding(.top, titleTopPadding)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(fillColor)
                .clipShape(RoundedRectangle(cornerRadius: 8.7))
                .contentShape(.rect)
        })
        .buttonStyle(.plain)

    }
}
