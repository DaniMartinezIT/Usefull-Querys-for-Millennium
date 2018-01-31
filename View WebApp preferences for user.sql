select ap.prsnl_id, ap.position_cd, nvp.*
from prsnl p
, app_prefs ap
, name_value_prefs nvp
plan p where p.username = "USERNAME"
join ap where ((ap.prsnl_id = 0 and ap.position_cd = 0)
or (ap.prsnl_id = 0 and ap.position_cd = p.position_cd)
or (ap.prsnl_id = p.person_id and ap.position_cd = 0))
join nvp where nvp.parent_entity_id = ap.app_prefs_id
and nvp.parent_entity_name = "APP_PREFS"
and nvp.pvc_name = "WEBAPP_*"
