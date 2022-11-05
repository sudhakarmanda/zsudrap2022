@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchase Items'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZSMI_PurchaseItems as select from zsm_poitems_db {
    key po_order as PoOrder,
    key po_item as PoItem,
    short_text as ShortText,
    material as Material,
    plant as Plant,
    mat_group as MatGroup,
    @Semantics.quantity.unitOfMeasure: 'OrderUnit'
    order_qunt as OrderQunt,
//    @Semantics.unitOfMeasure: true
    order_unit as OrderUnit,
    @Semantics.amount.currencyCode: 'PriceUnit'
    product_price as ProductPrice,
//    @Semantics.currencyCode: true
    price_unit as PriceUnit,
    local_last_changed_by as LocalLastChangedBy,
    local_last_changed_at as LocalLastChangedAt
}
