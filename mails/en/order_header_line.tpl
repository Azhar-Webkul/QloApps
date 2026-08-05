{if isset($list['for_admin']) && $list['for_admin']}
    {if isset($list['hotel_name']) && $list['hotel_name']}
        {if isset($list['has_room_bookings']) && $list['has_room_bookings']}
            {l s='New booking received for'} <strong>{$list['hotel_name']}</strong>!
        {else}
            {l s='New order received for'} <strong>{$list['hotel_name']}</strong>!
        {/if}
    {else}
        {l s='New order received'}!
    {/if}
{else}
    {if isset($list['hotel_name']) && $list['hotel_name']}
        {if isset($list['has_room_bookings']) && $list['has_room_bookings']}
            {l s='Thank you for booking with'} <strong>{$list['hotel_name']}</strong>!
        {else}
            {l s='Thank you for your order with'} <strong>{$list['hotel_name']}</strong>!
        {/if}
    {else}
        {l s='Thank you for your order'}!
    {/if}
{/if}