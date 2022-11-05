@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Purchase Header'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZSMI_PurchaseHeader as select from zsm_poheader_db {
    key po_order as PoOrder,
    po_desc as PoDesc,
    po_type as PoType,
    comp_code as CompCode,
    po_org as PoOrg,
    po_status as PoStatus,
    supplier as Supplier,
    imageurl as Imageurl,
    create_by as CreateBy,
    created_date_time as CreatedDateTime,
    changed_date_time as ChangedDateTime,
    local_last_changed_by as LocalLastChangedBy,
    last_changed_at as LastChangedAt
}
