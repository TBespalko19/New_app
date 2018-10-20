function something()
{
	var x = window.localStorage.getItem('bbb') // x = hh['bb']

	x = x * 1 + 1 // x = x + 1

	window.localStorage.setItem('bbb', x ) // hh['bbb'] = x

	alert(x);
}


function add_to_cart(id)
{
	var key = 'product' + id
	// alert('You added pizza with id: + id');
	var x = window.localStorage.getItem(key);
	x = x * 1 + 1;
	window.localStorage.setItem(key, x);
}
