<div class="typography">

<h1>Ecommerce Test Page</h1>
<p>
	Welcome to the ecommerce template test.
	On this page you can see the most useful e-commerce template controls.
</p>

<h2>The Cart</h2>
The Cart can be accessed from anywhere using:</p>
<pre>
&lt;% if Cart %&gt;
	&lt;% control Cart %&gt;
		//do cart stuff here
	&lt;% end_control %&gt;
&lt;% else %&gt;
	&lt;p&gt;No cart was found!&lt;/p&gt;
&lt;% end_if %&gt;
</pre>

<% if Cart %>
	<% control Cart %>

	<% end_control %>
<% else %>
<p>No cart was found!</p>
<% end_if %>


<h2>Ecommerce Configurations</h2>
<p>
	These configurations are set in a special DataObject in the database.
	They contain lots of settings, but here are the onest most useful for templates.
	These can be accessed from anywhere.
</p>
<table>
	<tr><th scope="row">Shop Address (&#36;EcomConfig.ShopPhysicalAddress):</th><td>$EcomConfig.ShopPhysicalAddress</td></tr>
	<tr><th scope="row">Receipt Email (&#36;EcomConfig.ReceiptEmail):</th><td>$EcomConfig.ReceiptEmail</td></tr>
	<tr><th scope="row">PostalCodeURL (&#36;EcomConfig.PostalCodeURL):</th><td>$EcomConfig.PostalCodeURL</td></tr>
	<tr><th scope="row">Postal Code Label (&#36;EcomConfig.PostalCodeLabel):</th><td>$EcomConfig.PostalCodeLabel</td></tr>
	<tr><th scope="row">Currency (&#36;EcomConfig.Currency):</th><td>$EcomConfig.Currency</td></tr>
	<tr><th scope="row">Account Page Link (&#36;EcomConfig.AccountPageLink):</th><td>$EcomConfig.AccountPageLink</td></tr>
	<tr><th scope="row">Checkout Page Link (&#36;EcomConfig.CheckoutLink):</th><td>$EcomConfig.CheckoutLink</td></tr>
	<tr><th scope="row">Cart Page Link (&#36;EcomConfig.CartPageLink):</th><td>$EcomConfig.CartPageLink</td></tr>
	<tr><th scope="row">Order Confirmation Page Link (&#36;EcomConfig.OrderConfirmationPageLink):</th><td>$EcomConfig.OrderConfirmationPageLink</td></tr>
	<tr><th scope="row">Default Image Link (you can also use &#36;DefaultImage.SetWidth(100) and that sort of jazz) (&#36;EcomConfig.DefaultImageLink):</th><td>$EcomConfig.DefaultImageLink</td></tr>


	<li>
		<strong>Is E-commerce Page:?</strong>
		<% if IsEcommercePage %>YES<% else %>NO<% end_if %>
		This will be TRUE (say YES) for the Product and Checkout type pages only.
	</td></tr>
</table>

<h2>Ajax Definitions</h2>
<p>
	Ajax definitions are used to add IDs and Classes to tags so that when the cart update they can update at the same time.
	An example would be a div with an ID like "number_of_items".
	The content of this div would automatically change when the number of items in the cart is updated.
	NOTE: many of these ajax definitions are meant to be used within the <em>control</em> (context) of an order, order item, or order modifier.
</p>
<h5>without context</h5>
<table>
	<tr><th scope="row">&#36;AJAXDefinitions.SideBarCartID</th><td>$AJAXDefinitions.SideBarCartID</td></tr>
	<tr><th scope="row">&#36;AJAXDefinitions.SmallCartID</th><td>$AJAXDefinitions.SmallCartID</td></tr>
	<tr><th scope="row">&#36;AJAXDefinitions.TinyCartClassName</th><td>$AJAXDefinitions.TinyCartClassName</td></tr>
	<tr><th scope="row">&#36;AJAXDefinitions.TotalItemsClassName</th><td>$AJAXDefinitions.TotalItemsClassName</td></tr>
</table>
<h5>without context, country and region related</h5>
<table>
	<tr><th scope="row">&#36;AJAXDefinitions.ExpectedCountryClassName</th><td>$AJAXDefinitions.ExpectedCountryClassName</td></tr>
	<tr><th scope="row">&#36;AJAXDefinitions.CountryFieldID</th><td>$AJAXDefinitions.CountryFieldID</td></tr>
	<tr><th scope="row">&#36;AJAXDefinitions.RegionFieldID</th><td>$AJAXDefinitions.RegionFieldID</td></tr>
</table>
<h5>within context of order, order item or order modifier</h5>
<table>
	<tr><th scope="row">&#36;AJAXDefinitions.TableID</th><td>$AJAXDefinitions.TableID</td></tr>
	<tr><th scope="row">&#36;AJAXDefinitions.TableTotalID</th><td>$AJAXDefinitions.TableTotalID</td></tr>
</table>
<h5>within context of order</h5>
<table>
	<tr><th scope="row">&#36;AJAXDefinitions.TableMessageID</th><td>$AJAXDefinitions.TableMessageID</td></tr>
	<tr><th scope="row">&#36;AJAXDefinitions.TableSubTotalID</th><td>$AJAXDefinitions.TableSubTotalID</td></tr>
</table>
<h5>within context of order item or order modifier</h5>
<table>
	<tr><th scope="row">&#36;AJAXDefinitions.TableTitleID</th><td>$AJAXDefinitions.TableTitleID</td></tr>
	<tr><th scope="row">&#36;AJAXDefinitions.CartTitleID</th><td>$AJAXDefinitions.CartTitleID</td></tr>
	<tr><th scope="row">&#36;AJAXDefinitions.TableSubTitleID</th><td>$AJAXDefinitions.TableSubTitleID</td></tr>
	<tr><th scope="row">&#36;AJAXDefinitions.CartSubTitleID</th><td>$AJAXDefinitions.CartSubTitleID</td></tr>
	<tr><th scope="row">&#36;AJAXDefinitions.QuantityFieldName</th><td>$AJAXDefinitions.QuantityFieldName</td></tr>
</table>
<h5>within context of buyable</h5>
<table>
	<tr><th scope="row">&#36;AJAXDefinitions.UniqueIdentifier</th><td>$AJAXDefinitions.UniqueIdentifier</td></tr>
</table>

<h4>Ajax Shopping Cart</h4>
<p>
	To view an ajax response for a <a href="$SimpleCartLinkAjax">shopping cart - </a>
	This link can be used for
</p>

<h2>Product</h2>
<% control RandomProduct %>
<p>We have selected a random product for this: <strong>$MenuTitle</strong></p>
<h4>Image Controllers</h4>
<table>
	<tr><th scope="row">&#36;Image.Link</th><td>$Image.SetWidth(100) $Image.Link</td></tr>
	<tr><th scope="row">&#36;BestAvailableImage.Link</th><td>$BestAvailableImage.SetWidth(100) $BestAvailableImage.Link</td></tr>
	<tr><th scope="row">&#36;DefaultImage.Link</th><td>$DefaultImage.SetWidth(100) $DefaultImage.Link</td></tr>
	<tr><th scope="row">&#36;DummyImage.Link</th><td>$DummyImage.SetWidth(100) $DummyImage.Link</td></tr>
	<tr><th scope="row">&#36;DefaultImageLink.Link</th><td>$DefaultImageLink</td></tr>
</table>

<h4>Links</h4>
<table>
	<tr><th scope="row">&#36;AddVariationsLink</th><td><a href="$AddVariationsLink">$AddVariationsLink</a></td></tr>
	<tr><th scope="row">&#36;AddLink</th><td><a href="$AddLink">$AddLink</a></td></tr>
	<tr><th scope="row">&#36;IncrementLink</th><td><a href="$IncrementLink">$IncrementLink</a></td></tr>
	<tr><th scope="row">&#36;DecrementLink</th><td><a href="$DecrementLink">$DecrementLink</a></td></tr>
	<tr><th scope="row">&#36;RemoveLink</th><td><a href="$RemoveLink">$RemoveLink</a></td></tr>
	<tr><th scope="row">&#36;RemoveAllLink</th><td><a href="$RemoveAllLink">$RemoveAllLink</a></td></tr>
	<tr><th scope="row">&#36;RemoveAllAndEditLink</th><td><a href="$RemoveAllLink">$RemoveAllAndEditLink</a></td></tr>
	<tr><th scope="row">&#36;SetSpecificQuantityItemLink - adding eleven here</th><td><a href="$SetSpecificQuantityItemLink(11)">$SetSpecificQuantityItemLink(11)</a></td></tr>
</table>

<h4>Status and Price</h4>
<table>
	<tr><th scope="row">&#36;IsInCart</th><td><% if IsInCart %> YES <% else %>NO<% end_if %></td></tr>
	<tr><th scope="row">&#36;Price</th><td>$Price</td></tr>
	<tr><th scope="row">&#36;Price.Nice</th><td>$Price.Nice</td></tr>
	<tr><th scope="row">&#36;CalculatedPrice.Nice</th><td>$CalculatedPrice.Nice</td></tr>
	<tr><th scope="row">&#36;DisplayPrice.Nice</th><td>$DisplayPrice.Nice</td></tr>
</table>

<h4>Actions</h4>
<table>
	<tr><th scope="row">&#36;EcomQuantityField</th><td>$EcomQuantityField</td></tr>
</table>

<h4>Only Available on Product Page (through controller)</h4>
<table>
	<tr><th scope="row">&#36;AddProductForm</th><td>$AddProductForm</td></tr>
	<tr><th scope="row">&#36;PreviousProduct</th><td>$PreviousProduct</td></tr>
	<tr><th scope="row">&#36;NextProduct</th><td>$NextProduct</td></tr>
</table>

<% end_control %>

</div>