//
//  TransactionsView.swift
//  Botkassa
//
//  Created by Samuel Hellstrøm on 09/10/2024.
//

import SwiftUI

struct TransactionsView: View {
    @ObservedObject var viewModel = TransactionsViewModel()
    @State private var searchText: String = ""

    var filteredTransactions: [Transaction] {
        if searchText.isEmpty {
            return viewModel.sortedByDateDecending()
        } else {
            return viewModel.sortedByDateDecending().filter {
                $0.description.localizedCaseInsensitiveContains(searchText)
            }
        }
    }

    var body: some View {
        NavigationView {
            TransactionsList(transactions: filteredTransactions)
                .searchable(text: $searchText)
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
