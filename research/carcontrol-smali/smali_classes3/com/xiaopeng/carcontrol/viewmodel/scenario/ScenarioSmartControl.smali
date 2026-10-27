.class public Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;
.super Ljava/lang/Object;
.source "ScenarioSmartControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl$SingleHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScenarioSmartControl"


# instance fields
.field private mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

.field private mSpaceViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

.field private mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/space/ISpaceCapsuleViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->mSpaceViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    .line 35
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 36
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/IScenarioViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl$1;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;-><init>()V

    return-void
.end method

.method private exitSpaceCapsule(ZLjava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isSleep",
            "reason"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    const-string v1, "#"

    new-instance v2, Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsuleSleep:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    goto :goto_0

    :cond_0
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsuleCinema:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    :goto_0
    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->toScenarioStr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->startScenario(ZLjava/lang/String;)Ljava/lang/String;

    .line 255
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    if-eqz p1, :cond_1

    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsuleSleep:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsuleCinema:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    :goto_1
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->toScenarioStr()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->reportScenarioStatus(Ljava/lang/String;I)V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;
    .locals 1

    .line 40
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;

    move-result-object v0

    return-object v0
.end method

.method private startMeditationMode(ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "vice",
            "switchMode"
        }
    .end annotation

    return-void
.end method

.method private startRescueMode(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start"
        }
    .end annotation

    const-string v0, "isSupportNapa"

    .line 260
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->handleNapaRescueMode(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 264
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.xiaopeng.carcontrol.intent.action.SHOW_TRAILER_PAGE"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v0, 0x10000000

    .line 265
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 v0, 0x400

    .line 266
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 267
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/App;->startActivity(Landroid/content/Intent;)V

    .line 268
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->registerBinderObserver()V

    .line 269
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Rescue:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->toScenarioStr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->reportScenarioStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 272
    :cond_1
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/App;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.carcontrol.intent.action.CLOSE_TRAILER_PAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 273
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Rescue:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->toScenarioStr()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->reportScenarioStatus(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method private startSeatPrepare(ZZZILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "vipSeat",
            "isVoiceSource",
            "modeIndex",
            "reason",
            "info"
        }
    .end annotation

    return-void
.end method

.method private startVipSeat(ZZLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "isVoiceSource",
            "reason"
        }
    .end annotation

    const-string v0, "isSupportNapa"

    .line 114
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->handleNapaVipSeatModeStart(Z)V

    goto :goto_0

    .line 118
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-virtual {p1, p3}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->handleNapaVipSeatModeEnd(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 121
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->mSpaceViewModel:Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/space/SpaceCapsuleViewModel;->getCurrentSubMode()I

    move-result p2

    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    const-string p1, "ScenarioSmartControl"

    const-string p2, "Current Scenario already is idle, and no need to exit"

    const/4 p3, 0x0

    .line 122
    invoke-static {p1, p2, p3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 123
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->VipSeat:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->toScenarioStr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->reportScenarioStatus(Ljava/lang/String;I)V

    return-void

    .line 127
    :cond_2
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.xiaopeng.carcontrol.intent.action.SHOW_VIP_SEAT"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "space_mode_start"

    .line 128
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    if-nez p1, :cond_3

    const-string p1, "rGearNotP"

    .line 130
    invoke-virtual {p1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p3, "space_capsule_exit_reason"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    const/high16 p1, 0x10000000

    .line 132
    invoke-virtual {p2, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 p1, 0x400

    .line 133
    invoke-virtual {p2, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 134
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/App;->startActivity(Landroid/content/Intent;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public parseScenarioIntent(Landroid/content/Intent;)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    const-string v9, "ScenarioSmartControl"

    :try_start_0
    const-string v1, "scenario_name"

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v1, "status"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    const-string v1, "source"

    .line 47
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v1, "exitReason"

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    const-string v1, "extraInfo"

    .line 49
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "friendScenario"

    .line 50
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "friendScenario: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "voice"

    .line 52
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 53
    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "meditation_passenger_seat_mode"

    const-string v5, "meditation_mode"

    const/4 v1, 0x2

    const/4 v6, 0x1

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    :try_start_1
    invoke-virtual {v10, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_1
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string v2, "vipseat_mode"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v1

    goto :goto_1

    :sswitch_3
    const-string v2, "spacecapsule_mode_sleep"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_4
    const-string v2, "spacecapsule_mode_movie"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_1

    :sswitch_5
    const-string v2, "trailed_mode"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v2, -0x1

    :goto_1
    const-string v14, "exit"

    const-string v15, "enter"

    if-eqz v2, :cond_d

    if-eq v2, v6, :cond_b

    if-eq v2, v1, :cond_9

    const/4 v1, 0x3

    if-eq v2, v1, :cond_6

    const/4 v1, 0x4

    if-eq v2, v1, :cond_4

    const/4 v1, 0x5

    if-eq v2, v1, :cond_2

    :cond_1
    :goto_2
    const/4 v0, 0x0

    goto/16 :goto_3

    .line 97
    :cond_2
    :try_start_2
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 98
    invoke-direct {v8, v6}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->startRescueMode(Z)V

    goto :goto_2

    .line 99
    :cond_3
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 100
    invoke-direct {v8, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->startRescueMode(Z)V

    goto :goto_2

    .line 88
    :cond_4
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 89
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 90
    invoke-direct {v8, v6, v6, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->startMeditationMode(ZZZ)V

    goto :goto_2

    .line 91
    :cond_5
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 92
    invoke-direct {v8, v1, v6, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->startMeditationMode(ZZZ)V

    goto :goto_2

    .line 79
    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 80
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    .line 81
    invoke-direct {v8, v6, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->startMeditationMode(ZZZ)V

    :cond_7
    move v0, v1

    goto/16 :goto_3

    :cond_8
    const/4 v1, 0x0

    .line 82
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 83
    invoke-direct {v8, v1, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->startMeditationMode(ZZZ)V

    goto :goto_2

    .line 71
    :cond_9
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    .line 72
    invoke-direct {v8, v6, v4, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->startVipSeat(ZZLjava/lang/String;)V

    goto :goto_2

    .line 73
    :cond_a
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 74
    invoke-direct {v8, v0, v4, v13}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->startVipSeat(ZZLjava/lang/String;)V

    goto :goto_3

    :cond_b
    const/4 v0, 0x0

    .line 63
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 64
    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->startSeatPrepare(ZZZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 65
    :cond_c
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x2

    move-object/from16 v1, p0

    move-object v6, v13

    .line 66
    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->startSeatPrepare(ZZZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    const/4 v0, 0x0

    .line 55
    invoke-virtual {v15, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 v1, p0

    .line 56
    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->startSeatPrepare(ZZZILjava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 57
    :cond_e
    invoke-virtual {v14, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x1

    move-object/from16 v1, p0

    move-object v6, v13

    .line 58
    invoke-direct/range {v1 .. v7}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioSmartControl;->startSeatPrepare(ZZZILjava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_f
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scenario request: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", source: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", exitReason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x73dd3383 -> :sswitch_5
        -0x25a45994 -> :sswitch_4
        -0x255169ed -> :sswitch_3
        -0x14fdd7e0 -> :sswitch_2
        0x34c16fe4 -> :sswitch_1
        0x522455d7 -> :sswitch_0
    .end sparse-switch
.end method

.method public startCapsuleActivity(ZZZILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "start",
            "vipSeat",
            "isVoiceSource",
            "modeIndex",
            "reason",
            "chooseBedType"
        }
    .end annotation

    .line 212
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.carcontrol.intent.action.SHOW_SPACE_CAPSULE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "is_vip_seat"

    .line 213
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "space_mode_start"

    .line 214
    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "space_source"

    .line 215
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "space_choose_sleep_bed"

    .line 216
    invoke-virtual {v0, p2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz p1, :cond_0

    const-string p1, "mode_type"

    .line 218
    invoke-virtual {v0, p1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :cond_0
    const-string p1, "rGearNotP"

    .line 220
    invoke-virtual {p1, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const-string p2, "space_capsule_exit_reason"

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_0
    const/high16 p1, 0x10000000

    .line 222
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const/16 p1, 0x400

    .line 223
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 224
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/App;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
