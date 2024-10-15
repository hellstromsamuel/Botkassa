//
//  TransactionsView.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 09/10/2024.
//

import SwiftUI

struct TransactionsView: View {
    @ObservedObject var viewModel = TransactionsViewModel()
    
    var sortedByDateDecending: [Transaction] {
        TransactionsHelper.sortTransactions(
            direction: .descending,
            by: \.timeAdded,
            from: viewModel.transactions)
    }

    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Transactions")) {
                    TransactionsListView(transactions: sortedByDateDecending)
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
