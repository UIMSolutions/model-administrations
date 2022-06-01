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

version(test_model_administrations) {
  unittest {
    assert(BatchServerScheduleEntity);

    auto entity = BatchServerScheduleEntity;
  }
}