package hera.store.unit;

import hera.database.entities.GlobalSetting;
import hera.database.types.GlobalSettingKey;

import java.util.Collections;
import java.util.List;

public class GlobalSettingAccessUnit extends StorageAccessUnit<GlobalSetting>{

	public GlobalSettingAccessUnit() {
		super(GlobalSetting.class);
	}

	public List<GlobalSetting> forKey(GlobalSettingKey key) {
		return get(Collections.singletonMap("key", key));
	}
}
