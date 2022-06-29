// GraphQL constants.
const _token = 'thisisnubank';
const uri = 'https://staging-nu-needful-things.nubank.com.br/query';
const headers = {'Authorization': 'Bearer $_token'};

class GraphQLQueries {
  GraphQLQueries._();

  static const getCostumerOffersQuery = '''
  query get_costumer_offers {
    viewer{
      name
      balance
      offers {
        id
        price
        product {
          name
          description
          image
        }
      }
    }
  }
  ''';

  static const purchaseOrder = '''
  mutation purchase(\$offerId: ID!) {
    purchase(offerId: \$offerId) {
      customer {
        balance
      }
      errorMessage
      success
    }
  }
  ''';
}
