module models.administrations.entities.datamanagements.executionjobs.detail;

@safe:
import models.administrations;

class DDataManagementExecutionJobDetailEntity : DOOPEntity {
  mixin(EntityThis!("DataManagementExecutionJobDetailEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "definitionGroupId": StringAttribute, //
        "entityName": StringAttribute, //
        "jobId": StringAttribute, //
        "stagingEndDateTime": StringAttribute, //
        "excelSheetName": StringAttribute, //
        "executeTargetStep": StringAttribute, //
        "firstRowIsHeader": StringAttribute, //
        "filePath": StringAttribute, //
        "ignoreError": StringAttribute, //
        "stagingRecordsToBeProcessedCount": StringAttribute, //
        "parallelTaskCount": StringAttribute, //
        "stagingRecordsCreatedCount": StringAttribute, //
        "targetRecordsCreatedCount": StringAttribute, //
        "targetRecordsUpdatedCount": StringAttribute, //
        "createErrorFile": StringAttribute, //
        "runBusinessLogic": StringAttribute, //
        "runBusinessValidation": StringAttribute, //
        "sequenceNumber": StringAttribute, //
        "numberOfRowsToSkip": StringAttribute, //
        "sourceFormat": StringAttribute, //
        "stagingStatus": StringAttribute, //
        "stagingStartDateTime": StringAttribute, //
        "targetStatus": StringAttribute, //
        "targetEndDateTime": StringAttribute, //
        "targetStartDateTime": StringAttribute, //
        "executionUnit": StringAttribute, //
        "levelInExecutionUnit": StringAttribute, //
        "sequenceInLevel": StringAttribute, //
        "failExecutionUnitOnError": StringAttribute, //
        "failLevelOnError": StringAttribute, //
        "relationship_ExecutionJobDetailsRelationshipId": StringAttribute, //
      ])
      .registerPath("administration_datamanagements.executionjobs");
  }
}
mixin(EntityCalls!("DataManagementExecutionJobDetailEntity"));

version(test_model_administrations) {
  unittest {
    assert(DataManagementExecutionJobDetailEntity);

    auto entity = DataManagementExecutionJobDetailEntity;
    // TODO more tests
  }
}