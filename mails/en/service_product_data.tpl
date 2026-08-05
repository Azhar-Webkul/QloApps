{if isset($list) && $list}
    <p class="qlo-section-title">Service Products Detail</p>
    <table class="qlo-table qlo-stack-table" cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th>{l s='Image'}</th>
                <th>{l s='Name'}</th>
                <th>{l s='Unit Price'}</th>
                <th>{l s='Qty'}</th>
                <th>{l s='Total'}</th>
            </tr>
        </thead>
        <tbody>
            {foreach from=$list key=key item=product}
                <tr>
                    <td>
                        <img src="{$product['cover_img']}" alt="{$product['name']}" />
                    </td>
                    <td>
                        {$product['name']}{if isset($product['option_name']) && $product['option_name']} : {$product['option_name']}{/if}
                    </td>
                    <td>
                        {convertPrice price=$product['unit_price_tax_excl']}
                    </td>
                    <td>
                        {$product['quantity']}
                    </td>
                    <td>
                        {convertPrice price=$product['total_price_tax_excl']}
                    </td>
                </tr>
            {/foreach}
        </tbody>
    </table>
{/if}
