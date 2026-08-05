{if isset($list['for_admin']) && $list['for_admin']}
    {if isset($list['hotel_name']) && $list['hotel_name']}
        {if isset($list['has_room_bookings']) && $list['has_room_bookings']}
            {l s='New booking received for'} {$list['hotel_name']}!
        {else}
            {l s='New order received for'} {$list['hotel_name']}!
        {/if}
    {else}
        {l s='New order received'}!
    {/if}
{else}
    {if isset($list['hotel_name']) && $list['hotel_name']}
        {if isset($list['has_room_bookings']) && $list['has_room_bookings']}
            {l s='Thank you for booking with'} {$list['hotel_name']}!
        {else}
            {l s='Thank you for your order with'} {$list['hotel_name']}!
        {/if}
    {else}
        {l s='Thank you for your order'}!
    {/if}
{/if}