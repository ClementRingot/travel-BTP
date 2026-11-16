@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Travel'
@Metadata.allowExtensions: true
@Search.searchable: true
define root view entity ZRT_C_Travelcrg
  provider contract transactional_query
  as projection on ZRT_R_Travelcrg
{
  key TravelUUID,
      @Search.defaultSearchElement: true
      TravelID,
      AgencyID,
      CustomerID,
      BeginDate,
      EndDate,
      BookingFee,
      TotalPrice,
      @Consumption.valueHelpDefinition: [{ entity: { name: 'I_Currency', element: 'Currency' } }]
      CurrencyCode,
      @Search.defaultSearchElement: true
      Description,
      OverallStatus,
      CreatedBy,
      CreatedAt,
      LastChangedBy,
      LastChangedAt,
      LocalLastChangedAt,

      _Booking : redirected to composition child ZRT_C_Bookingcrg
}
