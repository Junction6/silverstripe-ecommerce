Architecture
=============

[ShoppingCart](ShoppingCart) provides the API to add and remove items from the current order. Once an order is processed on the CheckoutPage, it is no longer in the cart.

## Data Model

Here are some diagrams: 
[DataModel](http://www.silverstripe-ecommerce.com/ecommerce/docs/en/SSUE-commerceDataModel.png)
### Persisting order information

If you are changing your product catalog or customers are updating / removing their member info, then you don't want to loose important information in the process.

Protections that are in place:

 * Products are pages, so inherently have versions associated with them. The product ID and product version ID are associated with an order item from the moment they are added to the cart.
 * Product Variations are versioned, however their associated attribute types + values are not protected.
 * OrderItem amount is recalculated on write after an order has been placed (no longer in cart). You should be careful not to write order items if they are storing historical values that shouldn't be changed.