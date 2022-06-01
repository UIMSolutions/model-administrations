module models.administrations.entities.cityholiday;

@safe:
import models.administrations;

class DCityHolidayEntity : DOOPEntity {
  mixin(EntityThis!("CityHolidayEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "city": StringAttribute, //
        "countryRegionId": StringAttribute, //
        "stateId": StringAttribute, //
        "cityName": StringAttribute, //
        "holidayDate": StringAttribute, //
        "description": StringAttribute, //
        "backingTable_CityHolidayRelationshipId": StringAttribute, //
      ])
      .registerPath("administration_cityholidays");
  }
}
mixin(EntityCalls!("CityHolidayEntity"));

version(test_model_administrations) {
  unittest {
    assert(CityHolidayEntity);
  
    auto entity = CityHolidayEntity;
  }
}