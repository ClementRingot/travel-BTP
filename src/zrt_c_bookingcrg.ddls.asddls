@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Booking'
@Metadata.allowExtensions: true
define view entity ZRT_C_Bookingcrg
  as projection on ZRT_R_Bookingcrg
{
  key BookingUUID,
      TravelUUID,
      BookingID,
      BookingDate,
      CarrierID,
      ConnectionID,
      FlightDate,
      FlightPrice,
      CurrencyCode,
      BookingStatus,
      LocalLastChangedAt,

      _Travel : redirected to parent ZRT_C_Travelcrg
}
