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
            TransactionListView(transactions: viewModel.transactions)
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
