module models.administrations.entities.batch.server_schedule;

@safe:
import models.administrations;

class DADMBatchServerSchedule : DOOPEntity {
  mixin(EntityThis!("ADMBatchServerSchedule"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "EndTime": StringAttributeClass, // 
        "MaximumBatchThreads": StringAttributeClass, // 
        "AOSInstanceName": StringAttributeClass, // 
        "StartTime": StringAttributeClass, // 
        "backingTable_BatchServerConfigRelationshipId": UUIDAttributeClass, // 
      ])
      .registerPath("admin_batchserverschedules");
  }
}
mixin(EntityCalls!("ADMBatchServerSchedule"));

version(test_library) {
  unittest {
    assert(APLFeedback);
    assert(ADMBatchServerSchedule);

  auto entity = ADMBatchServerSchedule;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}