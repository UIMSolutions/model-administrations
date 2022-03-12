module models.administrations.entities.cases.detail;

@safe:
import models.administrations;

class DADMCaseDetailBase : DOOPEntity {
  mixin(OOPEntityThis!("ADMCaseDetailBase"));

  override void initialize() {
    super.initialize;

    this
      .addAttributes([
        "answerId": OOPAttributeUUID.descriptions(["en":""]),
        "billingProjectId": OOPAttributeUUID.descriptions(["en":""]),
        "caseCategoryHierarchyDetail": OOPAttributeString.descriptions(["en":""]),
        "caseId": OOPAttributeUUID.descriptions(["en":""]),
        "caseStatus": OOPAttributeString.descriptions(["en":""]),
        "categoryId": OOPAttributeUUID.descriptions(["en":""]),
        "categoryType": OOPAttributeString.descriptions(["en":""]),
        "closedBy":OOPAttributeUserId.descriptions(["en":""]),
        "closedDateAndTime": OOPAttributeString.descriptions(["en":""]),
        "compliance": OOPAttributeString.descriptions(["en":""]),
        "caseCreatedDateAndTime": OOPAttributeString.descriptions(["en":""]),
        "contactId": OOPAttributeUUID.descriptions(["en":""]),
        "department": OOPAttributeString.descriptions(["en":""]),
        "dirParty": OOPAttributeString.descriptions(["en":""]),
        "employeeResponsibleName": OOPAttributeString.descriptions(["en":""]),
        "employeeResponsiblePersonnelNumber": OOPAttributeString.descriptions(["en":""]),
        "fmlAApproved": OOPAttributeString.descriptions(["en":""]),
        "fmlAApprovedBy":OOPAttributeUserId.descriptions(["en":""]),
        "fmlAApprovedHours": OOPAttributeString.descriptions(["en":""]),
        "fmlAEstimatedLeaveEndDate": OOPAttributeString.descriptions(["en":""]),
        "fmlAHoursWorked": OOPAttributeString.descriptions(["en":""]),
        "fmlALeaveReason": OOPAttributeString.descriptions(["en":""]),
        "fmlALeaveRequestDate": OOPAttributeString.descriptions(["en":""]),
        "fmlALeaveSchedule": OOPAttributeString.descriptions(["en":""]),
        "fmlALeaveStartDate": OOPAttributeString.descriptions(["en":""]),
        "fmlALengthOfEmployment": OOPAttributeString.descriptions(["en":""]),
        "fmlAMaintainHoursManually": OOPAttributeString.descriptions(["en":""]),
        "fmlAMilitaryHoursAvailable": OOPAttributeString.descriptions(["en":""]),
        "fmlAStandardHoursAvailable": OOPAttributeString.descriptions(["en":""]),
        "hcmWorker": OOPAttributeString.descriptions(["en":""]),
        "instanceRelationType": OOPAttributeString.descriptions(["en":""]),
        "notes": OOPAttributeString.descriptions(["en":""]),
        "departmentNumber": OOPAttributeString.descriptions(["en":""]),
        "partyNumber": OOPAttributeString.descriptions(["en":""]),
        "plannedEffectiveDate": OOPAttributeString.descriptions(["en":""]),
        "priority": OOPAttributeString.descriptions(["en":""]),
        "processId": OOPAttributeUUID.descriptions(["en":""]),
        "questionnaireId": OOPAttributeUUID.descriptions(["en":""]),
        "resolution": OOPAttributeString.descriptions(["en":""]),
        "serviceStageId": OOPAttributeUUID.descriptions(["en":""]),
        "serviceLevelAgreementId": OOPAttributeUUID.descriptions(["en":""]),
        "serviceLevelAgreementStatus": OOPAttributeString.descriptions(["en":""]),
        "serviceLevelCompletionDate": OOPAttributeString.descriptions(["en":""]),
        "emailId": OOPAttributeUUID.descriptions(["en":""]),
        "relationship_DirPartyBaseEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "relationship_ProjectEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "relationship_smmContactPersonEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "relationship_OMOperatingUnitEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "relationship_HcmWorkerEntityRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
        "relationship_PrimaryCompanyContextRelationshipId": OOPAttributeUUID.descriptions(["en":""]),
      ])
      .registerPath("admin_casedetailbases");
  }
}
mixin(OOPEntityCalls!("ADMCaseDetailBase"));

unittest {
  version(uim_entities) {
    assert(ADMCaseDetailBase);

  auto entity = ADMCaseDetailBase;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}