@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic view for header data'
define root view entity zsmi_POHEADER_DB as select from ZSM_POHEADER_DB
composition[*] of zsmi_POITEMS_DB as _POItems {
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
    last_changed_at as LastChangedAt,
    _POItems // Make association public
}
