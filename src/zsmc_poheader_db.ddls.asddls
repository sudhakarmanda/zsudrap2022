@EndUserText.label: 'Projection view of header'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define root view entity ZSMc_POHEADER_DB 
provider contract transactional_interface 
as projection on zsmi_POHEADER_DB  {
    key PoOrder,
    PoDesc,
    PoType,
    CompCode,
    PoOrg,
    PoStatus,
    Supplier,
    Imageurl,
    CreateBy,
    CreatedDateTime,
    ChangedDateTime,
    LocalLastChangedBy,
    LastChangedAt,
    /* Associations */
    _POItems
}
