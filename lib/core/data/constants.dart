// GraphQL constants.
const _token =
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJhd2Vzb21lY3VzdG9tZXJAZ21haWwuY29tIn0.cGT2KqtmT8KNIJhyww3T8fAzUsCD5_vxuHl5WbXtp8c';
const uri = 'https://staging-nu-needful-things.nubank.com.br/query';
const headers = {'Authorization': 'Bearer $_token'};

class GraphQLQueries {
  GraphQLQueries._();

  static const getCostumerOffersQuery = '''
  query get_costumer_offers {
    viewer{
      id
      name
      balance
      offers {
        id
        price
        product {
          id
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
        id
        name
        balance
        offers {
          id
          price
          product {
            id
            name
            description
            image
          }
        }
      }
      errorMessage
      success
    }
  }
  ''';
}
