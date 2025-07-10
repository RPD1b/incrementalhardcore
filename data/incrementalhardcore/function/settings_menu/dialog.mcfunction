$dialog show @s {\
    "type": "minecraft:multi_action",\
    "external_title": ["INH Settings"],\
    "columns": 2,\
    "can_close_with_escape":false,\
    "title": ["Incremental Hardcore Settings"],\
    "inputs":[\
        {\
            "type": "minecraft:boolean",\
            "key": "DialogAllowHealing",\
            "label": ["Allow Healing "],\
            "initial": $(AllowHealing),\
            "on_true": "1",\
            "on_false": "0"\
        },\
        {\
            "type": "minecraft:boolean",\
            "key": "DialogAllowRevives",\
            "label": ["Allow Revives"],\
            "initial": $(AllowRevives),\
            "on_true": "1",\
            "on_false": "0"\
        },\
        {\
            "type": "minecraft:number_range",\
            "key": "DialogReviveHealth",\
            "label": ["Revive Health"],\
            "start": 2,\
            "end": 20,\
            "step": 2,\
            "initial": $(ReviveHealth),\
            "width": 90\
        },\
        {\
            "type": "minecraft:boolean",\
            "key": "DialogTotemEffect",\
            "label": ["Totem Effect"],\
            "initial": $(TotemEffect),\
            "on_true": "1",\
            "on_false": "0"\
        }\
    ],\
    "actions": [\
        {\
            "label": "Confirm",\
            "action": {\
                "type": "minecraft:dynamic/run_command",\
                "template": "trigger INH.SettingsMenu set 72\u0024(DialogReviveHealth)\u0024(DialogAllowRevives)\u0024(DialogTotemEffect)\u0024(DialogAllowHealing)"\
            }\
        },\
        {\
            "label": "Cancel",\
            "action":{\
                "type":"minecraft:run_command",\
                "command": "trigger INH.SettingsMenu"\
            }\
        }\
    ]\
}