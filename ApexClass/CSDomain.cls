public with sharing class {{ api_name }} extends Domain {
	
	public {{ api_name }}(List<{{ object_name }}> records) {
		super(records);
	}

	public override void init(List<SObject> records) {
		super.init(records);

		// Override CRUD/FLS/Sharing enforcement here
		//this.enforceCRUD 	= false;
		//this.enforceFLS 	= false;
		//this.enforceShr 	= false;
	}

	public override void onApplyDefaults() {
		for ({{ object_name }} rec : (List<{{ object_name }}>)this.records) {}
	}
	public override void onValidate() {}
	
	public override void onBeforeInsert() {}
	public override void onBeforeUpdate(Map<Id,SObject> oldMap) {}
	public override void onBeforeDelete() {}
	
	public override void onAfterInsert() {}
	public override void onAfterUpdate(Map<Id,SObject> oldMap) {}
	public override void onAfterDelete() {}
	public override void onAfterUndelete() {}
}
