@EndUserText.label: 'Projection view of items'
@AccessControl.authorizationCheck: #NOT_REQUIRED
define view entity ZSMc_POITEMS_DB 
provider contract transactional_interface 
as projection on zsmi_POITEMS_DB 

{
    key PoOrder,
    key PoItem,
    ShortText,
    Material,
    Plant,
    MatGroup,
    OrderQunt,
    OrderUnit,
    ProductPrice,
    PriceUnit,
    LocalLastChangedBy,
    LocalLastChangedAt,
    /* Associations */
    _POHeader
}
