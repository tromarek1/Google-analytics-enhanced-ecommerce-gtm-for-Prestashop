    public function displayOrderConfirmation($order)
    {
              $order = new Order($this->id_order);
              $cart = new Cart($order->id_cart);
              $productos = $cart->getProducts();
              $this->context->smarty->assign(array(
                    'id_pedido'=> $this->id_order,
                    'total_a_pagar'=> $order->total_paid_tax_incl,
                    'gastos_envio'=> $order->total_shipping_tax_excl,
                    'impuestos'=> ($order->carrier_tax_rate/100) + 1,
                    'cupones' => $cupones,
                    'productos' => $productos
                    ));
        return Hook::exec('displayOrderConfirmation', ['order' => $order]);
    }
