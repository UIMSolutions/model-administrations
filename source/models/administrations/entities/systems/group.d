module models.administrations.entities.systems.group;

@safe:
import models.administrations;

// Active Directory Security groups
class DSystemGroupEntity : DOOPEntity {
  mixin(EntityThis!("SystemGroupEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "userId": StringAttribute, //
        "name": StringAttribute, //
        "objectID": StringAttribute, //
        "enabled": StringAttribute, //
        "company": StringAttribute, //
        "language": StringAttribute, //
        "preferredTimeZone": StringAttribute, //
        "preferredCalendar": StringAttribute, //
      ])
      .registerPath("administration_systems.groups");
  }
}
mixin(EntityCalls!("SystemGroupEntity"));

version(test_model_administrations) {
  unittest {
    assert(SystemGroupEntity);
  
    auto entity = SystemGroupEntity;
  }
}