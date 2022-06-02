module models.administrations.entities.dirpartycds;

@safe:
import models.administrations;

class DDirPartyCDSEntity : DOOPEntity {
  mixin(EntityThis!("DirPartyCDSEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "partyNumber": StringAttribute, //
        "partyType": StringAttribute, //
        "nameAlias": StringAttribute, //
        "knownAs": StringAttribute, //
        "languageId": StringAttribute, //
        "addressBooks": StringAttribute, //
        "organizationName": StringAttribute, //
        "organizationABCCode": StringAttribute, //
        "organizationNumOfEmployees": StringAttribute, //
        "organizationNumber": StringAttribute, //
        "organizationPhoneticName": StringAttribute, //
        "personFirstName": StringAttribute, //
        "personMiddleName": StringAttribute, //
        "personLastNamePrefix": StringAttribute, //
        "personLastName": StringAttribute, //
        "personInitials": StringAttribute, //
        "personPersonalSuffix": StringAttribute, //
        "personPersonalTitle": StringAttribute, //
        "personProfessionalTitle": StringAttribute, //
        "personProfessionalSuffix": StringAttribute, //
        "personPhoneticFirstName": StringAttribute, //
        "personPhoneticMiddleName": StringAttribute, //
        "personPhoneticLastName": StringAttribute, //
        "personGender": StringAttribute, //
        "personMaritalStatus": StringAttribute, //
        "personHobbies": StringAttribute, //
        "personChildrenNames": StringAttribute, //
        "personAnniversaryDay": StringAttribute, //
        "personAnniversaryMonth": StringAttribute, //
        "personAnniversaryYear": StringAttribute, //
        "personBirthDay": StringAttribute, //
        "personBirthMonth": StringAttribute, //
        "personBirthYear": StringAttribute, //
        "dirPersonNameRecId": StringAttribute, //
        "backingTable_DirPartyBaseEntityRelationshipId": StringAttribute, //
      ])
      .registerPath("administration_dirpartycds");
  }
}
mixin(EntityCalls!("DirPartyCDSEntity"));

version(test_model_administrations) {
  unittest {
    assert(DirPartyCDSEntity);

    auto entity = DirPartyCDSEntity;
    // TODO more tests
  }
}