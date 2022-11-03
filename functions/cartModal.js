function constructTable(selector) {
  const addedProducts = sessionStorage.getItem("x-user-cart");
  const list = JSON.parse(addedProducts);
  console.log("cart data ---->", list);

  myObj = list;
  text = `<table style="width: 100%">`;
  let totalAmount = 0;
  for (x in myObj) {
    totalAmount += Number(myObj[x].price);
    text +=
      `<tr style="width: 100%"><td style="display:flex;width: 100%;margin-top:10px;justify-content:start;">` +
      `<img src="${myObj[x].image}" alt="product" height="120" width="80"/>` +
      `<div style="margin: 20px;">${myObj[x].title}<div/>` +
      `<p style="font-weight: bold;">${myObj[x].price} INR</p>` +
      `<p style="font-weight: bold;">Qty: 1 </p>` +
      "</td></tr>";
  }
  text += "</table>";
  document.getElementById("totalAmount").innerHTML = `${totalAmount} INR`;
  document.getElementById("totalAmount2").innerHTML = `${totalAmount} INR`;
  document.getElementById("list-puntate").innerHTML = text;
  document.getElementById(
    "cartCheckoutButton"
  ).innerHTML = `Pay Now ${totalAmount} INR`;
}

{
  /* <ul class="list-group">
  <li class="list-group-item">First item</li>
  <li class="list-group-item">Second item</li>
  <li class="list-group-item">Third item</li>
</ul>; */
}

function Headers(list, selector) {
  var columns = [];
  var header = $("<tr/>");

  for (var i = 0; i < list.length; i++) {
    var row = list[i];

    for (var k in row) {
      if ($.inArray(k, columns) == -1) {
        columns.push(k);

        // Creating the header
        header.append($("<th/>").html(k));
      }
    }
  }

  // Appending the header to the table
  $(selector).append(header);
  //   columns.push("action");
  return columns;
}
