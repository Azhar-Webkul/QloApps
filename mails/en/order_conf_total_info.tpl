<table class="qlo-stack-table" cellpadding="0" cellspacing="0" width="300" align="right">
    {if isset($list['has_room_bookings']) && $list['has_room_bookings']}
        <tr>
            <td class="qlo-line-label">{l s="Total Rooms Cost"}</td>
            <td class="qlo-line-value">{$list['room_price_tax_excl']}</td>
        </tr>
    {/if}
    {if isset($list['has_standalone_products']) && $list['has_standalone_products']}
        <tr>
            <td class="qlo-line-label">{l s="Total Products Cost"}</td>
            <td class="qlo-line-value">{$list['service_products_price_tax_excl']}</td>
        </tr>
    {/if}
    {if isset($list['has_room_bookings']) && $list['has_room_bookings']}
        <tr>
            <td class="qlo-line-label">{l s="Extra Services Cost"}</td>
            <td class="qlo-line-value">{$list['additional_service_price_tax_excl']}</td>
        </tr>
    {/if}
    <tr>
        <td class="qlo-line-label">{l s="Discounts"}</td>
        <td class="qlo-line-value">{$list['total_discounts']}</td>
    </tr>
    {if isset($list['has_room_bookings']) && $list['has_room_bookings']}
        <tr>
            <td class="qlo-line-label">{l s="Total Convenience Fees"}</td>
            <td class="qlo-line-value">{$list['total_convenience_fee_te']}</td>
        </tr>
    {/if}
    <tr>
        <td class="qlo-line-label">{l s="Total Tax"}</td>
        <td class="qlo-line-value">{$list['total_order_tax']}</td>
    </tr>
    <tr>
        <td class="qlo-line-final-label">{l s="Final Booking Amount"}</td>
        <td class="qlo-line-final-value">{$list['total_paid']}</td>
    </tr>
</table>
