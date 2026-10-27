.class public Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;
.super Ljava/lang/Object;
.source "UserScenarioParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;
    }
.end annotation


# static fields
.field private static final CONFIG_FILE:Ljava/lang/String; = "userscenario.txt"

.field private static final KEY_ACTIVITIES:Ljava/lang/String; = "activities"

.field private static final KEY_ACTIVITY_CONTENT:Ljava/lang/String; = "activityContent"

.field private static final KEY_ACTIVITY_SCREEN_TYPE:Ljava/lang/String; = "activityScreenType"

.field private static final KEY_AIR_CONDITION:Ljava/lang/String; = "airCondition"

.field private static final KEY_APP_CONFIG:Ljava/lang/String; = "appConfig"

.field private static final KEY_APP_FLY_LIMIT:Ljava/lang/String; = "appflylimit"

.field private static final KEY_ARHUD:Ljava/lang/String; = "arHud"

.field private static final KEY_BLOCK_SCENARIOS:Ljava/lang/String; = "blockScenarios"

.field private static final KEY_BRIGHTNESS_ICM:Ljava/lang/String; = "brightness-icm"

.field private static final KEY_BRIGHTNESS_PANEL:Ljava/lang/String; = "brightness-panel"

.field private static final KEY_BRIGHTNESS_PANEL_1:Ljava/lang/String; = "brightness-panel-1"

.field private static final KEY_CONDITIONS:Ljava/lang/String; = "conditions"

.field private static final KEY_CONFLICT_EN:Ljava/lang/String; = "conflict-en"

.field private static final KEY_CONFLICT_HINT:Ljava/lang/String; = "conflictHint"

.field private static final KEY_CONFLICT_WINDOW:Ljava/lang/String; = "conflict-window"

.field private static final KEY_CONFLICT_ZH:Ljava/lang/String; = "conflict-zh"

.field private static final KEY_DATA:Ljava/lang/String; = "data"

.field private static final KEY_DEFAULT:Ljava/lang/String; = "default"

.field private static final KEY_DEFAULT_ACTIVITY:Ljava/lang/String; = "defaultActivity"

.field private static final KEY_DISABLE_SECOND_SCREEN:Ljava/lang/String; = "disableSecondScreen"

.field private static final KEY_DOOR:Ljava/lang/String; = "door"

.field private static final KEY_DYNAMIC_SCREEN:Ljava/lang/String; = "dynamicScreen"

.field private static final KEY_ENTER_CONDITION:Ljava/lang/String; = "enterCondition"

.field private static final KEY_EXIT_DIALOG_CONFIRM:Ljava/lang/String; = "exitDialogConfirm"

.field private static final KEY_EXIT_SIGNAL:Ljava/lang/String; = "exitSignal"

.field private static final KEY_FRIEND:Ljava/lang/String; = "friend"

.field private static final KEY_GEAR:Ljava/lang/String; = "gear"

.field private static final KEY_GLOBAL_DATA:Ljava/lang/String; = "globalData"

.field private static final KEY_GROUPS:Ljava/lang/String; = "groups"

.field private static final KEY_LAUNCH_PACKAGE:Ljava/lang/String; = "launchpkg"

.field private static final KEY_LIGHT:Ljava/lang/String; = "light"

.field private static final KEY_LIMIT_APP_EXIT:Ljava/lang/String; = "limitAppExit"

.field private static final KEY_MEDIA_KEY:Ljava/lang/String; = "mediakey"

.field private static final KEY_NOTIFICATION_LEVEL:Ljava/lang/String; = "notificationLevel"

.field private static final KEY_NOTIFY_ICM:Ljava/lang/String; = "notifyIcm"

.field private static final KEY_OVERALL_DATA:Ljava/lang/String; = "overallData"

.field private static final KEY_PANEL_COVER:Ljava/lang/String; = "panelCover"

.field private static final KEY_PRIORITY:Ljava/lang/String; = "priority"

.field private static final KEY_RESTORE_TASK:Ljava/lang/String; = "restoreTask"

.field private static final KEY_RSE_ACTION:Ljava/lang/String; = "rseAction"

.field private static final KEY_RSE_OFF:Ljava/lang/String; = "rseOff"

.field private static final KEY_SCENARIO_NAME:Ljava/lang/String; = "name"

.field private static final KEY_SCREEN_MODE:Ljava/lang/String; = "screenMode"

.field private static final KEY_SCREEN_ON:Ljava/lang/String; = "screenOn"

.field private static final KEY_SEAT_WELCOME_DISABLE:Ljava/lang/String; = "seatwelcomeDisable"

.field private static final KEY_SECOND_SCREENSAVER:Ljava/lang/String; = "secondScreensaver"

.field private static final KEY_SECOND_SCREEN_ID:Ljava/lang/String; = "secondScreenId"

.field private static final KEY_SHOULD_D0_SCREEN_MODE:Ljava/lang/String; = "shouldDoScreenMode"

.field private static final KEY_SOUND_MODE:Ljava/lang/String; = "soundMode"

.field private static final KEY_STOP_VOICE_DIALOG:Ljava/lang/String; = "stopvoicedialog"

.field private static final KEY_SUBSTITUTE_ACTIVITY:Ljava/lang/String; = "substituteActivity"

.field private static final KEY_SYSTEM_LIMIT:Ljava/lang/String; = "systemLimit"

.field private static final KEY_THEME_ANIM_DISABLE:Ljava/lang/String; = "themeAnimDisable"

.field private static final KEY_VERSION:Ljava/lang/String; = "version"

.field private static final KEY_VOICE:Ljava/lang/String; = "voice"

.field private static final KEY_VOLUME_CONFIG:Ljava/lang/String; = "volumecfg"

.field private static final KEY_VOLUME_DYNAMIC:Ljava/lang/String; = "volumeDynamic"

.field private static final KEY_VOLUME_PASSENGER_BT_DYNAMIC:Ljava/lang/String; = "volumePassengerBtDynamic"

.field private static final TAG:Ljava/lang/String; = "UserScenarioParser"

.field private static final assetFilePath:Ljava/lang/String; = "Config/userscenario.txt"

.field private static final mContext:Landroid/content/Context;

.field private static mDefaultWindowConflictDescriptor:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;

.field private static mGroupCount:I

.field private static mSecondScreenId:I

.field private static mVersionCode:Ljava/lang/String;

.field private static mWindowConflictDescriptors:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mContext:Landroid/content/Context;

    .line 43
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mVersionCode:Ljava/lang/String;

    .line 44
    const/4 v0, 0x1

    sput v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mGroupCount:I

    .line 45
    const/4 v0, -0x1

    sput v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mSecondScreenId:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;TT;)Z"
        }
    .end annotation

    .line 683
    .local p0, "array":[Ljava/lang/Object;, "[TT;"
    .local p1, "target":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x0

    if-eqz p0, :cond_1

    .line 684
    move v1, v0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    .line 685
    aget-object v2, p0, v1

    if-ne p1, v2, :cond_0

    .line 686
    const/4 v0, 0x1

    return v0

    .line 684
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 690
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private static createFromJsonObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .locals 26
    .param p0, "obj"    # Lorg/json/JSONObject;
    .param p1, "globalObj"    # Lorg/json/JSONObject;

    move-object/from16 v1, p0

    .line 295
    move-object/from16 v2, p1

    new-instance v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;-><init>()V

    move-object v3, v0

    .line 296
    .local v3, "configer":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->getSecondScreenId()I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setSecondScreenId(I)V

    .line 300
    const/4 v4, -0x2

    const/4 v7, 0x0

    const/4 v8, -0x1

    if-eqz v2, :cond_4

    .line 301
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 302
    .local v0, "iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 303
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 304
    .local v9, "key":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->hashCode()I

    move-result v10

    const v11, -0x4dcfa7b7

    if-eq v10, v11, :cond_2

    const v11, 0x246fcd2c

    if-eq v10, v11, :cond_1

    const v11, 0x4bd5fc13    # 2.8047398E7f

    if-eq v10, v11, :cond_0

    goto :goto_1

    :cond_0
    const-string v10, "panelCover"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x2

    goto :goto_2

    :cond_1
    const-string v10, "brightness-panel-1"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    const/4 v10, 0x1

    goto :goto_2

    :cond_2
    const-string v10, "appflylimit"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    move v10, v7

    goto :goto_2

    :cond_3
    :goto_1
    move v10, v8

    :goto_2
    packed-switch v10, :pswitch_data_0

    .end local v9    # "key":Ljava/lang/String;
    goto :goto_3

    .line 312
    .restart local v9    # "key":Ljava/lang/String;
    :pswitch_0
    const-string v10, "panelCover"

    invoke-virtual {v2, v10, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setPanelCover(I)V

    .line 313
    goto :goto_3

    .line 309
    :pswitch_1
    const-string v10, "brightness-panel-1"

    invoke-virtual {v2, v10, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setBrightnessPanel_1Value(I)V

    .line 310
    goto :goto_3

    .line 306
    :pswitch_2
    const-string v10, "appflylimit"

    invoke-virtual {v2, v10, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v3, v10}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setAppFlyLimit(I)V

    .line 307
    nop

    .line 317
    .end local v9    # "key":Ljava/lang/String;
    :goto_3
    goto :goto_0

    .line 320
    .end local v0    # "iterator":Ljava/util/Iterator;
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v0

    .line 320
    .restart local v0    # "iterator":Ljava/util/Iterator;
    :goto_4
    move-object v9, v0

    .line 321
    .end local v0    # "iterator":Ljava/util/Iterator;
    .local v9, "iterator":Ljava/util/Iterator;
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 322
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljava/lang/String;

    .line 323
    .local v10, "key":Ljava/lang/String;
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v11, 0x3

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_5

    :sswitch_0
    const-string v0, "activities"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x24

    goto/16 :goto_6

    :sswitch_1
    const-string v0, "brightness-icm"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v11

    goto/16 :goto_6

    :sswitch_2
    const-string v0, "notifyIcm"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x10

    goto/16 :goto_6

    :sswitch_3
    const-string v0, "exitDialogConfirm"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x17

    goto/16 :goto_6

    :sswitch_4
    const-string v0, "limitAppExit"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1a

    goto/16 :goto_6

    :sswitch_5
    const-string v0, "disableSecondScreen"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x6

    goto/16 :goto_6

    :sswitch_6
    const-string v0, "panelCover"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x12

    goto/16 :goto_6

    :sswitch_7
    const-string v0, "appConfig"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x23

    goto/16 :goto_6

    :sswitch_8
    const-string v0, "brightness-panel-1"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    goto/16 :goto_6

    :sswitch_9
    const-string v0, "dynamicScreen"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1f

    goto/16 :goto_6

    :sswitch_a
    const-string v0, "restoreTask"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x18

    goto/16 :goto_6

    :sswitch_b
    const-string v0, "seatwelcomeDisable"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x13

    goto/16 :goto_6

    :sswitch_c
    const-string v0, "airCondition"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xa

    goto/16 :goto_6

    :sswitch_d
    const-string v0, "exitSignal"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xe

    goto/16 :goto_6

    :sswitch_e
    const-string/jumbo v0, "voice"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xb

    goto/16 :goto_6

    :sswitch_f
    const-string v0, "light"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x9

    goto/16 :goto_6

    :sswitch_10
    const-string v0, "arHud"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x22

    goto/16 :goto_6

    :sswitch_11
    const-string v0, "rseAction"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1e

    goto/16 :goto_6

    :sswitch_12
    const-string v0, "themeAnimDisable"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x21

    goto/16 :goto_6

    :sswitch_13
    const-string v0, "name"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v7

    goto/16 :goto_6

    :sswitch_14
    const-string v0, "blockScenarios"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x20

    goto/16 :goto_6

    :sswitch_15
    const-string v0, "screenMode"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x19

    goto/16 :goto_6

    :sswitch_16
    const-string v0, "enterCondition"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xd

    goto/16 :goto_6

    :sswitch_17
    const-string v0, "launchpkg"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto/16 :goto_6

    :sswitch_18
    const-string v0, "mediakey"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xf

    goto/16 :goto_6

    :sswitch_19
    const-string v0, "secondScreensaver"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x7

    goto/16 :goto_6

    :sswitch_1a
    const-string v0, "brightness-panel"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x4

    goto/16 :goto_6

    :sswitch_1b
    const-string/jumbo v0, "volumeDynamic"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x14

    goto/16 :goto_6

    :sswitch_1c
    const-string v0, "priority"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x2

    goto :goto_6

    :sswitch_1d
    const-string v0, "friend"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x15

    goto :goto_6

    :sswitch_1e
    const-string v0, "appflylimit"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x11

    goto :goto_6

    :sswitch_1f
    const-string/jumbo v0, "volumePassengerBtDynamic"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x16

    goto :goto_6

    :sswitch_20
    const-string v0, "systemLimit"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1b

    goto :goto_6

    :sswitch_21
    const-string v0, "notificationLevel"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1d

    goto :goto_6

    :sswitch_22
    const-string v0, "stopvoicedialog"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0xc

    goto :goto_6

    :sswitch_23
    const-string v0, "soundMode"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x1c

    goto :goto_6

    :sswitch_24
    const-string/jumbo v0, "volumecfg"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x8

    goto :goto_6

    :cond_5
    :goto_5
    move v0, v8

    :goto_6
    packed-switch v0, :pswitch_data_1

    .line 599
    .end local v10    # "key":Ljava/lang/String;
    move v2, v4

    move v4, v7

    move v6, v8

    const/4 v5, 0x1

    :goto_7
    const/4 v8, 0x2

    goto/16 :goto_28

    .line 526
    .restart local v10    # "key":Ljava/lang/String;
    :pswitch_3
    const-string v0, "activities"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 527
    .local v0, "activityObj":Lorg/json/JSONObject;
    const/4 v11, 0x0

    .line 528
    .local v11, "defaultActivity":Ljava/lang/String;
    const/4 v13, 0x0

    .line 529
    .local v13, "substituteActivity":Ljava/lang/String;
    const/4 v14, 0x0

    .line 530
    .local v14, "conditionMet":Z
    const/4 v15, -0x1

    .line 531
    .local v15, "defaultshouldDoScreenMode":I
    const/16 v16, -0x1

    .line 532
    .local v16, "substituteshouldDoScreenMode":I
    if-eqz v0, :cond_13

    .line 533
    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v17

    .line 533
    .local v17, "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_8
    move-object/from16 v18, v17

    .line 534
    .end local v17    # "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local v18, "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    move-object/from16 v4, v18

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    .line 534
    .end local v18    # "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local v4, "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v17, :cond_13

    .line 535
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v5, v17

    check-cast v5, Ljava/lang/String;

    .line 536
    .local v5, "keys":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x14645c70

    if-eq v6, v7, :cond_7

    const v7, 0x6941c1c9

    if-eq v6, v7, :cond_6

    goto :goto_9

    :cond_6
    const-string v6, "substituteActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x1

    goto :goto_a

    :cond_7
    const-string v6, "defaultActivity"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const/4 v6, 0x0

    goto :goto_a

    :cond_8
    :goto_9
    move v6, v8

    :goto_a
    packed-switch v6, :pswitch_data_2

    .end local v5    # "keys":Ljava/lang/String;
    goto/16 :goto_10

    .line 555
    .restart local v5    # "keys":Ljava/lang/String;
    :pswitch_4
    const-string v6, "substituteActivity"

    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 556
    .local v6, "substituteActivityObj":Lorg/json/JSONObject;
    if-eqz v6, :cond_e

    .line 557
    invoke-virtual {v6}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v17

    .line 557
    .local v17, "substituteActivityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_b
    move-object/from16 v19, v17

    .line 558
    .end local v17    # "substituteActivityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local v19, "substituteActivityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    move-object/from16 v8, v19

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    .line 558
    .end local v19    # "substituteActivityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local v8, "substituteActivityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    if-eqz v17, :cond_e

    .line 559
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    check-cast v7, Ljava/lang/String;

    .line 560
    .local v7, "substituteActivityKey":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v12

    const v2, -0x377bc948    # -270773.75f

    if-eq v12, v2, :cond_b

    const v2, 0x580e1a6a

    if-eq v12, v2, :cond_a

    const v2, 0x5f18c46d

    if-eq v12, v2, :cond_9

    goto :goto_c

    :cond_9
    const-string v2, "shouldDoScreenMode"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x2

    goto :goto_d

    :cond_a
    const-string v2, "activityContent"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x0

    goto :goto_d

    :cond_b
    const-string v2, "conditions"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const/4 v2, 0x1

    goto :goto_d

    :cond_c
    :goto_c
    const/4 v2, -0x1

    :goto_d
    packed-switch v2, :pswitch_data_3

    .line 579
    .end local v7    # "substituteActivityKey":Ljava/lang/String;
    move-object/from16 v20, v4

    move-object/from16 v25, v5

    .line 579
    .end local v4    # "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "keys":Ljava/lang/String;
    .local v20, "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .local v25, "keys":Ljava/lang/String;
    goto/16 :goto_f

    .line 576
    .end local v20    # "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v25    # "keys":Ljava/lang/String;
    .restart local v4    # "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5    # "keys":Ljava/lang/String;
    .restart local v7    # "substituteActivityKey":Ljava/lang/String;
    :pswitch_5
    const-string v2, "shouldDoScreenMode"

    const/4 v12, -0x1

    invoke-virtual {v6, v2, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v16

    .line 579
    .end local v7    # "substituteActivityKey":Ljava/lang/String;
    move-object/from16 v20, v4

    move-object/from16 v25, v5

    goto :goto_f

    .line 565
    .restart local v7    # "substituteActivityKey":Ljava/lang/String;
    :pswitch_6
    const-string v2, "conditions"

    const/4 v12, 0x0

    invoke-virtual {v6, v2, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 566
    .local v2, "conditionStr":Ljava/lang/String;
    new-instance v12, Lcom/google/gson/Gson;

    invoke-direct {v12}, Lcom/google/gson/Gson;-><init>()V

    .line 567
    .local v12, "gson":Lcom/google/gson/Gson;
    move-object/from16 v20, v4

    new-instance v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$1;

    .line 567
    .end local v4    # "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v20    # "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    invoke-direct {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$1;-><init>()V

    invoke-virtual {v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 568
    .local v4, "conditionListType":Ljava/lang/reflect/Type;
    invoke-virtual {v12, v2, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v21, v2

    move-object/from16 v2, v17

    check-cast v2, Ljava/util/List;

    .line 569
    .local v2, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$Condition;>;"
    .local v21, "conditionStr":Ljava/lang/String;
    move-object/from16 v22, v4

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 569
    .end local v4    # "conditionListType":Ljava/lang/reflect/Type;
    .local v22, "conditionListType":Ljava/lang/reflect/Type;
    :goto_e
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v23, v2

    move-object/from16 v2, v17

    check-cast v2, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$Condition;

    .line 570
    .local v2, "condition":Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$Condition;
    .local v23, "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$Condition;>;"
    move-object/from16 v24, v4

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$Condition;->getRule()Ljava/lang/String;

    move-result-object v4

    .line 571
    .local v4, "rule":Ljava/lang/String;
    move-object/from16 v25, v5

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$Condition;->getKeyData()Ljava/util/List;

    move-result-object v5

    .line 572
    .local v5, "keyDataList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;>;"
    .restart local v25    # "keys":Ljava/lang/String;
    invoke-static {v3, v5, v4}, Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils;->evaluateCondition(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;Ljava/util/List;Ljava/lang/String;)Z

    move-result v14

    .line 573
    .end local v2    # "condition":Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$Condition;
    .end local v4    # "rule":Ljava/lang/String;
    .end local v5    # "keyDataList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$KeyData;>;"
    nop

    .line 569
    move-object/from16 v2, v23

    move-object/from16 v4, v24

    move-object/from16 v5, v25

    goto :goto_e

    .line 574
    .end local v12    # "gson":Lcom/google/gson/Gson;
    .end local v21    # "conditionStr":Ljava/lang/String;
    .end local v22    # "conditionListType":Ljava/lang/reflect/Type;
    .end local v23    # "conditions":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/userscenario/ConditionUtils$Condition;>;"
    .end local v25    # "keys":Ljava/lang/String;
    .local v5, "keys":Ljava/lang/String;
    :cond_d
    move-object/from16 v25, v5

    .line 574
    .end local v5    # "keys":Ljava/lang/String;
    .restart local v25    # "keys":Ljava/lang/String;
    goto :goto_f

    .line 562
    .end local v20    # "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v25    # "keys":Ljava/lang/String;
    .local v4, "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5    # "keys":Ljava/lang/String;
    :pswitch_7
    move-object/from16 v20, v4

    move-object/from16 v25, v5

    .line 562
    .end local v4    # "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "keys":Ljava/lang/String;
    .restart local v20    # "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v25    # "keys":Ljava/lang/String;
    const-string v2, "activityContent"

    const/4 v4, 0x0

    invoke-virtual {v6, v2, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 563
    nop

    .line 579
    .end local v7    # "substituteActivityKey":Ljava/lang/String;
    :goto_f
    nop

    .line 557
    move-object/from16 v17, v8

    move-object/from16 v4, v20

    move-object/from16 v5, v25

    move-object/from16 v2, p1

    const/4 v8, -0x1

    goto/16 :goto_b

    .line 583
    .end local v6    # "substituteActivityObj":Lorg/json/JSONObject;
    .end local v8    # "substituteActivityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v20    # "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v25    # "keys":Ljava/lang/String;
    .restart local v4    # "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_e
    :goto_10
    move-object/from16 v20, v4

    .line 583
    .end local v4    # "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v20    # "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    goto :goto_15

    .line 538
    .end local v20    # "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v4    # "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v5    # "keys":Ljava/lang/String;
    :pswitch_8
    move-object/from16 v20, v4

    move-object/from16 v25, v5

    .line 538
    .end local v4    # "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5    # "keys":Ljava/lang/String;
    .restart local v20    # "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v25    # "keys":Ljava/lang/String;
    const-string v2, "defaultActivity"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 539
    .local v2, "defaultActivityObj":Lorg/json/JSONObject;
    if-eqz v2, :cond_12

    .line 540
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v4

    .line 541
    .local v4, "defaultActivityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_11
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 542
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 543
    .local v5, "defaultActivityKey":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v6

    const v7, 0x580e1a6a

    if-eq v6, v7, :cond_10

    const v8, 0x5f18c46d

    if-eq v6, v8, :cond_f

    goto :goto_12

    :cond_f
    const-string v6, "shouldDoScreenMode"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v6, 0x1

    goto :goto_13

    :cond_10
    const v8, 0x5f18c46d

    const-string v6, "activityContent"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    const/4 v6, 0x0

    goto :goto_13

    :cond_11
    :goto_12
    const/4 v6, -0x1

    :goto_13
    packed-switch v6, :pswitch_data_4

    .end local v5    # "defaultActivityKey":Ljava/lang/String;
    goto :goto_14

    .line 548
    .restart local v5    # "defaultActivityKey":Ljava/lang/String;
    :pswitch_9
    const-string v6, "shouldDoScreenMode"

    const/4 v12, -0x1

    invoke-virtual {v2, v6, v12}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 551
    .end local v15    # "defaultshouldDoScreenMode":I
    .local v5, "defaultshouldDoScreenMode":I
    move v15, v5

    goto :goto_14

    .line 545
    .local v5, "defaultActivityKey":Ljava/lang/String;
    .restart local v15    # "defaultshouldDoScreenMode":I
    :pswitch_a
    const-string v6, "activityContent"

    const/4 v12, 0x0

    invoke-virtual {v2, v6, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 546
    .end local v11    # "defaultActivity":Ljava/lang/String;
    .local v6, "defaultActivity":Ljava/lang/String;
    nop

    .line 551
    move-object v11, v6

    .line 551
    .end local v5    # "defaultActivityKey":Ljava/lang/String;
    .end local v6    # "defaultActivity":Ljava/lang/String;
    .restart local v11    # "defaultActivity":Ljava/lang/String;
    :goto_14
    goto :goto_11

    .line 553
    .end local v2    # "defaultActivityObj":Lorg/json/JSONObject;
    .end local v4    # "defaultActivityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_12
    nop

    .line 583
    .end local v25    # "keys":Ljava/lang/String;
    :goto_15
    nop

    .line 533
    move-object/from16 v17, v20

    move-object/from16 v2, p1

    const/4 v4, -0x2

    const/4 v7, 0x0

    const/4 v8, -0x1

    goto/16 :goto_8

    .line 585
    .end local v20    # "activityKeys":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_13
    move/from16 v2, v16

    .line 585
    .end local v16    # "substituteshouldDoScreenMode":I
    .local v2, "substituteshouldDoScreenMode":I
    if-eqz v14, :cond_14

    move-object v4, v13

    goto :goto_16

    :cond_14
    move-object v4, v11

    .line 586
    .local v4, "selectedActivity":Ljava/lang/String;
    :goto_16
    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setStartActivity(Ljava/lang/String;)V

    .line 588
    if-eqz v14, :cond_15

    const/4 v5, -0x1

    if-eq v2, v5, :cond_16

    .line 589
    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setShouldDoScreenMode(I)V

    goto :goto_17

    .line 590
    :cond_15
    const/4 v5, -0x1

    :cond_16
    if-eq v15, v5, :cond_17

    .line 591
    invoke-virtual {v3, v15}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setShouldDoScreenMode(I)V

    .line 593
    :cond_17
    :goto_17
    const-string v5, "UserScenarioParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parseActivityFromCondition selectedActivity="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ",conditionMet="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ",defaultshouldDoScreenMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",substituteshouldDoScreenMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .end local v0    # "activityObj":Lorg/json/JSONObject;
    .end local v2    # "substituteshouldDoScreenMode":I
    .end local v4    # "selectedActivity":Ljava/lang/String;
    .end local v11    # "defaultActivity":Ljava/lang/String;
    .end local v13    # "substituteActivity":Ljava/lang/String;
    .end local v14    # "conditionMet":Z
    .end local v15    # "defaultshouldDoScreenMode":I
    nop

    .line 599
    const/4 v2, -0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, -0x1

    goto/16 :goto_7

    .line 498
    :pswitch_b
    const-string v0, "appConfig"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 499
    .local v2, "val":Ljava/lang/String;
    if-eqz v2, :cond_1b

    .line 500
    const-string v0, "#"

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v5

    .line 501
    .local v5, "appConfigStrs":[Ljava/lang/String;
    if-eqz v5, :cond_1b

    array-length v0, v5

    if-lez v0, :cond_1b

    .line 502
    array-length v0, v5

    new-array v4, v0, [Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;

    .line 504
    .local v4, "appConfigs":[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;
    const/4 v0, 0x0

    .line 504
    .local v0, "i":I
    :goto_18
    move v6, v0

    .line 504
    .end local v0    # "i":I
    .local v6, "i":I
    array-length v0, v5

    if-ge v6, v0, :cond_1a

    .line 505
    aget-object v0, v5, v6

    const-string v7, "%%"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    .line 506
    .local v7, "fileds":[Ljava/lang/String;
    if-eqz v7, :cond_19

    array-length v0, v7

    if-lez v0, :cond_19

    .line 507
    new-instance v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;-><init>()V

    aput-object v0, v4, v6

    .line 508
    aget-object v0, v4, v6

    const/4 v8, 0x0

    aget-object v12, v7, v8

    iput-object v12, v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;->pkgName:Ljava/lang/String;

    .line 510
    :try_start_0
    aget-object v0, v4, v6

    const/4 v8, 0x1

    aget-object v12, v7, v8

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;->canLaunch:I

    .line 511
    aget-object v0, v4, v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v8, 0x2

    :try_start_1
    aget-object v12, v7, v8

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;->canMove:I

    .line 512
    array-length v0, v7

    if-le v0, v11, :cond_18

    .line 513
    aget-object v0, v4, v6

    aget-object v12, v7, v11

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    iput v12, v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;->canDialog:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 517
    :cond_18
    goto :goto_1a

    .line 515
    :catch_0
    move-exception v0

    goto :goto_19

    :catch_1
    move-exception v0

    const/4 v8, 0x2

    .line 516
    .local v0, "e":Ljava/lang/Exception;
    :goto_19
    const-string v12, "UserScenarioParser"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "parse app config e="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, ",config="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "fileds":[Ljava/lang/String;
    goto :goto_1a

    .line 504
    :cond_19
    const/4 v8, 0x2

    :goto_1a
    add-int/lit8 v0, v6, 0x1

    .line 504
    .end local v6    # "i":I
    .local v0, "i":I
    goto :goto_18

    .line 521
    .end local v0    # "i":I
    :cond_1a
    const/4 v8, 0x2

    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setAppConfigs([Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;)V

    .line 521
    .end local v2    # "val":Ljava/lang/String;
    .end local v4    # "appConfigs":[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger$AppConfig;
    .end local v5    # "appConfigStrs":[Ljava/lang/String;
    goto :goto_1b

    .line 524
    :cond_1b
    const/4 v8, 0x2

    :goto_1b
    goto/16 :goto_1e

    .line 495
    :pswitch_c
    const/4 v8, 0x2

    const-string v0, "arHud"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setArHud(I)V

    .line 496
    goto/16 :goto_1e

    .line 492
    :pswitch_d
    const/4 v8, 0x2

    const-string v0, "themeAnimDisable"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setThemeAnimDisable(I)V

    .line 493
    goto/16 :goto_1d

    .line 484
    :pswitch_e
    move v2, v7

    const/4 v8, 0x2

    const-string v0, "blockScenarios"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 485
    .local v0, "val":Ljava/lang/String;
    if-eqz v0, :cond_1c

    .line 486
    const-string v4, "#"

    invoke-virtual {v0, v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 487
    .local v4, "scenarios":[Ljava/lang/String;
    invoke-static {v4}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 488
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3, v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setBlockScenarioList(Ljava/util/List;)V

    .line 490
    .end local v0    # "val":Ljava/lang/String;
    .end local v2    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v4    # "scenarios":[Ljava/lang/String;
    :cond_1c
    goto/16 :goto_1e

    .line 481
    :pswitch_f
    const/4 v8, 0x2

    const-string v0, "dynamicScreen"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setDynamicScreen(I)V

    .line 482
    nop

    .line 599
    move v6, v2

    const/4 v2, -0x2

    const/4 v4, 0x0

    .line 599
    .end local v10    # "key":Ljava/lang/String;
    :goto_1c
    const/4 v5, 0x1

    goto/16 :goto_28

    .line 478
    .restart local v10    # "key":Ljava/lang/String;
    :pswitch_10
    move v2, v8

    const/4 v8, 0x2

    const-string v0, "rseAction"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setRseAction(I)V

    .line 479
    goto/16 :goto_1e

    .line 475
    :pswitch_11
    const/4 v8, 0x2

    const-string v0, "notificationLevel"

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setNotificationLevel(I)V

    .line 476
    goto/16 :goto_1e

    .line 472
    :pswitch_12
    const/4 v8, 0x2

    const-string v0, "soundMode"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setSoundMode(I)V

    .line 473
    goto/16 :goto_1e

    .line 469
    :pswitch_13
    const/4 v8, 0x2

    const-string v0, "systemLimit"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setSystemLimit(I)V

    .line 470
    goto :goto_1d

    .line 466
    :pswitch_14
    move v2, v7

    const/4 v8, 0x2

    const-string v0, "limitAppExit"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setLimitAppExit(I)V

    .line 467
    goto :goto_1d

    .line 463
    :pswitch_15
    move v2, v7

    const/4 v8, 0x2

    const-string v0, "screenMode"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setScreenModeConfig(I)V

    .line 464
    goto :goto_1d

    .line 460
    :pswitch_16
    move v2, v7

    const/4 v8, 0x2

    const-string v0, "restoreTask"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setRestoreTask(I)V

    .line 461
    nop

    .line 599
    .end local v10    # "key":Ljava/lang/String;
    :goto_1d
    move v4, v2

    goto :goto_1f

    .line 457
    .restart local v10    # "key":Ljava/lang/String;
    :pswitch_17
    move v2, v7

    const/4 v8, 0x2

    const-string v0, "exitDialogConfirm"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setExitDialogConfirm(I)V

    .line 458
    goto :goto_1e

    .line 454
    :pswitch_18
    const/4 v8, 0x2

    const-string/jumbo v0, "volumePassengerBtDynamic"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setVolumeBtDynamic(I)V

    .line 455
    goto :goto_1e

    .line 446
    :pswitch_19
    const/4 v8, 0x2

    const-string v0, "friend"

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 447
    .restart local v0    # "val":Ljava/lang/String;
    if-eqz v0, :cond_1d

    .line 448
    const-string v2, "#"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 449
    .local v2, "scenarios":[Ljava/lang/String;
    invoke-static {v2}, Ljava/util/stream/Stream;->of([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v4

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 450
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {v3, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setFriendScenarioList(Ljava/util/List;)V

    .line 452
    .end local v0    # "val":Ljava/lang/String;
    .end local v2    # "scenarios":[Ljava/lang/String;
    .end local v4    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1d
    goto :goto_1e

    .line 443
    :pswitch_1a
    const/4 v8, 0x2

    const-string/jumbo v0, "volumeDynamic"

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setVolumeDynamic(I)V

    .line 444
    nop

    .line 599
    .end local v10    # "key":Ljava/lang/String;
    :goto_1e
    const/4 v2, -0x2

    const/4 v4, 0x0

    goto :goto_20

    .line 440
    .restart local v10    # "key":Ljava/lang/String;
    :pswitch_1b
    const/4 v8, 0x2

    const-string v0, "seatwelcomeDisable"

    const/4 v4, 0x0

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setSeatWelcomeDisable(I)V

    .line 441
    goto :goto_1f

    .line 437
    :pswitch_1c
    move v4, v7

    const/4 v8, 0x2

    const-string v0, "panelCover"

    invoke-virtual {v1, v0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setPanelCover(I)V

    .line 438
    nop

    .line 599
    .end local v10    # "key":Ljava/lang/String;
    :goto_1f
    const/4 v2, -0x2

    goto :goto_20

    .line 434
    .restart local v10    # "key":Ljava/lang/String;
    :pswitch_1d
    move v4, v7

    const/4 v8, 0x2

    const-string v0, "appflylimit"

    const/4 v2, -0x2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setAppFlyLimit(I)V

    .line 435
    nop

    .line 599
    .end local v10    # "key":Ljava/lang/String;
    :goto_20
    const/4 v5, 0x1

    goto/16 :goto_27

    .line 431
    .restart local v10    # "key":Ljava/lang/String;
    :pswitch_1e
    move v2, v4

    move v4, v7

    const/4 v8, 0x2

    const-string v0, "notifyIcm"

    const/4 v5, -0x1

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v5, 0x1

    if-ne v5, v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_21

    :cond_1e
    move v0, v4

    :goto_21
    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setNotifyIcm(Z)V

    .line 432
    goto :goto_20

    .line 428
    :pswitch_1f
    move v2, v4

    move v4, v7

    const/4 v8, 0x2

    const-string v0, "mediakey"

    const/4 v5, -0x1

    invoke-virtual {v1, v0, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v5, 0x1

    if-ne v5, v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_22

    :cond_1f
    move v0, v4

    :goto_22
    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setMediaKeyFlag(Z)V

    .line 429
    goto :goto_20

    .line 384
    :pswitch_20
    move v2, v4

    move v4, v7

    const/4 v8, 0x2

    const-string v0, "exitSignal"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 385
    .local v0, "obj2":Lorg/json/JSONObject;
    if-nez v0, :cond_20

    .line 386
    const-string v5, "UserScenarioParser"

    const-string v6, "KEY_EXIT_SIGNAL null"

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    goto :goto_20

    .line 389
    :cond_20
    const-string v5, "gear"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_24

    .line 390
    const-string v5, "gear"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 391
    .local v5, "val":Ljava/lang/String;
    if-eqz v5, :cond_24

    .line 393
    invoke-static {v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->gearConfigToFlag(Ljava/lang/String;)I

    move-result v6

    .line 394
    .local v6, "gearFlag":I
    const/4 v7, -0x1

    if-ne v7, v6, :cond_23

    .line 395
    const/4 v6, 0x0

    .line 397
    const-string v7, "#"

    invoke-virtual {v5, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 398
    .local v7, "array":[Ljava/lang/String;
    if-eqz v7, :cond_23

    .line 399
    array-length v11, v7

    move v12, v6

    move v6, v4

    .line 399
    .end local v6    # "gearFlag":I
    .local v12, "gearFlag":I
    :goto_23
    if-ge v6, v11, :cond_22

    aget-object v13, v7, v6

    .line 400
    .local v13, "s":Ljava/lang/String;
    invoke-static {v13}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->gearConfigToFlag(Ljava/lang/String;)I

    move-result v14

    .line 401
    .local v14, "flag":I
    const/4 v15, -0x1

    if-eq v15, v14, :cond_21

    .line 402
    or-int/2addr v12, v14

    .line 399
    .end local v13    # "s":Ljava/lang/String;
    .end local v14    # "flag":I
    :cond_21
    add-int/lit8 v6, v6, 0x1

    goto :goto_23

    .line 407
    .end local v7    # "array":[Ljava/lang/String;
    :cond_22
    move v6, v12

    .line 407
    .end local v12    # "gearFlag":I
    .restart local v6    # "gearFlag":I
    :cond_23
    invoke-virtual {v3, v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setExitGear(I)V

    .line 410
    .end local v5    # "val":Ljava/lang/String;
    .end local v6    # "gearFlag":I
    :cond_24
    const-string v5, "door"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_25

    .line 411
    const-string v5, "door"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 412
    .local v5, "intVal":I
    invoke-virtual {v3, v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setExitDoor(I)V

    .line 412
    .end local v5    # "intVal":I
    goto :goto_24

    .line 414
    :cond_25
    const/4 v6, -0x1

    :goto_24
    const-string/jumbo v5, "voice"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_26

    .line 415
    const-string/jumbo v5, "voice"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 416
    .restart local v5    # "intVal":I
    invoke-virtual {v3, v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setExitVoice(I)V

    .line 418
    .end local v5    # "intVal":I
    :cond_26
    const-string v5, "screenOn"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_27

    .line 419
    const-string v5, "screenOn"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 420
    .restart local v5    # "intVal":I
    invoke-virtual {v3, v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setExitScreenOn(I)V

    .line 422
    .end local v5    # "intVal":I
    :cond_27
    const-string v5, "rseOff"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_28

    .line 423
    const-string v5, "rseOff"

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 424
    .restart local v5    # "intVal":I
    invoke-virtual {v3, v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setExitRseOff(I)V

    .line 426
    .end local v0    # "obj2":Lorg/json/JSONObject;
    .end local v5    # "intVal":I
    :cond_28
    goto/16 :goto_20

    .line 364
    :pswitch_21
    move v2, v4

    move v4, v7

    const/4 v8, 0x2

    const-string v0, "enterCondition"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 365
    .restart local v0    # "obj2":Lorg/json/JSONObject;
    if-nez v0, :cond_29

    .line 366
    const-string v5, "UserScenarioParser"

    const-string v6, "KEY_ENTER_CONDITION null"

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 367
    goto/16 :goto_20

    .line 369
    :cond_29
    const-string v5, "gear"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2a

    .line 370
    const-string v5, "gear"

    const/4 v6, 0x0

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 371
    .local v5, "val":Ljava/lang/String;
    if-eqz v5, :cond_2a

    .line 373
    const-string v6, "P"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2a

    .line 374
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setEnterGear(I)V

    .line 378
    .end local v5    # "val":Ljava/lang/String;
    :cond_2a
    const-string v5, "door"

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2b

    .line 379
    const-string v5, "door"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v5

    .line 380
    .local v5, "intVal":I
    invoke-virtual {v3, v5}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setEnterDoor(I)V

    .line 380
    .end local v0    # "obj2":Lorg/json/JSONObject;
    .end local v5    # "intVal":I
    goto :goto_25

    .line 382
    :cond_2b
    const/4 v6, -0x1

    :goto_25
    goto/16 :goto_1c

    .line 361
    :pswitch_22
    move v2, v4

    move v4, v7

    move v6, v8

    const/4 v8, 0x2

    const-string v0, "stopvoicedialog"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v5, 0x1

    if-ne v5, v0, :cond_2c

    move v0, v5

    goto :goto_26

    :cond_2c
    move v0, v4

    :goto_26
    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setStopVoiceDialog(Z)V

    .line 362
    goto :goto_27

    .line 358
    :pswitch_23
    move v2, v4

    move v4, v7

    const/4 v5, 0x1

    const/4 v8, 0x2

    const-string/jumbo v0, "voice"

    const/4 v6, -0x1

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setVoiceMode(I)V

    .line 359
    goto/16 :goto_28

    .line 355
    :pswitch_24
    move v2, v4

    move v4, v7

    move v6, v8

    const/4 v5, 0x1

    const/4 v8, 0x2

    const-string v0, "airCondition"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setAirConditionFlag(I)V

    .line 356
    goto/16 :goto_28

    .line 352
    :pswitch_25
    move v2, v4

    move v4, v7

    move v6, v8

    const/4 v5, 0x1

    const/4 v8, 0x2

    const-string v0, "light"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setLightMode(I)V

    .line 353
    goto :goto_27

    .line 349
    :pswitch_26
    move v2, v4

    move v4, v7

    const/4 v5, 0x1

    const/4 v8, 0x2

    const-string/jumbo v0, "volumecfg"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setVolumeConfig(Ljava/lang/String;)V

    .line 350
    nop

    .line 599
    .end local v10    # "key":Ljava/lang/String;
    :goto_27
    const/4 v6, -0x1

    goto/16 :goto_28

    .line 346
    .restart local v10    # "key":Ljava/lang/String;
    :pswitch_27
    move v2, v4

    move v4, v7

    const/4 v5, 0x1

    const/4 v8, 0x2

    const-string v0, "secondScreensaver"

    const/4 v6, -0x1

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setSecondScreensaver(I)V

    .line 347
    goto/16 :goto_28

    .line 343
    :pswitch_28
    move v2, v4

    move v4, v7

    move v6, v8

    const/4 v5, 0x1

    const/4 v8, 0x2

    const-string v0, "disableSecondScreen"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setDisableSecondScreen(I)V

    .line 344
    goto/16 :goto_28

    .line 340
    :pswitch_29
    move v2, v4

    move v4, v7

    move v6, v8

    const/4 v5, 0x1

    const/4 v8, 0x2

    const-string v0, "brightness-panel-1"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setBrightnessPanel_1Value(I)V

    .line 341
    goto :goto_28

    .line 337
    :pswitch_2a
    move v2, v4

    move v4, v7

    move v6, v8

    const/4 v5, 0x1

    const/4 v8, 0x2

    const-string v0, "brightness-panel"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setBrightnessPanelValue(I)V

    .line 338
    goto :goto_28

    .line 334
    :pswitch_2b
    move v2, v4

    move v4, v7

    move v6, v8

    const/4 v5, 0x1

    const/4 v8, 0x2

    const-string v0, "brightness-icm"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setBrightnessIcmValue(I)V

    .line 335
    goto :goto_28

    .line 331
    :pswitch_2c
    move v2, v4

    move v4, v7

    move v6, v8

    const/4 v5, 0x1

    const/4 v8, 0x2

    const-string v0, "priority"

    invoke-virtual {v1, v0, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setPriority(I)V

    .line 332
    goto :goto_28

    .line 328
    :pswitch_2d
    move v2, v4

    move v4, v7

    move v6, v8

    const/4 v5, 0x1

    const/4 v8, 0x2

    const-string v0, "launchpkg"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setLaunchPackage(Ljava/lang/String;)V

    .line 329
    goto :goto_28

    .line 325
    :pswitch_2e
    move v2, v4

    move v4, v7

    move v6, v8

    const/4 v5, 0x1

    const/4 v8, 0x2

    const-string v0, "name"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setScenarioName(Ljava/lang/String;)V

    .line 326
    nop

    .line 599
    .end local v10    # "key":Ljava/lang/String;
    :goto_28
    nop

    .line 320
    move v7, v4

    move v8, v6

    move-object v0, v9

    move v4, v2

    move-object/from16 v2, p1

    goto/16 :goto_4

    .line 601
    :cond_2d
    invoke-virtual {v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->postInit()V

    .line 602
    return-object v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x7edaf4f6 -> :sswitch_24
        -0x6c0ba8ae -> :sswitch_23
        -0x68900c48 -> :sswitch_22
        -0x5ec402a7 -> :sswitch_21
        -0x5c911134 -> :sswitch_20
        -0x4f870b33 -> :sswitch_1f
        -0x4dcfa7b7 -> :sswitch_1e
        -0x4b79f562 -> :sswitch_1d
        -0x4577865c -> :sswitch_1c
        -0x44b0403b -> :sswitch_1b
        -0x38b3f678 -> :sswitch_1a
        -0x36851b6b -> :sswitch_19
        -0x35b08c05 -> :sswitch_18
        -0x283cf2c7 -> :sswitch_17
        -0x1fa946dd -> :sswitch_16
        -0x18e3a7d1 -> :sswitch_15
        -0x64cd72a -> :sswitch_14
        0x337a8b -> :sswitch_13
        0x2049e0e -> :sswitch_12
        0x40a619a -> :sswitch_11
        0x58bd706 -> :sswitch_10
        0x6233516 -> :sswitch_f
        0x6b2e132 -> :sswitch_e
        0x8564566 -> :sswitch_d
        0x8ece6f1 -> :sswitch_c
        0xb144e6b -> :sswitch_b
        0x13aa8533 -> :sswitch_a
        0x1d10a18b -> :sswitch_9
        0x246fcd2c -> :sswitch_8
        0x3dd00cc3 -> :sswitch_7
        0x4bd5fc13 -> :sswitch_6
        0x531a2508 -> :sswitch_5
        0x69fd62a4 -> :sswitch_4
        0x705f37da -> :sswitch_3
        0x715f568a -> :sswitch_2
        0x7637a717 -> :sswitch_1
        0x7a1b3bed -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_8
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
    .end packed-switch
.end method

.method private static gearConfigToFlag(Ljava/lang/String;)I
    .locals 3
    .param p0, "val"    # Ljava/lang/String;

    .line 606
    const/4 v0, -0x1

    .line 607
    .local v0, "gearFlag":I
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x44

    if-eq v1, v2, :cond_7

    const/16 v2, 0x4e

    if-eq v1, v2, :cond_6

    const/16 v2, 0x50

    if-eq v1, v2, :cond_5

    const/16 v2, 0x52

    if-eq v1, v2, :cond_4

    const/16 v2, 0x443

    if-eq v1, v2, :cond_3

    const/16 v2, 0x44d

    if-eq v1, v2, :cond_2

    const/16 v2, 0x44f

    if-eq v1, v2, :cond_1

    const/16 v2, 0x451

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "!R"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "!P"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    const-string v1, "!N"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x2

    goto :goto_1

    :cond_3
    const-string v1, "!D"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x3

    goto :goto_1

    :cond_4
    const-string v1, "R"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x5

    goto :goto_1

    :cond_5
    const-string v1, "P"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x4

    goto :goto_1

    :cond_6
    const-string v1, "N"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x6

    goto :goto_1

    :cond_7
    const-string v1, "D"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x7

    goto :goto_1

    :cond_8
    :goto_0
    const/4 v1, -0x1

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 630
    :pswitch_0
    const/4 v0, 0x2

    .line 631
    goto :goto_2

    .line 627
    :pswitch_1
    const/4 v0, 0x4

    .line 628
    goto :goto_2

    .line 624
    :pswitch_2
    const/16 v0, 0x8

    .line 625
    goto :goto_2

    .line 621
    :pswitch_3
    const/16 v0, 0x10

    .line 622
    goto :goto_2

    .line 618
    :pswitch_4
    const/high16 v0, 0x20000

    .line 619
    goto :goto_2

    .line 615
    :pswitch_5
    const/high16 v0, 0x40000

    .line 616
    goto :goto_2

    .line 612
    :pswitch_6
    const/high16 v0, 0x80000

    .line 613
    goto :goto_2

    .line 609
    :pswitch_7
    const/high16 v0, 0x100000

    .line 610
    nop

    .line 636
    :goto_2
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getGroupCount()I
    .locals 1

    .line 193
    sget v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mGroupCount:I

    return v0
.end method

.method private static getSecondScreenId()I
    .locals 5

    .line 694
    sget v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mSecondScreenId:I

    const/4 v1, -0x1

    if-eq v1, v0, :cond_0

    .line 695
    sget v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mSecondScreenId:I

    return v0

    .line 697
    :cond_0
    invoke-static {}, Lcom/xiaopeng/screen/ScreenManagerFactory;->get()Lcom/xiaopeng/screen/ScreenManagerFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/screen/ScreenManagerFactory;->getScreenDevices()Ljava/util/List;

    move-result-object v0

    .line 698
    .local v0, "mScreenDevices":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/screen/ScreenDevice;>;"
    if-eqz v0, :cond_2

    .line 699
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/screen/ScreenDevice;

    .line 700
    .local v2, "device":Lcom/xiaopeng/screen/ScreenDevice;
    iget-object v3, v2, Lcom/xiaopeng/screen/ScreenDevice;->configuration:Lcom/xiaopeng/screen/ScreenItemConfiguration;

    iget v3, v3, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenId:I

    if-eqz v3, :cond_1

    const/4 v3, 0x2

    iget-object v4, v2, Lcom/xiaopeng/screen/ScreenDevice;->configuration:Lcom/xiaopeng/screen/ScreenItemConfiguration;

    iget v4, v4, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenId:I

    if-eq v3, v4, :cond_1

    .line 701
    const-string v1, "UserScenarioParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSecondScreenId screenId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Lcom/xiaopeng/screen/ScreenDevice;->configuration:Lcom/xiaopeng/screen/ScreenItemConfiguration;

    iget v4, v4, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    iget-object v1, v2, Lcom/xiaopeng/screen/ScreenDevice;->configuration:Lcom/xiaopeng/screen/ScreenItemConfiguration;

    iget v1, v1, Lcom/xiaopeng/screen/ScreenItemConfiguration;->screenId:I

    sput v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mSecondScreenId:I

    .line 703
    sget v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mSecondScreenId:I

    return v1

    .line 705
    .end local v2    # "device":Lcom/xiaopeng/screen/ScreenDevice;
    :cond_1
    goto :goto_0

    .line 707
    :cond_2
    const-string v1, "UserScenarioParser"

    const-string v2, "getSecondScreenId mScreenDevices null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    :cond_3
    const/4 v1, 0x3

    sput v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mSecondScreenId:I

    .line 710
    sget v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mSecondScreenId:I

    return v1
.end method

.method public static getVersionCode()Ljava/lang/String;
    .locals 1

    .line 189
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public static getWindowConflictString([Ljava/lang/Integer;I)Ljava/lang/String;
    .locals 10
    .param p0, "winType"    # [Ljava/lang/Integer;
    .param p1, "panelIndex"    # I

    .line 139
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mWindowConflictDescriptors:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;

    if-eqz v0, :cond_3

    .line 140
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mWindowConflictDescriptors:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    .line 141
    .local v4, "winDes":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;
    iget-object v5, v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;->windowIds:[I

    array-length v6, v5

    move v7, v2

    :goto_1
    if-ge v7, v6, :cond_2

    aget v8, v5, v7

    .line 142
    .local v8, "val":I
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {p0, v9}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->arrayContains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 144
    invoke-static {}, Lcom/xiaopeng/util/LocaleStrings;->getInstance()Lcom/xiaopeng/util/LocaleStrings;

    move-result-object v0

    iget-object v1, v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;->toastValueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/util/LocaleStrings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 145
    .local v0, "origValue":Ljava/lang/String;
    iget-boolean v1, v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;->panelAdapt:Z

    if-eqz v1, :cond_0

    .line 146
    const-string v1, ""

    .line 147
    .local v1, "targetReplaceStr":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    goto :goto_2

    .line 154
    :pswitch_0
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e003c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 155
    goto :goto_2

    .line 150
    :pswitch_1
    sget-object v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e003b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 151
    nop

    .line 159
    :goto_2
    const-string v2, "#"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 161
    .end local v1    # "targetReplaceStr":Ljava/lang/String;
    :cond_0
    const-string v1, "UserScenarioParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "match winType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    return-object v0

    .line 141
    .end local v0    # "origValue":Ljava/lang/String;
    .end local v8    # "val":I
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 140
    .end local v4    # "winDes":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 168
    :cond_3
    sget-object v0, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mDefaultWindowConflictDescriptor:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;

    if-eqz v0, :cond_4

    .line 169
    invoke-static {}, Lcom/xiaopeng/util/LocaleStrings;->getInstance()Lcom/xiaopeng/util/LocaleStrings;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mDefaultWindowConflictDescriptor:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;

    iget-object v1, v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;->toastValueId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/util/LocaleStrings;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 171
    :cond_4
    const-string v0, "Windows on screen conflict,please exit first"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static parseFromAsset()[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .locals 6

    .line 197
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 199
    .local v0, "assetManager":Landroid/content/res/AssetManager;
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "UserScenarioParser"

    const-string v3, "parseFromAsset enter"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    const-string v2, "Config/userscenario.txt"

    invoke-virtual {v0, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 201
    .local v2, "is":Ljava/io/InputStream;
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->readFromFile(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "jsonStr":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 204
    if-nez v3, :cond_0

    .line 205
    return-object v1

    .line 207
    :cond_0
    invoke-static {v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->parseFromJsonString(Ljava/lang/String;)[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v4

    .line 209
    .local v1, "configerGroup":[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    return-object v1

    .line 210
    .end local v1    # "configerGroup":[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "jsonStr":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 211
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "UserScenarioParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseFromAsset e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    .end local v2    # "e":Ljava/io/IOException;
    return-object v1
.end method

.method private static parseFromFile(Ljava/lang/String;)[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .locals 2
    .param p0, "filePath"    # Ljava/lang/String;

    .line 217
    const-string v0, "UserScenarioParser"

    const-string v1, "parseFromFile enter"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-static {p0}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 220
    .local v0, "jsonStr":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 221
    const/4 v1, 0x0

    return-object v1

    .line 223
    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->parseFromJsonString(Ljava/lang/String;)[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    move-result-object v1

    .line 225
    .local v1, "configerGroup":[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    return-object v1
.end method

.method private static parseFromJsonString(Ljava/lang/String;)[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .locals 13
    .param p0, "jsonStr"    # Ljava/lang/String;

    .line 230
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 231
    .local v0, "objOrigin":Lorg/json/JSONObject;
    const-string/jumbo v1, "version"

    const-string v2, "0.0.1"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mVersionCode:Ljava/lang/String;

    .line 232
    const-string v1, "UserScenarioParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseFromJsonString mVersionCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mVersionCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string v1, "groups"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    sput v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mGroupCount:I

    .line 236
    const-string v1, "overallData"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 237
    .local v1, "overallObj":Lorg/json/JSONObject;
    const-string v3, "globalData"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    .line 238
    .local v3, "groupObj":Lorg/json/JSONObject;
    sget v4, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mGroupCount:I

    if-ne v2, v4, :cond_0

    if-nez v1, :cond_0

    .line 239
    move-object v1, v3

    .line 242
    :cond_0
    const/4 v4, 0x0

    .line 243
    .local v4, "conflictFlag":I
    const/4 v5, 0x0

    if-eqz v1, :cond_1

    .line 244
    const-string v6, "conflictHint"

    invoke-virtual {v1, v6, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v6

    move v4, v6

    .line 247
    :cond_1
    if-ne v2, v4, :cond_2

    .line 249
    const-string v2, "conflict-window"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 251
    .local v2, "windowConflicts":Lorg/json/JSONArray;
    :try_start_1
    invoke-static {v2}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->parseWindowConflicts(Lorg/json/JSONArray;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 254
    goto :goto_0

    .line 252
    :catch_0
    move-exception v6

    .line 253
    .local v6, "e2":Ljava/lang/Exception;
    :try_start_2
    const-string v7, "UserScenarioParser"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "parseFromJsonString e2="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    .end local v2    # "windowConflicts":Lorg/json/JSONArray;
    .end local v6    # "e2":Ljava/lang/Exception;
    :cond_2
    :goto_0
    sget v2, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mGroupCount:I

    new-array v2, v2, [[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 258
    .local v2, "configerGroup":[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    move-object v6, v3

    move v3, v5

    .line 258
    .local v3, "count":I
    .local v6, "groupObj":Lorg/json/JSONObject;
    :goto_1
    sget v7, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mGroupCount:I

    if-ge v3, v7, :cond_6

    .line 259
    const/4 v7, 0x0

    .line 260
    .local v7, "jsonArray":Lorg/json/JSONArray;
    if-nez v3, :cond_3

    .line 261
    const-string v8, "data"

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move-object v7, v8

    goto :goto_2

    .line 263
    :cond_3
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "data"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    move-object v7, v8

    .line 264
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "globalData"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v8

    move-object v6, v8

    .line 266
    :goto_2
    if-eqz v7, :cond_5

    .line 267
    invoke-virtual {v7}, Lorg/json/JSONArray;->length()I

    move-result v8

    .line 268
    .local v8, "size":I
    const-string v9, "UserScenarioParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "parseFromJsonString,size-"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ",group:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    new-array v9, v8, [Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    .line 270
    .local v9, "configers":[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    move v10, v5

    .line 270
    .local v10, "i":I
    :goto_3
    if-ge v10, v8, :cond_4

    .line 271
    invoke-virtual {v7, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 272
    .local v11, "obj":Lorg/json/JSONObject;
    invoke-static {v11, v6}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->createFromJsonObject(Lorg/json/JSONObject;Lorg/json/JSONObject;)Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    move-result-object v12

    aput-object v12, v9, v10

    .line 273
    aget-object v12, v9, v10

    invoke-virtual {v12, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setGroupIndex(I)V

    .line 274
    aget-object v12, v9, v10

    invoke-virtual {v12, v4}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->setConflictHintFlag(I)V

    .line 277
    aget-object v12, v9, v10

    invoke-virtual {v12}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;->invalidData()V

    .line 270
    .end local v11    # "obj":Lorg/json/JSONObject;
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 280
    .end local v10    # "i":I
    :cond_4
    aput-object v9, v2, v3

    .line 281
    .end local v8    # "size":I
    .end local v9    # "configers":[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    goto :goto_4

    .line 282
    :cond_5
    const-string v8, "UserScenarioParser"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseFromJsonString,no data for group "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 258
    .end local v7    # "jsonArray":Lorg/json/JSONArray;
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    .line 286
    .end local v3    # "count":I
    :cond_6
    return-object v2

    .line 287
    .end local v0    # "objOrigin":Lorg/json/JSONObject;
    .end local v1    # "overallObj":Lorg/json/JSONObject;
    .end local v2    # "configerGroup":[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .end local v4    # "conflictFlag":I
    .end local v6    # "groupObj":Lorg/json/JSONObject;
    :catch_1
    move-exception v0

    .line 288
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "UserScenarioParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseFromJsonString e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 291
    .end local v0    # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseUserScenarioConfig()[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    .locals 4

    .line 176
    const-string v0, "userscenario.txt"

    invoke-static {v0}, Lcom/xiaopeng/util/xpSysConfigUtil;->getConfigContent(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    .local v0, "content":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 178
    invoke-static {v0}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->parseFromJsonString(Ljava/lang/String;)[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    move-result-object v1

    .line 179
    .local v1, "configerGroup":[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    if-eqz v1, :cond_0

    .line 180
    const-string v2, "UserScenarioParser"

    const-string v3, "parse configers from file done"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    return-object v1

    .line 185
    .end local v1    # "configerGroup":[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->parseFromAsset()[[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioConfiger;

    move-result-object v1

    return-object v1
.end method

.method private static parseWindowConflicts(Lorg/json/JSONArray;)V
    .locals 15
    .param p0, "array"    # Lorg/json/JSONArray;

    .line 640
    if-eqz p0, :cond_3

    .line 641
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v0

    .line 642
    .local v0, "len":I
    const-string v1, "UserScenarioParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseWindowConflicts,windowConflicts len="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    add-int/lit8 v1, v0, -0x1

    new-array v1, v1, [Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;

    sput-object v1, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mWindowConflictDescriptors:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;

    .line 644
    const/4 v1, 0x0

    .line 645
    .local v1, "winConflictLen":I
    const-string/jumbo v2, "winType"

    .line 646
    .local v2, "keyWinType":Ljava/lang/String;
    const-string v3, "resId"

    .line 647
    .local v3, "keyResId":Ljava/lang/String;
    const-string v4, "panelAdapt"

    .line 648
    .local v4, "keyPanelAdapt":Ljava/lang/String;
    const/4 v5, 0x0

    move v6, v1

    move v1, v5

    .line 648
    .local v1, "i":I
    .local v6, "winConflictLen":I
    :goto_0
    if-ge v1, v0, :cond_3

    .line 649
    new-instance v7, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;

    const/4 v8, 0x0

    invoke-direct {v7, v8}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;-><init>(Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$1;)V

    .line 650
    .local v7, "desc":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;
    move-object v9, v8

    .line 652
    .local v9, "obj":Lorg/json/JSONObject;
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v9, v10

    .line 656
    nop

    .line 657
    invoke-virtual {v9, v4, v5}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v10

    const/4 v11, 0x1

    if-ne v11, v10, :cond_0

    move v10, v11

    goto :goto_1

    :cond_0
    move v10, v5

    :goto_1
    iput-boolean v10, v7, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;->panelAdapt:Z

    .line 658
    invoke-virtual {v9, v2, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 660
    .local v8, "types":Ljava/lang/String;
    const-string v10, "mode_cf_win_activity"

    invoke-virtual {v9, v3, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v7, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;->toastValueId:Ljava/lang/String;

    .line 662
    const-string v10, "0"

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 663
    iput-boolean v11, v7, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;->isDefault:Z

    .line 664
    new-array v10, v11, [I

    aput v5, v10, v5

    iput-object v10, v7, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;->windowIds:[I

    .line 665
    sput-object v7, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mDefaultWindowConflictDescriptor:Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;

    .line 666
    const-string v10, "UserScenarioParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parseWindowConflicts,default:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 669
    :cond_1
    const-string v10, ","

    invoke-virtual {v8, v10}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 670
    .local v10, "ids":[Ljava/lang/String;
    array-length v11, v10

    .line 671
    .local v11, "length":I
    new-array v12, v11, [I

    iput-object v12, v7, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;->windowIds:[I

    .line 672
    move v12, v5

    .line 672
    .local v12, "k":I
    :goto_2
    array-length v13, v10

    if-ge v12, v13, :cond_2

    .line 673
    iget-object v13, v7, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;->windowIds:[I

    aget-object v14, v10, v12

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    aput v14, v13, v12

    .line 672
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 675
    .end local v12    # "k":I
    :cond_2
    sget-object v12, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser;->mWindowConflictDescriptors:[Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;

    add-int/lit8 v13, v6, 0x1

    .line 675
    .local v13, "winConflictLen":I
    aput-object v7, v12, v6

    .line 676
    .end local v6    # "winConflictLen":I
    const-string v6, "UserScenarioParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "parseWindowConflicts:"

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    .end local v7    # "desc":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;
    .end local v8    # "types":Ljava/lang/String;
    .end local v9    # "obj":Lorg/json/JSONObject;
    .end local v10    # "ids":[Ljava/lang/String;
    .end local v11    # "length":I
    move v6, v13

    goto :goto_3

    .line 653
    .end local v13    # "winConflictLen":I
    .restart local v6    # "winConflictLen":I
    .restart local v7    # "desc":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;
    .restart local v9    # "obj":Lorg/json/JSONObject;
    :catch_0
    move-exception v8

    .line 654
    .local v8, "e":Ljava/lang/Exception;
    const-string v10, "UserScenarioParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "parseWindowConflicts e="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 655
    nop

    .line 648
    .end local v7    # "desc":Lcom/xiaopeng/xuiservice/userscenario/UserScenarioParser$WindowConflictDescriptor;
    .end local v8    # "e":Ljava/lang/Exception;
    .end local v9    # "obj":Lorg/json/JSONObject;
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 680
    .end local v0    # "len":I
    .end local v1    # "i":I
    .end local v2    # "keyWinType":Ljava/lang/String;
    .end local v3    # "keyResId":Ljava/lang/String;
    .end local v4    # "keyPanelAdapt":Ljava/lang/String;
    .end local v6    # "winConflictLen":I
    :cond_3
    return-void
.end method
