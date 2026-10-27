.class public Lcom/xiaopeng/unity/carcontrol/ScenarioManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "ScenarioManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/IScenarioManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/ScenarioManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/ScenarioListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/IScenarioManager;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ScenarioManager"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mMeterViewModel:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

.field private mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

.field private mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    .line 30
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/App;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mAudioManager:Landroid/media/AudioManager;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/ScenarioManager$1;)V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 25
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

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

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

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

    .line 350
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

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

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/ScenarioManager;
    .locals 1

    .line 37
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager$Holder;->access$000()Lcom/xiaopeng/unity/carcontrol/ScenarioManager;

    move-result-object v0

    return-object v0
.end method

.method private handleCapsuleEnd(ZLjava/lang/String;)V
    .locals 3
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

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCapsuleEnd, isSleep: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScenarioManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    if-eqz p1, :cond_0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsuleSleep:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsuleCinema:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    :goto_0
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->toScenarioStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->reportScenarioStatus(Ljava/lang/String;I)V

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    const-string v1, "rGearNotP"

    if-eqz p1, :cond_1

    .line 335
    iget-object v2, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v2, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {v2, p2}, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;->onSleepModeEnd(Z)V

    .line 336
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mMeterViewModel:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setUserScenarioInfo([I)V

    goto :goto_1

    .line 338
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v2, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    invoke-interface {v2, p2}, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;->onCinemaModeEnd(Z)V

    .line 339
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mMeterViewModel:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-virtual {p2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setUserScenarioInfo([I)V

    .line 342
    :cond_2
    :goto_1
    invoke-static {}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->get_instance()Lcom/xiaopeng/unity/capsule/CapsuleManager;

    move-result-object p2

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_2

    :cond_3
    const/4 p1, 0x2

    :goto_2
    invoke-virtual {p2, p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->exitCapsuleScene(I)V

    .line 343
    invoke-static {}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->get_instance()Lcom/xiaopeng/unity/capsule/CapsuleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->restoreDayNightTry()V

    .line 344
    invoke-static {}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->get_instance()Lcom/xiaopeng/unity/capsule/CapsuleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->unregisterInputListener()V

    .line 345
    invoke-static {}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->get_instance()Lcom/xiaopeng/unity/capsule/CapsuleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->unregisterKeyListener()V

    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x0
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x0
        -0x1
    .end array-data
.end method

.method private handleCapsuleStart(ZLjava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "isSleep",
            "info"
        }
    .end annotation

    .line 297
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleCapsuleStart, isSleep: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", info: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScenarioManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 298
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isInDcCharge()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 299
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p2

    const v0, 0x7f1103ae

    const v1, 0x7f1103a9

    if-eqz p1, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {p2, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 300
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object p2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    const-string p2, "rInDcCharge"

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->exitSpaceCapsule(ZLjava/lang/String;)V

    return-void

    .line 312
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->registerBinderObserver()V

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    if-eqz p1, :cond_3

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsuleSleep:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    goto :goto_2

    :cond_3
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsuleCinema:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    :goto_2
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->toScenarioStr()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->reportScenarioStatus(Ljava/lang/String;I)V

    .line 315
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_5

    const/4 v0, 0x3

    if-eqz p1, :cond_4

    .line 317
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;->onSleepModeStart(Ljava/lang/String;)V

    .line 318
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mMeterViewModel:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    new-array p2, v0, [I

    fill-array-data p2, :array_0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setUserScenarioInfo([I)V

    goto :goto_3

    .line 320
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;

    invoke-interface {p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;->onCinemaModeStart(Ljava/lang/String;)V

    .line 321
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mMeterViewModel:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    new-array p2, v0, [I

    fill-array-data p2, :array_1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setUserScenarioInfo([I)V

    .line 323
    :goto_3
    invoke-static {}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->get_instance()Lcom/xiaopeng/unity/capsule/CapsuleManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/unity/capsule/CapsuleManager;->changeDay2NightTry()V

    goto :goto_4

    :cond_5
    const-string p2, ""

    .line 325
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->exitSpaceCapsule(ZLjava/lang/String;)V

    :goto_4
    return-void

    :array_0
    .array-data 4
        0x2
        0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        0x1
        0x1
        -0x1
    .end array-data
.end method

.method private handleCinemaModeEnd(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    const/4 v0, 0x0

    .line 266
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->handleCapsuleEnd(ZLjava/lang/String;)V

    return-void
.end method

.method private handleCinemaModeStart(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    const/4 v0, 0x0

    .line 252
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->handleCapsuleStart(ZLjava/lang/String;)V

    return-void
.end method

.method private handleMeditationEnd(ZZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "switchMode",
            "vice"
        }
    .end annotation

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMeditationEnd ,switch mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\uff0c vice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScenarioManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_0

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    if-eqz p2, :cond_1

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->ViceMeditation:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Meditation:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    :goto_0
    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->toScenarioStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->reportScenarioStatus(Ljava/lang/String;I)V

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_4

    if-eqz p2, :cond_2

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;->onViceMeditationModeEnd(Z)V

    goto :goto_1

    .line 223
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;->onMeditationModeEnd(Z)V

    .line 234
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mMeterViewModel:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    const/4 v0, 0x3

    new-array v0, v0, [I

    if-eqz p2, :cond_3

    const/16 p2, 0xb

    goto :goto_2

    :cond_3
    const/4 p2, 0x4

    :goto_2
    aput p2, v0, v2

    const/4 p2, 0x1

    aput v2, v0, p2

    const/4 p2, 0x2

    const/4 v1, -0x1

    aput v1, v0, p2

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setUserScenarioInfo([I)V

    :cond_4
    return-void
.end method

.method private handleMeditationStart(ZZ)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "switchMode",
            "vice"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMeditationStart,switch mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "\uff0c vice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScenarioManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x3

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 185
    iget-object v3, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mAudioManager:Landroid/media/AudioManager;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v0, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 187
    :cond_0
    iget-object v3, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v3, :cond_4

    .line 188
    iget-object v3, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-virtual {v3}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->registerBinderObserver()V

    .line 189
    iget-object v3, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    if-eqz p2, :cond_1

    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->ViceMeditation:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    goto :goto_0

    .line 190
    :cond_1
    sget-object v4, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Meditation:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    :goto_0
    invoke-virtual {v4}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->toScenarioStr()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x2

    .line 189
    invoke-virtual {v3, v4, v5}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->reportScenarioStatus(Ljava/lang/String;I)V

    if-eqz p2, :cond_2

    .line 193
    iget-object v3, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v3, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;

    invoke-interface {v3, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;->onViceMeditationModeStart(Z)V

    goto :goto_1

    .line 195
    :cond_2
    iget-object v3, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v3, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;

    invoke-interface {v3, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;->onMeditationModeStart(Z)V

    .line 197
    :goto_1
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mMeterViewModel:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    new-array v0, v0, [I

    if-eqz p2, :cond_3

    const/16 p2, 0xb

    goto :goto_2

    :cond_3
    const/4 p2, 0x4

    :goto_2
    aput p2, v0, v2

    aput v1, v0, v1

    const/4 p2, -0x1

    aput p2, v0, v5

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setUserScenarioInfo([I)V

    goto :goto_5

    .line 201
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    if-eqz p2, :cond_5

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->ViceMeditation:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    goto :goto_3

    .line 202
    :cond_5
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Meditation:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    :goto_3
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->toScenarioStr()Ljava/lang/String;

    move-result-object v0

    .line 201
    invoke-virtual {p1, v2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->startScenario(ZLjava/lang/String;)Ljava/lang/String;

    .line 203
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    if-eqz p2, :cond_6

    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->ViceMeditation:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    goto :goto_4

    .line 204
    :cond_6
    sget-object p2, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Meditation:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    :goto_4
    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->toScenarioStr()Ljava/lang/String;

    move-result-object p2

    .line 203
    invoke-virtual {p1, p2, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->reportScenarioStatus(Ljava/lang/String;I)V

    :goto_5
    return-void
.end method

.method private handleSleepModeEnd(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    const/4 v0, 0x1

    .line 259
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->handleCapsuleEnd(ZLjava/lang/String;)V

    return-void
.end method

.method private handleSleepModeStart(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    const/4 v0, 0x1

    .line 245
    invoke-direct {p0, v0, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->handleCapsuleStart(ZLjava/lang/String;)V

    return-void
.end method

.method private handleVipSeatModeStart(Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVoice"
        }
    .end annotation

    .line 274
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleVipSeatModeStart, isVoice: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScenarioManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->registerBinderObserver()V

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->VipSeat:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->toScenarioStr()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->reportScenarioStatus(Ljava/lang/String;I)V

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;->onVipSeatModeStart(Z)V

    goto :goto_0

    .line 280
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->VipSeat:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->toScenarioStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->startScenario(ZLjava/lang/String;)Ljava/lang/String;

    .line 281
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->VipSeat:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->toScenarioStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->reportScenarioStatus(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public handleRescueModeEnd()V
    .locals 3

    const-string v0, "ScenarioManager"

    const-string v1, "handleRescueModeEnd:"

    const/4 v2, 0x0

    .line 373
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 374
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Rescue:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->toScenarioStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->reportScenarioStatus(Ljava/lang/String;I)V

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;

    invoke-interface {v0}, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;->onRescueModeEnd()V

    .line 378
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setTrailerMode(Z)V

    return-void
.end method

.method public handleRescueModeStart()V
    .locals 4

    const-string v0, "ScenarioManager"

    const-string v1, "handleVipSeatModeStart "

    const/4 v2, 0x0

    .line 358
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 359
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->registerBinderObserver()V

    .line 360
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Rescue:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->toScenarioStr()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->reportScenarioStatus(Ljava/lang/String;I)V

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;

    invoke-interface {v0}, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;->onRescueModeStart()V

    goto :goto_0

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Rescue:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->toScenarioStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->startScenario(ZLjava/lang/String;)Ljava/lang/String;

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Rescue:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->toScenarioStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->reportScenarioStatus(Ljava/lang/String;I)V

    :goto_0
    return-void
.end method

.method public handleVipSeatModeEnd(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleVipSeatEnd, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScenarioManager"

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->VipSeat:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->toScenarioStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->reportScenarioStatus(Ljava/lang/String;I)V

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;

    const-string v1, "rGearNotP"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioListener;->onVipSeatModeEnd(Z)V

    :cond_0
    return-void
.end method

.method public initInternal()V
    .locals 2

    .line 42
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 43
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/IScenarioViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    .line 44
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/meter/IMeterViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mMeterViewModel:Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;

    .line 45
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public isScenarioModeRunning(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scenarioMode"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p1, v0, :cond_4

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    const/16 v0, 0x8

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 398
    :cond_0
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Rescue:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    goto :goto_0

    .line 395
    :cond_1
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->VipSeat:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    goto :goto_0

    .line 392
    :cond_2
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->Meditation:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    goto :goto_0

    .line 386
    :cond_3
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsuleSleep:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    goto :goto_0

    .line 389
    :cond_4
    sget-object p1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->SpaceCapsuleCinema:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    :goto_0
    if-eqz p1, :cond_5

    .line 404
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->isScenarioModeRunning(Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;)Z

    move-result p1

    return p1

    :cond_5
    const/4 p1, 0x0

    return p1
.end method

.method public synthetic lambda$observeData$0$ScenarioManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isVoice"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->handleVipSeatModeStart(Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$1$ScenarioManager(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "reason"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->handleVipSeatModeEnd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$2$ScenarioManager(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "info"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->handleSleepModeStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$3$ScenarioManager(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "reason"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 129
    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->handleSleepModeEnd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$4$ScenarioManager(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "info"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 135
    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->handleCinemaModeStart(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$5$ScenarioManager(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "reason"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 140
    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->handleCinemaModeEnd(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$6$ScenarioManager(Ljava/lang/Integer;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "value"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_4

    .line 146
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x4

    and-int/2addr v0, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    .line 147
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v4, 0x2

    and-int/2addr v1, v4

    if-ne v1, v4, :cond_1

    move v1, v3

    goto :goto_1

    :cond_1
    move v1, v2

    .line 148
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    and-int/2addr p1, v3

    if-ne p1, v3, :cond_2

    move v2, v3

    :cond_2
    if-eqz v0, :cond_3

    .line 150
    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->handleMeditationStart(ZZ)V

    goto :goto_2

    .line 152
    :cond_3
    invoke-direct {p0, v2, v1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->handleMeditationEnd(ZZ)V

    :cond_4
    :goto_2
    return-void
.end method

.method public synthetic lambda$observeData$7$ScenarioManager(Ljava/lang/Boolean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "isShow"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_1

    .line 158
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->handleRescueModeStart()V

    goto :goto_0

    .line 161
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->handleRescueModeEnd()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->getVipSeatModeStartData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScenarioManager$RymRDOtk1Yj7m5AgduKSGQSGynQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScenarioManager$RymRDOtk1Yj7m5AgduKSGQSGynQ;-><init>(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->getVipSeatModeEndData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScenarioManager$poDzhsqckp-vK5mQueNXw0_U5h0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScenarioManager$poDzhsqckp-vK5mQueNXw0_U5h0;-><init>(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->getSleepModeStartData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScenarioManager$mTahL1sbazrPMhHCwywSHP_LCWU;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScenarioManager$mTahL1sbazrPMhHCwywSHP_LCWU;-><init>(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->getSleepModeEndData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScenarioManager$HidCCHYvoxRlsZGU4tGxPF6ftF8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScenarioManager$HidCCHYvoxRlsZGU4tGxPF6ftF8;-><init>(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->getCinemaModeStartData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScenarioManager$gdBuFHs8huj0-Ky3fVnBS2Hkk0w;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScenarioManager$gdBuFHs8huj0-Ky3fVnBS2Hkk0w;-><init>(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->getCinemaModeEndData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScenarioManager$tig5uZbZ21EaNBS6l2545de7nfY;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScenarioManager$tig5uZbZ21EaNBS6l2545de7nfY;-><init>(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->getMeditationModeData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScenarioManager$baPUbFzonDEMmifoYOzXarGsGFM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScenarioManager$baPUbFzonDEMmifoYOzXarGsGFM;-><init>(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->mScenarioViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->getRescueModeData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScenarioManager$iEZzo-5PdbZFsOR3Hpb6d7Bjsw4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ScenarioManager$iEZzo-5PdbZFsOR3Hpb6d7Bjsw4;-><init>(Lcom/xiaopeng/unity/carcontrol/ScenarioManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onRealCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "method",
            "param"
        }
    .end annotation

    .line 171
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "isScenarioModeRunning"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 173
    :cond_0
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ScenarioManager;->isScenarioModeRunning(I)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    .line 176
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    return-object p1
.end method
