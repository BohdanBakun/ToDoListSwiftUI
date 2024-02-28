//
//  AddView.swift
//  ToDoListSwiftUI
//
//  Created by Богдан Бакун on 27.02.2024.
//

import SwiftUI

struct AddView: View {
    
    @Environment(\.dismiss) var dismiss
    @EnvironmentObject var listViewModel: ListViewModel
    @State private var textFieldText = ""
    
    @State private var alertTitle = ""
    @State private var showAlert = false
    
    private var textIsAppropriated: Bool {
        textFieldText.count >= 3
    }
    
    var body: some View {
        ScrollView {
            VStack {
                TextField("Type something here...", text: $textFieldText)
                    .padding(.horizontal)
                    .frame(height: 55)
                    .background(Color(#colorLiteral(red: 0.921431005, green: 0.9214526415, blue: 0.9214410186, alpha: 1)))
                    .cornerRadius(10)
                
                Button(action: saveButtonPressed) {
                    Text("Save".uppercased())
                        .foregroundStyle(.white)
                        .font(.headline)
                        .frame(height: 55)
                        .frame(maxWidth: .infinity)
                        .background(Color.accentColor)
                        .cornerRadius(10)
                }
                
            }
            .padding(14)
        }
        .navigationTitle("Add an Item 🖊️")
        .alert(isPresented: $showAlert, content: getAlert)
    }
    
    private func saveButtonPressed() {
        if textIsAppropriated {
            listViewModel.addItem(title: textFieldText)
            dismiss()
        } else {
            alertTitle = "Your new todo item must be at least 3 characters long!"
            showAlert.toggle()
        }
    }
    
    private func getAlert() -> Alert {
        Alert(
            title: Text(alertTitle)
        )
    }
}

#Preview {
    NavigationView {
        AddView()
            .environmentObject(ListViewModel())
    }
}
