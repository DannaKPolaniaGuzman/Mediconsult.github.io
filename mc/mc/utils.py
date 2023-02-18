from appmc.models import Cart


def get_or_create_cart(request):
    user = request.user if request.user.is_authenticated else None
    # none en caso que la llave no exista
    cart_id = request.session.get('cart_id')
    cart = Cart.objects.filter(cart_id=cart_id).first()  # [] - > None

    if cart is None:
        cart = Cart.objects.create(user=user)

    if user and cart.user is None:  # el carrito existe pero no posee un usuario
        cart.user = user
        cart.save()

    request.session['cart_id'] = cart.cart_id

    return cart
