{
    "id": "6482b0c9-9cbf-47af-aa4f-29943375aa15",
    "modelName": "GMExtension",
    "mvc": "1.0",
    "name": "SQLiteWinGMExtension",
    "IncludedResources": [
        "Sprites\\playSprite",
        "Sprites\\exitSprite",
        "Scripts\\openDB.gml",
        "Scripts\\runAllScripts.gml",
        "Scripts\\createTable.gml",
        "Scripts\\runQuery.gml",
        "Scripts\\runDMLs.gml",
        "Scripts\\closeDB.gml",
        "Objects\\playObject",
        "Objects\\exitObject",
        "Rooms\\testingRoom",
        "Included Files\\databases\\win.db",
        "Included Files\\documentation\\SQLiteWindowsGMSExtensionDoc.docx"
    ],
    "androidPermissions": [
        
    ],
    "androidProps": false,
    "androidactivityinject": "",
    "androidclassname": "",
    "androidinject": "",
    "androidmanifestinject": "",
    "androidsourcedir": "",
    "author": "",
    "classname": "",
    "copyToTargets": -1,
    "date": "2018-54-19 10:12:16",
    "description": "",
    "extensionName": "",
    "files": [
        {
            "id": "6385b172-2e2b-4e6a-915a-2d3e4923b6b4",
            "modelName": "GMExtensionFile",
            "mvc": "1.0",
            "ProxyFiles": [
                
            ],
            "constants": [
                
            ],
            "copyToTargets": 35184914239552,
            "filename": "SQLiteWinExtension.dll",
            "final": "",
            "functions": [
                {
                    "id": "83681d72-3adc-4912-9cd3-614a4048957a",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "SQLiteWinOpenDB",
                    "help": "SQLiteWinOpenDB( db_name )",
                    "hidden": false,
                    "kind": 11,
                    "name": "SQLiteWinOpenDB",
                    "returnType": 1
                },
                {
                    "id": "75f933c8-78e5-44d1-9335-d77cf364bc57",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "SQLiteWinCloseDB",
                    "help": "SQLiteWinCloseDB()",
                    "hidden": false,
                    "kind": 11,
                    "name": "SQLiteWinCloseDB",
                    "returnType": 1
                },
                {
                    "id": "ecbcdb6e-71ee-4ea2-af0c-fbd87ee41d37",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "SQLiteWinQueryOpen",
                    "help": "SQLiteWinQueryOpen( sql_query )",
                    "hidden": false,
                    "kind": 11,
                    "name": "SQLiteWinQueryOpen",
                    "returnType": 1
                },
                {
                    "id": "8b29712d-7fec-4639-a25b-ec8d5a2f3ae9",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 0,
                    "args": [
                        
                    ],
                    "externalName": "SQLiteWinQueryGetNext",
                    "help": "SQLiteWinQueryGetNext()",
                    "hidden": false,
                    "kind": 11,
                    "name": "SQLiteWinQueryGetNext",
                    "returnType": 1
                },
                {
                    "id": "dacf0c7d-d7a7-4b95-a23c-37f0fba2bf5e",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "SQLiteWinQueryGetData",
                    "help": "SQLiteWinQueryGetData( col )",
                    "hidden": false,
                    "kind": 11,
                    "name": "SQLiteWinQueryGetData",
                    "returnType": 1
                },
                {
                    "id": "063377ff-d698-44b8-ae67-250d45d3e183",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "SQLiteWinQueryClose",
                    "help": "SQLiteWinQueryClose()",
                    "hidden": false,
                    "kind": 11,
                    "name": "SQLiteWinQueryClose",
                    "returnType": 1
                },
                {
                    "id": "ce233aca-3d30-4772-8890-02248854d6ed",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "SQLiteWinExecuteInsert",
                    "help": "SQLiteWinExecuteInsert( sql_insert )",
                    "hidden": false,
                    "kind": 11,
                    "name": "SQLiteWinExecuteInsert",
                    "returnType": 1
                },
                {
                    "id": "c95575de-cf0b-4fb0-9d02-71e14798dab8",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "SQLiteWinExecuteUpdate",
                    "help": "SQLiteWinExecuteUpdate( sql_update )",
                    "hidden": false,
                    "kind": 11,
                    "name": "SQLiteWinExecuteUpdate",
                    "returnType": 1
                },
                {
                    "id": "8da80d6c-e63c-43a0-a183-9816478ad3e4",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "SQLiteWinExecuteDelete",
                    "help": "SQLiteWinExecuteDelete( sql_delete )",
                    "hidden": false,
                    "kind": 11,
                    "name": "SQLiteWinExecuteDelete",
                    "returnType": 1
                },
                {
                    "id": "f12a65a4-2d1a-4dce-89b1-be238bf31d95",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": 1,
                    "args": [
                        1
                    ],
                    "externalName": "SQLiteWinExecuteSQL",
                    "help": "SQLiteWinExecuteSQL( sql_statement )",
                    "hidden": false,
                    "kind": 11,
                    "name": "SQLiteWinExecuteSQL",
                    "returnType": 1
                },
                {
                    "id": "4d0f42bf-14d5-49d5-bd61-21c592573e39",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "SQLiteWinGetLibVersion",
                    "help": "SQLiteWinGetLibVersion()",
                    "hidden": false,
                    "kind": 11,
                    "name": "SQLiteWinGetLibVersion",
                    "returnType": 1
                },
                {
                    "id": "e853f959-a6bb-491c-beae-2d1eb6019f0f",
                    "modelName": "GMExtensionFunction",
                    "mvc": "1.0",
                    "argCount": -1,
                    "args": [
                        
                    ],
                    "externalName": "SQLiteWinQueryGetColumnCount",
                    "help": "SQLiteWinQueryGetColumnCount()",
                    "hidden": false,
                    "kind": 11,
                    "name": "SQLiteWinQueryGetColumnCount",
                    "returnType": 1
                }
            ],
            "init": "",
            "kind": 1,
            "order": [
                
            ],
            "origname": "extensions\\SQLiteWinExtension.dll",
            "uncompress": false
        }
    ],
    "gradleinject": "",
    "helpfile": "",
    "installdir": "",
    "iosProps": false,
    "iosSystemFrameworkEntries": [
        
    ],
    "iosThirdPartyFrameworkEntries": [
        
    ],
    "iosdelegatename": "",
    "iosplistinject": "",
    "license": "Free to use, also for commercial games.",
    "maccompilerflags": "",
    "maclinkerflags": "",
    "macsourcedir": "",
    "packageID": "com.marsogames.SQLiteWinGMSExtension",
    "productID": "DDF47DEC0451A15BE8761BC3255B43EB",
    "sourcedir": "",
    "tvosProps": false,
    "tvosSystemFrameworkEntries": [
        
    ],
    "tvosThirdPartyFrameworkEntries": [
        
    ],
    "tvosclassname": "",
    "tvosdelegatename": "",
    "tvosmaccompilerflags": "",
    "tvosmaclinkerflags": "",
    "tvosplistinject": "",
    "version": "1.0.2"
}