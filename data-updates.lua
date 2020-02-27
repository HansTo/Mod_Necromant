require("prototypes.updates.updates")
require("prototypes.updates.updates-corpses_necro")
require("prototypes.updates.updates-corpses_bobs")
require("prototypes.updates.updates-corpses_5dim")

if settings.startup["necro-setting-support-ne_enemies"].value == true then
	require("prototypes.updates.updates-corpses_nee")
end

require("prototypes.updates.updates-technology")
