//
//  TransactionsView.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 09/10/2024.
//


import SwiftUI

struct TransactionsView: View {
    @ObservedObject var viewModel = TransactionsViewModel()

    var body: some View {
        NavigationView {
            List(viewModel.transactions) { transaction in
                HStack {
                    VStack(alignment: .leading) {
                        Text(transaction.description)
                            .font(.headline)
                        Text(transaction.date, style: .date)
                            .font(.subheadline)
                    }
                    Spacer()
                    Text("$\(transaction.amount, specifier: "%.2f")")
                        .foregroundColor(transaction.amount > 0 ? .green : .red)
                        .font(.headline)
                }
            }
            .navigationTitle("History")
        }
        .onAppear {
            viewModel.loadTransactions()
        }
    }
}

struct TransactionsView_Previews: PreviewProvider {
    static var previews: some View {
        TransactionsView()
    }
}
