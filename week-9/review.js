var list = {};
function addItem(itemName, itemQuantity, list) {
  list.itemName = itemName;
  list[itemName] = itemQuantity;
}