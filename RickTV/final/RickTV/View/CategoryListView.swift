/// Copyright (c) 2020 Razeware LLC
/// 
/// Permission is hereby granted, free of charge, to any person obtaining a copy
/// of this software and associated documentation files (the "Software"), to deal
/// in the Software without restriction, including without limitation the rights
/// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
/// copies of the Software, and to permit persons to whom the Software is
/// furnished to do so, subject to the following conditions:
/// 
/// The above copyright notice and this permission notice shall be included in
/// all copies or substantial portions of the Software.
/// 
/// Notwithstanding the foregoing, you may not use, copy, modify, merge, publish,
/// distribute, sublicense, create a derivative work, and/or sell copies of the
/// Software in any work that is designed, intended, or marketed for pedagogical or
/// instructional purposes related to programming, coding, application development,
/// or information technology.  Permission for such use, copying, modification,
/// merger, publication, distribution, sublicensing, creation of derivative works,
/// or sale is expressly withheld.
/// 
/// This project and source code may use libraries or frameworks that are
/// released under various Open-Source licenses. Use of those libraries and
/// frameworks are governed by their own individual licenses.
///
/// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
/// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
/// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
/// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
/// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
/// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
/// THE SOFTWARE.

import SwiftUI

struct CategoryListView: View {
  @ObservedObject var categoryProvider: CategoryProvider
  var categoryContext: CategoryProvider.ProviderContext

  init(categoryContext: CategoryProvider.ProviderContext, dataProvider: DataProvider) {
    self.categoryContext = categoryContext

    self.categoryProvider = CategoryProvider(dataProvider: dataProvider)
    self.categoryProvider.currentContext = categoryContext
  }

  var body: some View {
    Group {
      ScrollView(.vertical, showsIndicators: false) {
        if categoryProvider.categories.isEmpty {
          VStack {
            Text(categoryContext.missingCategoriesTitle)
              .font(.title2)
              .bold()
              .foregroundColor(Color.primary)
            Text(categoryContext.missingCategoriesDescription)
              .font(.title3)
              .foregroundColor(Color.secondary)
          }.padding()
        } else {
          LazyVStack(alignment: .leading) {
            ForEach(categoryProvider.categories) { category in
              CategoryRow(
                category: category,
                showOnlyFavorites: categoryContext == .favorites
              )
            }
            .animation(.default)
          }
        }
      }
    }
    .navigationTitle(categoryContext.formattedName)
    .onAppear {
      categoryProvider.refresh()
    }
  }
}

struct CategoryListView_Previews: PreviewProvider {
  static var previews: some View {
    CategoryListView(categoryContext: .general, dataProvider: DataProvider())
  }
}
