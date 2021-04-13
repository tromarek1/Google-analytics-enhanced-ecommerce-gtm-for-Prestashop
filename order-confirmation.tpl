
{literal}
<script>
var dataLayer  = window.dataLayer || [];
dataLayer.push({
  'event': 'transaction',
  'ecommerce': {
      'purchase': {
      'actionField': {
        'id': '{/literal}{$id_pedido}{literal}',                       
        'affiliation': '',
        'revenue': '{/literal}{$total_a_pagar}{literal}',                    
        'tax':'{/literal}{$impuestos}{literal}',
        'shipping': '{/literal}{$gastos_envio}{literal}',
        'coupon': ''
      },
      'products': [{/literal}{foreach from=$productos item=producto name=productos}{literal}
        {                           
        'name': '{/literal}{$producto.name}{literal}',    
        'id': '{/literal}{$producto.id_product}{literal}',
        'price': '{/literal}{$producto.price_wt}{literal}',
        'brand': '',
        'category': '',
        'variant': '',
        'quantity': {/literal}{$producto.quantity}{literal},
        'coupon': ''                            
           }{/literal}{if $smarty.foreach.productos.iteration != $productos|@count}{literal},{/literal}{/if}{literal}
        {/literal}{/foreach}]{literal}
    }
  }
});

</script>


{/literal}
