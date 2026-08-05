{if isset($list) && $list}
    <p class="qlo-section-title">Room Booking Details</p>
    <table class="qlo-table qlo-stack-table" cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th>{l s="Room Image"}</th>
                <th>{l s="Room Description"}</th>
                <th>{l s="Hotel"}</th>
                <th>{l s="Room Capacity"}</th>
                <th>{l s="Unit Price"}</th>
                <th>{l s="Qty"}</th>
                <th>{l s="Check-In"}</th>
                <th>{l s="Check-Out"}</th>
                <th>{l s="Total"}</th>
            </tr>
        </thead>
        <tbody>
        {foreach from=$list key=data_k item=data_v}
            {foreach from=$data_v['date_diff'] key=rm_k item=rm_v}
                <tr>
                    <td>
                        <img src="{$data_v['cover_img']}" alt="{$data_v['name']}" />
                    </td>
                    <td>
                        {$data_v['name']}
                    </td>
                    <td>
                        {$data_v['hotel_name']}
                    </td>
                    <td>
                        {$rm_v['adults']} {l s='Adults'}, {$rm_v['children']} {l s='Children'}
                    </td>
                    <td>
                        {convertPrice price=$rm_v['avg_paid_unit_price_tax_excl']}
                    </td>
                    <td>
                        {$rm_v['num_rm']}
                    </td>
                    <td>
                        {if !isset($show_full_date)}{assign var="show_full_date" value=0}{/if}
                        {assign var="is_full_date" value=($show_full_date && ($rm_v['data_form']|date_format:'%D' == $rm_v['data_to']|date_format:'%D'))}
                        {$rm_v['data_form']|date_format:"%d-%b-%G"}{if $is_full_date} {$rm_v['data_form']|date_format:"%I:%M %p"}{/if}
                    </td>
                    <td>
                        {$rm_v['data_to']|date_format:"%d-%b-%G"}{if $is_full_date} {$rm_v['data_to']|date_format:"%I:%M %p"}{/if}
                    </td>
                    <td>
                        {convertPrice price=$rm_v['amount_tax_excl']}
                    </td>
                </tr>
            {/foreach}
        {/foreach}
        </tbody>
    </table>
{/if}
