<!DOCTYPE html>
<html>
<head>
  <title>Add Products</title>
</head>
<body>
  <h2>Product Entry Form</h2>
    <form>
        <label for="productName">Product Name:</label>
        <input type="text" id="productName" name="productName" required><br>

        <label for="productPrice">Price:</label>
        <input type="number" id="productPrice" name="productPrice" required><br>

        <label for="productQuantity">Quantity:</label>
        <input type="number" id="productQuantity" name="productQuantity" required><br>

        <input type="submit" id="productForm" value="Add Product">
    </form>

    <table id="productTable" border="1">
        <tr>
            <th>Product Name</th>
            <th>Price</th>
            <th>Quantity</th>
        </tr>
    </table>
	
  <script>
    document.getElementById("productForm").onclick = function (e) {
    e.preventDefault();
		const productName = document.getElementById("productName").value;
		const productPrice = document.getElementById("productPrice").value;
		const productQuantity = document.getElementById("productQuantity").value;

		const table = document.getElementById("productTable");
		const newRow = table.insertRow(-1);
		const cell1 = newRow.insertCell(0);
		const cell2 = newRow.insertCell(1);
		const cell3 = newRow.insertCell(2);
		cell1.innerHTML = productName;
		cell2.innerHTML = productPrice;
		cell3.innerHTML = productQuantity;

		document.getElementById("productForm").reset();
    };
  </script>
</body>
</html>