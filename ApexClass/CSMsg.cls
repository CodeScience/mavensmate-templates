public with sharing class {{ api_name }} extends Msg {
	public String field

	public {{ api_name }}() {}

	public {{ api_name }}({{ object_name }} o) {
		super(o);
	}

	public virtual override void init(SObject rec) {
		super.init(rec);

		{{ object_name }} oRec = ({{ object_name }})rec;
		this.field = oRec.Field__c;
	}

	public override SObject toRecord() {
		{{ object_name }} t 		= ({{ object_name }})super.toRecord();
		t.Field__c 					= this.field;
		
		return t;
	}

	public override SObjectType getType() {
		return Schema.{{ object_name }}.SObjectType;
	}
}
