.class public Lcom/xiaopeng/carcontrol/CarControlService;
.super Landroid/app/Service;
.source "CarControlService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CarControlService"


# instance fields
.field private volatile mHasPendingCustomKeyAction:Z

.field private volatile mHasPendingMirrorAction:Z

.field private volatile mIsCarSvcReady:Z

.field private volatile mMirrorPanelType:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    .line 77
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/CarControlService;->mIsCarSvcReady:Z

    .line 78
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/CarControlService;->mHasPendingCustomKeyAction:Z

    .line 79
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/CarControlService;->mHasPendingMirrorAction:Z

    const/4 v0, -0x1

    .line 80
    iput v0, p0, Lcom/xiaopeng/carcontrol/CarControlService;->mMirrorPanelType:I

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 133
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 134
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleIntent action: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CarControlService"

    invoke-static {v4, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    const-string v5, "com.xiaopeng.intent.action.xkey.user"

    const/4 v9, -0x1

    const/4 v12, 0x1

    sparse-switch v3, :sswitch_data_0

    :goto_0
    move v3, v9

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/16 v3, 0x1b

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_MICROPHONE_MUTE_DIALOG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v3, 0x1a

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_SEAT_MASSAGE_DIALOG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const/16 v3, 0x19

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "com.xiaopeng.carcontrol.intent.action.ACTION_CAMERA_AUTH_NOTIFY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_0

    :cond_4
    const/16 v3, 0x18

    goto/16 :goto_1

    :sswitch_4
    const-string v3, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_PSN_SRS_CLOSE_DIALOG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_0

    :cond_5
    const/16 v3, 0x17

    goto/16 :goto_1

    :sswitch_5
    const-string v3, "com.xiaopeng.carcontrol.intent.action.SHOW_MATTRESS"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_0

    :cond_6
    const/16 v3, 0x16

    goto/16 :goto_1

    :sswitch_6
    const-string v3, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_AVAS_CLOSE_CONFIRM_NOTIFY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_0

    :cond_7
    const/16 v3, 0x15

    goto/16 :goto_1

    :sswitch_7
    const-string v3, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_SEAT_ADJUST_DIALOG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_0

    :cond_8
    const/16 v3, 0x14

    goto/16 :goto_1

    :sswitch_8
    const-string v3, "com.xiaopeng.intent.action.xkey"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    goto :goto_0

    :cond_9
    const/16 v3, 0x13

    goto/16 :goto_1

    :sswitch_9
    const-string v3, "com.xiaopeng.datacompare.broadcast"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    goto :goto_0

    :cond_a
    const/16 v3, 0x12

    goto/16 :goto_1

    :sswitch_a
    const-string v3, "com.xiaopeng.carcontrol.intent.action.ACTION_PROCESS_SEAT_NOTIFY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x11

    goto/16 :goto_1

    :sswitch_b
    const-string v3, "android.intent.action.LOCALE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    goto/16 :goto_0

    :cond_c
    const/16 v3, 0x10

    goto/16 :goto_1

    :sswitch_c
    const-string v3, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_FAULT_PANEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    goto/16 :goto_0

    :cond_d
    const/16 v3, 0xf

    goto/16 :goto_1

    :sswitch_d
    const-string v3, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_REAR_LOGO_LIGHT_CONFIRM_NOTIFY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    goto/16 :goto_0

    :cond_e
    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_e
    const-string v3, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_REAR_LOGO_LIGHT_CONFIRM_DIALOG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_0

    :cond_f
    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_f
    const-string v3, "com.xiaopeng.smartcontrol.intent.action.ACTION_SHOW_LLU_ACTIVITY"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_0

    :cond_10
    const/16 v3, 0xc

    goto/16 :goto_1

    :sswitch_10
    const-string v3, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_MICROPHONE_UNMUTE_DIALOG"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_0

    :cond_11
    const/16 v3, 0xb

    goto/16 :goto_1

    :sswitch_11
    const-string v3, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_MASSAGE_VIEW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_0

    :cond_12
    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_12
    const-string v3, "com.xiaopeng.carcontrol.intent.action.ACTION_OPERATOR_MICROPHONE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_13
    const-string v3, "com.xiaopeng.intent.action.diagnostic.FAULT_CODE_STATE_CHANGED"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_0

    :cond_14
    const/16 v3, 0x8

    goto/16 :goto_1

    :sswitch_14
    const-string v3, "com.xiaopeng.intent.action.bosskey"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto/16 :goto_0

    :cond_15
    const/4 v3, 0x7

    goto :goto_1

    :sswitch_15
    const-string v3, "com.xiaopeng.carcontrol.intent.action.ACTION_AVM_SETTING_OPEN"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto/16 :goto_0

    :cond_16
    const/4 v3, 0x6

    goto :goto_1

    :sswitch_16
    const-string v3, "com.xiaopeng.xui.userscenario"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto/16 :goto_0

    :cond_17
    const/4 v3, 0x5

    goto :goto_1

    :sswitch_17
    const-string v3, "com.xiaopeng.carcontrol.intent.action.ACTION_CLOSE_READY_NFC_OVERTIME"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto/16 :goto_0

    :cond_18
    const/4 v3, 0x4

    goto :goto_1

    :sswitch_18
    const-string v3, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_MIRROR_CONTROL_PANEL"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto/16 :goto_0

    :cond_19
    const/4 v3, 0x3

    goto :goto_1

    :sswitch_19
    const-string v3, "com.xiaopeng.carcontrol.intent.action.ACTION_CLOSE_SEAT_BELT_WARNING_REMIND"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto/16 :goto_0

    :cond_1a
    const/4 v3, 0x2

    goto :goto_1

    :sswitch_1a
    const-string v3, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_AMBIENT_VIEW"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto/16 :goto_0

    :cond_1b
    move v3, v12

    goto :goto_1

    :sswitch_1b
    const-string v3, "com.xiaopeng.action.SMART_VEHICLE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto/16 :goto_0

    :cond_1c
    const/4 v3, 0x0

    :goto_1
    const-string v14, "microphoneDisplayId"

    const-string v15, "Car Api not connected, pending show custom key panel action"

    const-string v6, "dialog_screen_id"

    const-string/jumbo v8, "show_dialog"

    const-string/jumbo v11, "short"

    const-string v7, "Get AudioViewModel failed"

    const-string v10, "keytype"

    const/16 v13, 0xbc0

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_3

    .line 144
    :pswitch_0
    iget-boolean v0, v1, Lcom/xiaopeng/carcontrol/CarControlService;->mIsCarSvcReady:Z

    if-eqz v0, :cond_1d

    .line 148
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object v0

    invoke-virtual {v0, v2, v13}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->show(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 151
    :cond_1d
    iput-boolean v12, v1, Lcom/xiaopeng/carcontrol/CarControlService;->mHasPendingCustomKeyAction:Z

    .line 152
    invoke-static {v4, v15}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 229
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/carcontrol/viewmodel/audio/IAudioViewModel;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImplSync(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/viewmodel/audio/IAudioViewModel;

    if-eqz v2, :cond_1e

    .line 231
    invoke-virtual {v0, v14, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 232
    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/audio/IAudioViewModel;->confirmMuteMicrophone(I)V

    goto/16 :goto_3

    :cond_1e
    const/4 v0, 0x0

    .line 234
    invoke-static {v4, v7, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 290
    :pswitch_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object v2

    invoke-virtual {v0, v8, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x3

    .line 291
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "rear_seat_massage_panel"

    .line 290
    invoke-virtual {v2, v4, v13, v3, v0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->showRearSeatPanel(Ljava/lang/String;IZI)V

    goto/16 :goto_3

    :pswitch_3
    const-string v0, "handleIntent: ACTION_CAMERA_AUTH_NOTIFY"

    .line 435
    invoke-static {v4, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v2, "xp_CameraAuthService"

    .line 437
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController;

    .line 438
    invoke-interface {v0, v12}, Lcom/xiaopeng/carcontrol/carmanager/controller/ICameraAuthController;->setCameraAuthState(I)V

    goto/16 :goto_3

    .line 220
    :pswitch_4
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImplSync(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    if-eqz v0, :cond_1f

    .line 222
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->showPsnSrsCloseDialog()V

    goto/16 :goto_3

    :cond_1f
    const-string v0, "Get SeatViewModel failed"

    const/4 v2, 0x0

    .line 224
    invoke-static {v4, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 272
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.xiaopeng.carcontrol.intent.action.SHOW_SPACE_CAPSULE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "space_mode_start"

    .line 273
    invoke-virtual {v0, v2, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "mode_type"

    const/16 v3, 0x8

    .line 274
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    .line 275
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v2, 0x400

    .line 276
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 277
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/App;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 380
    :pswitch_6
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v2, Lcom/xiaopeng/carcontrol/viewmodel/avas/IAvasViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/IAvasViewModel;

    const/4 v2, 0x0

    .line 381
    invoke-interface {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/avas/IAvasViewModel;->setLowSpdEnable(Z)V

    goto/16 :goto_3

    .line 294
    :pswitch_7
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object v2

    invoke-virtual {v0, v8, v12}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    const/4 v4, 0x3

    .line 295
    invoke-virtual {v0, v6, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v4, "rear_seat_adjust_panel"

    .line 294
    invoke-virtual {v2, v4, v13, v3, v0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->showRearSeatPanel(Ljava/lang/String;IZI)V

    goto/16 :goto_3

    .line 197
    :pswitch_8
    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_20

    .line 198
    invoke-direct/range {p0 .. p1}, Lcom/xiaopeng/carcontrol/CarControlService;->handleXKEY(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 199
    :cond_20
    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "long"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    .line 200
    iget-boolean v0, v1, Lcom/xiaopeng/carcontrol/CarControlService;->mIsCarSvcReady:Z

    if-eqz v0, :cond_21

    .line 201
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object v0

    invoke-virtual {v0, v5, v13}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->show(Ljava/lang/String;I)V

    goto/16 :goto_3

    .line 203
    :cond_21
    iput-boolean v12, v1, Lcom/xiaopeng/carcontrol/CarControlService;->mHasPendingCustomKeyAction:Z

    .line 204
    invoke-static {v4, v15}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 372
    :pswitch_9
    invoke-direct/range {p0 .. p1}, Lcom/xiaopeng/carcontrol/CarControlService;->handleRearSeatNotify(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 403
    :pswitch_a
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->reInitPanels()V

    .line 404
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v2, Lcom/xiaopeng/carcontrol/viewmodel/audio/IAudioViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImplSync(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/audio/IAudioViewModel;

    if-eqz v0, :cond_22

    .line 406
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/audio/IAudioViewModel;->dismissAllDialogs()V

    .line 408
    :cond_22
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImplSync(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    if-eqz v0, :cond_23

    .line 411
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatNameData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    invoke-virtual {v2, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 412
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatNameData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v12}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    invoke-virtual {v2, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 413
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatNameData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    invoke-virtual {v2, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 414
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtNameData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    invoke-virtual {v2, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 415
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtNameData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v12}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    invoke-virtual {v2, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 416
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowLtNameData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRLSeatName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    invoke-virtual {v2, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 417
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtNameData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v5}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    invoke-virtual {v2, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 418
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtNameData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v12}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v12

    invoke-virtual {v2, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 419
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getSecRowRtNameData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-array v4, v3, [Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getRRSeatName(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v12

    invoke-virtual {v2, v4}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    goto :goto_2

    :cond_23
    const/4 v3, 0x2

    .line 422
    :goto_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v2, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    .line 423
    invoke-virtual {v0, v12}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTyrePressureFloat(I)F

    move-result v2

    invoke-virtual {v0, v12, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->onTpmsPressureChanged(IF)V

    .line 424
    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTyrePressureFloat(I)F

    move-result v2

    invoke-virtual {v0, v3, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->onTpmsPressureChanged(IF)V

    const/4 v2, 0x3

    .line 425
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTyrePressureFloat(I)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->onTpmsPressureChanged(IF)V

    const/4 v2, 0x4

    .line 426
    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getTyrePressureFloat(I)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->onTpmsPressureChanged(IF)V

    .line 428
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v2, Lcom/xiaopeng/carcontrol/viewmodel/meter/IMeterViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    .line 429
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getMileageSinceLastChargeFloat()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->onMileageLastChargeChanged(F)V

    .line 430
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getMileageSinceStartUpFloat()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->onMileageStartUpChanged(F)V

    .line 431
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getMileageAFloat()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->onMileageAChanged(F)V

    .line 432
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getMileageBFloat()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->onMileageBChanged(F)V

    goto/16 :goto_3

    :pswitch_b
    const-string/jumbo v2, "\u5e7f\u64ad\u8fdb\u6765\u5566"

    .line 298
    invoke-static {v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "Fault_Panel_Info"

    .line 299
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 301
    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 302
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo v0, "type"

    .line 303
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v12, :cond_24

    const-string v0, "businessType"

    .line 306
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v3, "faultCode"

    .line 307
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 308
    new-instance v3, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlService$VdSgENUMOMfpjMAWR4UUgUh7prY;

    invoke-direct {v3, v1, v0, v2}, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlService$VdSgENUMOMfpjMAWR4UUgUh7prY;-><init>(Lcom/xiaopeng/carcontrol/CarControlService;ILjava/lang/String;)V

    invoke-static {v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    goto/16 :goto_3

    :cond_24
    const/4 v2, 0x2

    if-ne v0, v2, :cond_28

    const-string v0, "VEHICLE"

    .line 350
    invoke-direct {v1, v0}, Lcom/xiaopeng/carcontrol/CarControlService;->showSmartPanelToServiceVm(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    .line 354
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 375
    :pswitch_c
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImplSync(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    .line 376
    invoke-interface {v0, v12}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;->setRearLogoLightSw(Z)V

    goto/16 :goto_3

    .line 251
    :pswitch_d
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImplSync(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;

    if-eqz v0, :cond_25

    .line 253
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILampViewModel;->showRearLogoLightConfirmDialog()V

    goto/16 :goto_3

    :cond_25
    const-string v0, "Get LampViewModel failed"

    const/4 v2, 0x0

    .line 255
    invoke-static {v4, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    .line 194
    :pswitch_e
    invoke-virtual/range {p0 .. p1}, Lcom/xiaopeng/carcontrol/CarControlService;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_3

    :pswitch_f
    const/4 v2, 0x0

    .line 239
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v3

    const-class v5, Lcom/xiaopeng/carcontrol/viewmodel/audio/IAudioViewModel;

    invoke-virtual {v3, v5}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImplSync(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/carcontrol/viewmodel/audio/IAudioViewModel;

    if-eqz v3, :cond_26

    const-string v4, "dismissUnmute"

    .line 242
    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    .line 243
    invoke-virtual {v0, v14, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 244
    invoke-interface {v3, v2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/audio/IAudioViewModel;->confirmUnmuteMicrophone(ZI)V

    goto/16 :goto_3

    .line 246
    :cond_26
    invoke-static {v4, v7, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :pswitch_10
    const-string v0, "SEAT"

    const-string v2, "SEAT_MASSAGE"

    .line 366
    invoke-direct {v1, v0, v2}, Lcom/xiaopeng/carcontrol/CarControlService;->showSmartPanelToServiceVm(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 260
    :pswitch_11
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/carcontrol/viewmodel/audio/IAudioViewModel;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImplSync(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/viewmodel/audio/IAudioViewModel;

    if-eqz v2, :cond_27

    const-string v3, "is_mute_microphone"

    const/4 v5, 0x0

    .line 262
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    invoke-interface {v2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/audio/IAudioViewModel;->setMicrophoneMute(Z)V

    goto/16 :goto_3

    :cond_27
    const/4 v5, 0x0

    .line 264
    invoke-static {v4, v7, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_3

    :pswitch_12
    const-string v0, "receive broadcast from diagnostic"

    .line 358
    invoke-static {v4, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v2, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;

    .line 360
    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;->getAllFaultList()V

    goto/16 :goto_3

    .line 210
    :pswitch_13
    invoke-virtual {v0, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "keyfunc"

    const/4 v5, 0x0

    .line 211
    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 212
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyType: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ", keyFunc: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    invoke-virtual {v2, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    if-nez v0, :cond_28

    .line 215
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->custom_door_key_no_setting:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    goto :goto_3

    :pswitch_14
    const-string v0, "SCREENAGE"

    .line 369
    invoke-direct {v1, v0}, Lcom/xiaopeng/carcontrol/CarControlService;->showSmartPanelToServiceVm(Ljava/lang/String;)V

    goto :goto_3

    .line 280
    :pswitch_15
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->parseScenarioIntent(Landroid/content/Intent;)V

    goto :goto_3

    .line 392
    :pswitch_16
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object v2

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const/16 v5, 0xc

    invoke-virtual {v2, v3, v5}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->cancelNotificationByID(Landroid/content/Context;I)V

    :pswitch_17
    const-string v2, "fileSavePath"

    .line 395
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 396
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fileSavePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    new-instance v2, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlService$WqzztmiWWBZUC68CcOgYltOJuGc;

    invoke-direct {v2, v0}, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlService$WqzztmiWWBZUC68CcOgYltOJuGc;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-static {v3, v2}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;)V

    goto :goto_3

    :pswitch_18
    const/4 v3, 0x0

    const-string v2, "key_show_mirror_panel_inner"

    .line 181
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    const-string v2, "key_show_mirror_panel_type"

    .line 182
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    goto :goto_3

    :pswitch_19
    const/4 v3, 0x0

    .line 387
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImplSync(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    .line 388
    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;->setRearSeatBeltWarningPopUpSw(Z)V

    goto :goto_3

    :pswitch_1a
    const-string v0, "LAMP"

    const-string v2, "LAMP_ATL"

    .line 363
    invoke-direct {v1, v0, v2}, Lcom/xiaopeng/carcontrol/CarControlService;->showSmartPanelToServiceVm(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 269
    :pswitch_1b
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ciu/CiuSmartControl;->startCiuControlPage()V

    :cond_28
    :goto_3
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x79f5956e -> :sswitch_1b
        -0x6e0a5d24 -> :sswitch_1a
        -0x5b32c5e5 -> :sswitch_19
        -0x5999e94e -> :sswitch_18
        -0x566b37b6 -> :sswitch_17
        -0x5356022f -> :sswitch_16
        -0x49e0f16e -> :sswitch_15
        -0x479989a8 -> :sswitch_14
        -0x3c4582c2 -> :sswitch_13
        -0x3a34770d -> :sswitch_12
        -0x344b2837 -> :sswitch_11
        -0x30db7590 -> :sswitch_10
        -0x297451c2 -> :sswitch_f
        -0x22882fc7 -> :sswitch_e
        -0x111a95c6 -> :sswitch_d
        -0x6ced769 -> :sswitch_c
        -0x122164c -> :sswitch_b
        0x411c221 -> :sswitch_a
        0x12ad913a -> :sswitch_9
        0x2247c221 -> :sswitch_8
        0x23532e0e -> :sswitch_7
        0x24fe3857 -> :sswitch_6
        0x47def5b2 -> :sswitch_5
        0x6b1017fe -> :sswitch_4
        0x74715498 -> :sswitch_3
        0x780def46 -> :sswitch_2
        0x789ce169 -> :sswitch_1
        0x79508f78 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
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
        :pswitch_a
        :pswitch_9
        :pswitch_17
        :pswitch_8
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

.method private handleRearSeatNotify(Landroid/content/Intent;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const-string v0, "CarControlService"

    :try_start_0
    const-string/jumbo v1, "xpCarControl_SeatNotify"

    .line 487
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "show_seat_fold"

    const/4 v3, 0x0

    .line 488
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    const-string/jumbo v4, "show_seat_trd_left"

    .line 489
    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    const-string/jumbo v5, "show_seat_trd_left_target"

    const/4 v6, -0x1

    .line 490
    invoke-virtual {p1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string v7, "Notify_Dismiss"

    .line 491
    invoke-virtual {p1, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v8, "show_key_connected"

    .line 492
    invoke-virtual {p1, v8, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v8

    const-string/jumbo v9, "show_phone_location_outside"

    .line 493
    invoke-virtual {p1, v9, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    .line 494
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "data = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 495
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 496
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/CarControlService;->handleXKEY(Landroid/content/Intent;)V

    return-void

    .line 499
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string/jumbo p1, "seat_dc"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v3, 0xe

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo p1, "seat_ac"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v3, 0xd

    goto/16 :goto_1

    :sswitch_2
    const-string/jumbo p1, "seat_save"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_1

    :sswitch_3
    const-string/jumbo p1, "show_dialog_ready_disable"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_4
    const-string p1, "psn_seat_restore"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x4

    goto/16 :goto_1

    :sswitch_5
    const-string/jumbo p1, "seat_steer"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x6

    goto/16 :goto_1

    :sswitch_6
    const-string/jumbo p1, "show_seat_speech_notify"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v3, 0xb

    goto :goto_1

    :sswitch_7
    const-string/jumbo p1, "seat_easy_load"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v3, 0xf

    goto :goto_1

    :sswitch_8
    const-string/jumbo p1, "show_seat_speech_notify_dismiss"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v3, 0xc

    goto :goto_1

    :sswitch_9
    const-string p1, "all_seat_zero_reset"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v3, 0x9

    goto :goto_1

    :sswitch_a
    const-string/jumbo p1, "seat_save_as"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x2

    goto :goto_1

    :sswitch_b
    const-string/jumbo p1, "seat_mirror"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_c
    const-string p1, "psn_seat_save"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_d
    const-string/jumbo p1, "seat_restore"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :sswitch_e
    const-string/jumbo p1, "rl_seat_zero_reset"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 v3, 0x7

    goto :goto_1

    :sswitch_f
    const-string/jumbo p1, "rr_seat_zero_reset"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/16 v3, 0x8

    goto :goto_1

    :cond_1
    :goto_0
    move v3, v6

    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_2

    .line 548
    :pswitch_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;->doEasyLoadAction()V

    goto/16 :goto_2

    .line 545
    :pswitch_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;->doDcAction()V

    goto/16 :goto_2

    .line 542
    :pswitch_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearDropDownMenu;->doAcAction()V

    goto/16 :goto_2

    :pswitch_3
    if-lez v7, :cond_2

    .line 538
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;

    move-result-object p1

    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1, v7}, Lcom/xiaopeng/carcontrol/view/dialog/notify/NotifyCreateUtil;->cancelNotificationByID(Landroid/content/Context;I)V

    goto/16 :goto_2

    .line 534
    :pswitch_4
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify;

    move-result-object p1

    invoke-virtual {p1, v2, v4, v5}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatSpeechNotify;->doFoldAndStow(ZZI)V

    goto :goto_2

    .line 531
    :pswitch_5
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;

    move-result-object p1

    invoke-virtual {p1, v8, v9}, Lcom/xiaopeng/carcontrol/view/dialog/notify/ReadyDisableNotify;->BleDisconnection(ZZ)V

    goto :goto_2

    .line 528
    :pswitch_6
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu;->doAllZeroReset()V

    goto :goto_2

    .line 525
    :pswitch_7
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu;->doRRZeroReset()V

    goto :goto_2

    .line 522
    :pswitch_8
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPGearMenu;->doRLZeroReset()V

    goto :goto_2

    .line 519
    :pswitch_9
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->doSteerAction()V

    goto :goto_2

    .line 516
    :pswitch_a
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->doMirrorAction()V

    goto :goto_2

    .line 513
    :pswitch_b
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;->doRecoverAction()V

    goto :goto_2

    .line 510
    :pswitch_c
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyPsnMenu;->doSaveAction()V

    goto :goto_2

    .line 507
    :pswitch_d
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->doSaveAsAction()V

    goto :goto_2

    .line 504
    :pswitch_e
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->doRecoverAction()V

    goto :goto_2

    .line 501
    :pswitch_f
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/view/dialog/notify/SeatNotifyDrvMenu;->doSaveAction()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 552
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7a83388d -> :sswitch_f
        -0x5e7e6c93 -> :sswitch_e
        -0x40278dac -> :sswitch_d
        -0x23266cfd -> :sswitch_c
        -0x1ae644c7 -> :sswitch_b
        -0x11f17e06 -> :sswitch_a
        -0xc5aaf2c -> :sswitch_9
        0xbdcd059 -> :sswitch_8
        0xc2b1149 -> :sswitch_7
        0x2020650e -> :sswitch_6
        0x3949ab17 -> :sswitch_5
        0x5d264b48 -> :sswitch_4
        0x5def3197 -> :sswitch_3
        0x6d33a777 -> :sswitch_2
        0x7553289c -> :sswitch_1
        0x755328f9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method private handleXKEY(Landroid/content/Intent;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 446
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    .line 447
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;

    .line 448
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/carcontrol/viewmodel/xpu/IXpuViewModel;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/viewmodel/xpu/IXpuViewModel;

    const-string v3, "keyfunc"

    const/4 v4, 0x0

    .line 449
    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 v3, 0x8

    if-eq p1, v3, :cond_0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 480
    :pswitch_0
    invoke-interface {v1, v4}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;->controlSdcByXKey(Z)V

    goto :goto_0

    .line 476
    :pswitch_1
    invoke-interface {v1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;->controlSdcByXKey(Z)V

    goto :goto_0

    .line 472
    :pswitch_2
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;->controlRightSlideDoorByXKey()V

    goto :goto_0

    .line 468
    :pswitch_3
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IWindowDoorViewModel;->controlLeftSlideDoorByXKey()V

    goto :goto_0

    .line 464
    :pswitch_4
    invoke-interface {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;->controlChargePortByXKey(Z)V

    goto :goto_0

    .line 460
    :pswitch_5
    invoke-interface {v0, v4}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;->controlChargePortByXKey(Z)V

    goto :goto_0

    .line 456
    :pswitch_6
    invoke-interface {v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/xpu/IXpuViewModel;->setXpuAdasOneShotActive(Z)V

    goto :goto_0

    .line 452
    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlService$pGhugAVtFNUpksX8jjh6Z95ZVWk;->INSTANCE:Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlService$pGhugAVtFNUpksX8jjh6Z95ZVWk;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic lambda$handleIntent$3(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "fileSavePath"
        }
    .end annotation

    .line 398
    invoke-static {}, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->getInstance()Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/carcontrol/statistic/DataCompareWriter;->writeData(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$handleXKEY$4()V
    .locals 1

    .line 452
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/CabinSmartControl;->unlockTrunk()V

    return-void
.end method

.method static synthetic lambda$postShowDialogToServiceVm$5(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "dialogScene"
        }
    .end annotation

    .line 563
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    .line 564
    invoke-interface {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;->onShowDialog(Ljava/lang/String;)V

    return-void
.end method

.method private postShowDialogToServiceVm(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogScene"
        }
    .end annotation

    .line 562
    new-instance v0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlService$5-eCldca5GyXCyrPk-mSzMM_64U;

    invoke-direct {v0, p1}, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlService$5-eCldca5GyXCyrPk-mSzMM_64U;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private showSmartPanelToServiceVm(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation

    .line 574
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    .line 575
    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;->onShowSmartControlPanel(Ljava/lang/String;)V

    return-void
.end method

.method private showSmartPanelToServiceVm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mainPage",
            "subPage"
        }
    .end annotation

    .line 569
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    .line 570
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;->onShowSmartControlPanel(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$handleIntent$2$CarControlService(ILjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "businessType",
            "faultCode"
        }
    .end annotation

    .line 308
    new-instance v0, Lcom/xiaopeng/carcontrol/CarControlService$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/CarControlService$1;-><init>(Lcom/xiaopeng/carcontrol/CarControlService;)V

    invoke-static {p1, p2, v0}, Lcom/xiaopeng/carcontrol/IpcRouterService;->getFaultCode(ILjava/lang/String;Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V

    return-void
.end method

.method public synthetic lambda$null$0$CarControlService()V
    .locals 3

    .line 102
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/carcontrol/CarControlService;->mMirrorPanelType:I

    const-string v2, "com.xiaopeng.carcontrol.intent.action.ACTION_SHOW_MIRROR_CONTROL_PANEL"

    .line 103
    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->show(Ljava/lang/String;I)V

    return-void
.end method

.method public synthetic lambda$onCreate$1$CarControlService()V
    .locals 4

    .line 88
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->isCarServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 89
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/CarControlService;->mIsCarSvcReady:Z

    .line 90
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/CarControlService;->mHasPendingCustomKeyAction:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "isSupportNapa"

    .line 91
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "custom_x_key_dialog"

    .line 92
    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/CarControlService;->postShowDialogToServiceVm(Ljava/lang/String;)V

    goto :goto_0

    .line 94
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->getInstance()Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;

    move-result-object v0

    const/16 v2, 0xbc0

    const-string v3, "com.xiaopeng.intent.action.xkey.user"

    .line 95
    invoke-virtual {v0, v3, v2}, Lcom/xiaopeng/carcontrol/view/dialog/panel/ControlPanelManager;->show(Ljava/lang/String;I)V

    .line 98
    :goto_0
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/CarControlService;->mHasPendingCustomKeyAction:Z

    .line 100
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/CarControlService;->mHasPendingMirrorAction:Z

    if-eqz v0, :cond_2

    .line 101
    new-instance v0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlService$jxXR6j5BLsDlKF5qZiNpFcPAQBQ;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlService$jxXR6j5BLsDlKF5qZiNpFcPAQBQ;-><init>(Lcom/xiaopeng/carcontrol/CarControlService;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    .line 105
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/CarControlService;->mHasPendingMirrorAction:Z

    :cond_2
    return-void
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "newConfig"
        }
    .end annotation

    .line 558
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onCreate()V
    .locals 3

    const-string v0, "CarControlService"

    const-string v1, "onCreate"

    const/4 v2, 0x0

    .line 84
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 85
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 87
    new-instance v0, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlService$cR5wFMhJMEfPxULNJwpMzgaoGOc;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/-$$Lambda$CarControlService$cR5wFMhJMEfPxULNJwpMzgaoGOc;-><init>(Lcom/xiaopeng/carcontrol/CarControlService;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 113
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "intent",
            "flags",
            "startId"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 120
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/CarControlService;->handleIntent(Landroid/content/Intent;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
