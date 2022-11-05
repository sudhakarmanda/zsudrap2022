@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'PO Items  Base view'
define view entity zsmi_POITEMS_DB as select from zsm_poitems_db
association to parent zsmi_POHEADER_DB as _POHeader
    on $projection.PoOrder = _POHeader.PoOrder {
    key po_order as PoOrder,
    key po_item as PoItem,
    short_text as ShortText,
    material as Material,
    plant as Plant,
    mat_group as MatGroup,
    order_qunt as OrderQunt,
    order_unit as OrderUnit,
    product_price as ProductPrice,
    price_unit as PriceUnit,
    local_last_changed_by as LocalLastChangedBy,
    local_last_changed_at as LocalLastChangedAt,
    _POHeader // Make association public
}
