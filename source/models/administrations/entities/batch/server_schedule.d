module models.administrations.entities.batch.server_schedule;

@safe:
import models.administrations;

class DBatchServerScheduleEntity : DOOPEntity {
  mixin(EntityThis!("BatchServerScheduleEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "endTime": StringAttribute, // 
        "maximumBatchThreads": StringAttribute, // 
        "aosInstanceName": StringAttribute, // 
        "startTime": StringAttribute, // 
        "backingTable_BatchServerConfigRelationshipId": UUIDAttribute, // 
      ])
      .registerPath("administration_batchserverschedules");
  }
}
mixin(EntityCalls!("BatchServerScheduleEntity"));

version(test_library) {
  unittest {
    assert(BatchServerScheduleEntity);

  auto entity = BatchServerScheduleEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}