{if isset($list) && $list}
    <p class="qlo-section-title">Extra Demands Details</p>
    <table class="qlo-table qlo-stack-table" cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th>{l s='Room Type'}</th>
                <th>{l s='Name'}</th>
                <th>{l s='Total'} {l s='(Tax Excl.)'}</th>
            </tr>
        </thead>
        <tbody>
            {foreach from=$list key=data_k item=data_v}
                {foreach from=$data_v['date_diff'] key=rm_k item=rm_v}
                    {if isset($rm_v['extra_demands']) && $rm_v['extra_demands']}
                        {assign var=roomCount value=1}
                        {foreach $rm_v['extra_demands'] as $roomDemand}
                            {foreach name=demandRow from=$roomDemand['extra_demands'] item=demand}
                                {if !isset($room_demand_exists)}
                                    {assign var=room_demand_exists value=1}
                                {/if}
                                <tr>
                                    {if $smarty.foreach.demandRow.first}
                                        <td rowspan="{$roomDemand['extra_demands']|count}">
                                            {$data_v['name']}<br>
                                            {$rm_v['data_form']|date_format:"%d-%m-%Y"} {l s='to'} {$rm_v['data_to']|date_format:"%d-%m-%Y"}<br>
                                            <strong>{l s='Room'} - {$roomCount}</strong>
                                        </td>
                                    {/if}
                                    <td>{$demand['name']}</td>
                                    <td>{convertPrice price=$demand['total_price_tax_excl']}</td>
                                </tr>
                            {/foreach}
                            {assign var=roomCount value=$roomCount+1}
                        {/foreach}
                    {/if}
                {/foreach}
            {/foreach}
            {if !isset($room_demand_exists)}
                <tr>
                    <td colspan="3" class="qlo-table-empty">No Facilities Requested</td>
                </tr>
            {/if}
        </tbody>
    </table>

    <p class="qlo-section-title">Additional Services Details</p>
    <table class="qlo-table qlo-stack-table" cellpadding="0" cellspacing="0">
        <thead>
            <tr>
                <th>{l s='Room Type'}</th>
                <th>{l s='Name'}</th>
                <th>{l s='Qty'}</th>
                <th>{l s='Total'} {l s='(Tax Excl.)'}</th>
            </tr>
        </thead>
        <tbody>
            {foreach from=$list key=data_k item=data_v}
                {foreach from=$data_v['date_diff'] key=rm_k item=rm_v}
                    {if isset($rm_v['additional_services']) && $rm_v['additional_services']}
                        {assign var=roomCount value=1}
                        {foreach $rm_v['additional_services'] as $roomService}
                            {foreach name=serviceRow from=$roomService['additional_services'] item=service}
                                {if !isset($room_additinal_services_exists)}
                                    {assign var=room_additinal_services_exists value=1}
                                {/if}
                                <tr>
                                    {if $smarty.foreach.serviceRow.first}
                                        <td rowspan="{$roomService['additional_services']|count}">
                                            {$data_v['name']}<br>
                                            {$rm_v['data_form']|date_format:"%d-%m-%Y"} {l s='to'} {$rm_v['data_to']|date_format:"%d-%m-%Y"}<br>
                                            <strong>{l s='Room'} - {$roomCount}</strong>
                                        </td>
                                    {/if}
                                    <td>{$service['name']}</td>
                                    <td>
                                        {if $service['allow_multiple_quantity']}
                                            {$service['quantity']}
                                        {else}
                                            {l s='--'}
                                        {/if}
                                    </td>
                                    <td>{convertPrice price=$service['total_price_tax_excl']}</td>
                                </tr>
                            {/foreach}
                            {assign var=roomCount value=$roomCount+1}
                        {/foreach}
                    {/if}
                {/foreach}
            {/foreach}
            {if !isset($room_additinal_services_exists)}
                <tr>
                    <td colspan="4" class="qlo-table-empty">No Services Requested</td>
                </tr>
            {/if}
        </tbody>
    </table>
{/if}
