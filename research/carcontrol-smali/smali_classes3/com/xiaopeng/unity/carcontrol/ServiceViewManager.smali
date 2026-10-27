.class public Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "ServiceViewManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/IServiceViewManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/IServiceViewManager;"
    }
.end annotation


# instance fields
.field private inChargeScene:Z

.field private mAudioVm:Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;

.field private mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

.field private mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

.field private mPreGearLevel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

.field private mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

.field private mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field private mServiceVm:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

.field private preGoOff:Z

.field private preGoOn:Z


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    .line 49
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->Invalid:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mPreGearLevel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->preGoOn:Z

    .line 51
    iput-boolean v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->preGoOff:Z

    .line 52
    iput-boolean v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->inChargeScene:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$1;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$300(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$600(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$700(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$800(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$900(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private checkEnterGoOffScene()V
    .locals 5

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object v0

    .line 441
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->isDrvBeltUnbuckled()Z

    move-result v1

    .line 442
    iget-object v2, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkEnterGoOffScene currentGear="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", seatBeltState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", preGoOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->preGoOff:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 443
    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-ne v0, v2, :cond_1

    if-eqz v1, :cond_1

    .line 444
    iget-boolean v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->preGoOff:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;

    invoke-interface {v0}, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;->onEnterGoOffScene()V

    :cond_0
    const/4 v0, 0x1

    .line 447
    iput-boolean v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->preGoOff:Z

    :cond_1
    return-void
.end method

.method private checkEnterGoOnSceneFroIgState()V
    .locals 4

    .line 429
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object v0

    .line 430
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkEnterGoOnSceneFroIgState currentGear="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", preGoOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->preGoOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 431
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-ne v0, v1, :cond_1

    .line 432
    iget-boolean v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->preGoOn:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 433
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;->onEnterGoOnScene(I)V

    .line 435
    :cond_0
    iput-boolean v1, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->preGoOn:Z

    :cond_1
    return-void
.end method

.method private checkExitSceneForGear()V
    .locals 4

    .line 452
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object v0

    .line 453
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkExitSceneForGear currentGear="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", preGoOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->preGoOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", preGoOff="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->preGoOff:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", inChargeScene="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->inChargeScene:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 454
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_2

    .line 455
    iget-boolean v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->inChargeScene:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;->onExitChargeScene(I)V

    .line 457
    iput-boolean v3, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->inChargeScene:Z

    goto :goto_0

    .line 459
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->preGoOn:Z

    if-eqz v0, :cond_1

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;->onExitGoOnScene(I)V

    .line 461
    iput-boolean v3, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->preGoOn:Z

    goto :goto_0

    .line 462
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->preGoOff:Z

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;->onExitGoOffScene(I)V

    .line 464
    iput-boolean v3, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->preGoOff:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private checkSceneForChargeGun()V
    .locals 5

    .line 471
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isChargeGunLinked()Z

    move-result v0

    .line 472
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object v1

    .line 473
    iget-object v2, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkSceneForChargeGun linked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", gearLevel= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", preGoOn="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->preGoOn:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", preGoOff="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->preGoOff:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", inChargeScene="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->inChargeScene:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 474
    iget-object v2, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v2, :cond_3

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-ne v1, v2, :cond_3

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    .line 476
    iget-boolean v2, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->preGoOff:Z

    if-eqz v2, :cond_0

    .line 477
    iget-object v2, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v2, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;

    invoke-interface {v2, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;->onExitGoOffScene(I)V

    .line 478
    iput-boolean v4, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->preGoOff:Z

    goto :goto_0

    .line 480
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v2, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;

    invoke-interface {v2, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;->onExitGoOnScene(I)V

    .line 481
    iput-boolean v4, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->preGoOn:Z

    goto :goto_0

    .line 484
    :cond_1
    iget-boolean v2, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->inChargeScene:Z

    if-eqz v2, :cond_2

    .line 485
    iget-object v2, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v2, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;

    invoke-interface {v2, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;->onExitChargeScene(I)V

    const/4 v1, 0x1

    .line 486
    iput-boolean v1, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->preGoOn:Z

    .line 489
    :cond_2
    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->inChargeScene:Z

    :cond_3
    return-void
.end method

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;
    .locals 1

    .line 59
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$Holder;->access$000()Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public dismissDialog(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialogScene"
        }
    .end annotation

    .line 372
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "ready_without_key_dialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "ready_without_nfc_key_dialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "ready_timeout_ble_key_dialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v1

    goto :goto_0

    :sswitch_3
    const-string v0, "ready_timeout_nfc_key_dialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 377
    :pswitch_0
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mServiceVm:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-virtual {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->dismissReadyDisableDialog(Z)V

    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x4a78c90a -> :sswitch_3
        -0x3a68caba -> :sswitch_2
        0x78468af -> :sswitch_1
        0x10b3171b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public getAboardScene()I
    .locals 5

    .line 415
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 418
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->inChargeScene:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    .line 420
    :cond_1
    iget-boolean v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->preGoOff:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 424
    :goto_0
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAboardScene status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getCarSpeed()F
    .locals 1

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getCarSpeed()F

    move-result v0

    return v0
.end method

.method public getGearLevel()I
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevel()I

    move-result v0

    return v0
.end method

.method public initInternal()V
    .locals 2

    .line 64
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    .line 65
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mCarBodyVm:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    .line 66
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/service/IServiceViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mServiceVm:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    .line 67
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 68
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/audio/IAudioViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mAudioVm:Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;

    .line 69
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 70
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    iput-object v1, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    .line 71
    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    .line 72
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public synthetic lambda$observeData$0$ServiceViewManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "show"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "seat_drop_down_menu"

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;->onShowDropDownMenu(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$1$ServiceViewManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "show"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "psn_seat_drop_down_menu"

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;->onShowDropDownMenu(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$10$ServiceViewManager(Ljava/lang/Integer;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "state"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;->onIgStateChange(I)V

    .line 265
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 266
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->checkEnterGoOnSceneFroIgState()V

    :cond_1
    return-void
.end method

.method public synthetic lambda$observeData$11$ServiceViewManager(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "index"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;

    invoke-interface {v0, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;->onShowSmartControlTab(Ljava/lang/String;)V

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onShowSmartControlTab: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$observeData$12$ServiceViewManager([Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arrays"
        }
    .end annotation

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v3, 0x2

    if-lt v0, v3, :cond_0

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;

    aget-object v3, p1, v2

    aget-object v4, p1, v1

    invoke-interface {v0, v3, v4}, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;->onShowSmartControlSubTab(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onShowSmartControlSubTab: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v2, p1, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   subIndex = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object p1, p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$observeData$13$ServiceViewManager([Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "arrays"
        }
    .end annotation

    .line 286
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    array-length v0, p1

    const/4 v4, 0x3

    if-lt v0, v4, :cond_0

    .line 287
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;

    aget-object v4, p1, v3

    aget-object v5, p1, v2

    aget-object v6, p1, v1

    invoke-interface {v0, v4, v5, v6}, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;->onShowSmartControlElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onShowSmartControlElement: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v3, p1, v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " subIndex = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-object v2, p1, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " element = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object p1, p1, v1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$observeData$2$ServiceViewManager(Ljava/lang/Boolean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "show"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v1, 0x0

    const-string v2, "mirror_ctrl_panel"

    invoke-interface {v0, v2, p1, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;->onShowDialogWithDisplayId(Ljava/lang/String;ZI)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$3$ServiceViewManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "show"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "p_gear_drop_down_menu"

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;->onShowDropDownMenu(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$4$ServiceViewManager(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "scene"
        }
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;->onShowDialog(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$5$ServiceViewManager(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "scene"
        }
    .end annotation

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;->onShowDialog(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$6$ServiceViewManager(Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "show"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const-string v1, "close_mrr_dialog"

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;->onShowDialog(Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$7$ServiceViewManager(Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "level"
        }
    .end annotation

    if-eqz p1, :cond_3

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz v0, :cond_3

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mPreGearLevel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->Invalid:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-ne v0, v1, :cond_0

    .line 237
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mPreGearLevel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast v0, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewListener;->onGearChange(I)V

    .line 240
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mPreGearLevel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-eq v0, v1, :cond_1

    .line 241
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->checkEnterGoOffScene()V

    goto :goto_0

    .line 242
    :cond_1
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-eq p1, v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mPreGearLevel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;->P:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    if-ne v0, v1, :cond_2

    .line 243
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->checkExitSceneForGear()V

    .line 245
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mPreGearLevel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/GearLevel;

    :cond_3
    return-void
.end method

.method public synthetic lambda$observeData$8$ServiceViewManager(Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "aBoolean"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 249
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 250
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->checkEnterGoOffScene()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$observeData$9$ServiceViewManager(Lcom/xiaopeng/carcontrol/viewmodel/vcu/ChargeGunStatus;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "status"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->checkSceneForChargeGun()V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDrvSeatDropDownShowData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$-VsWyoru0F9jaIWJH62WfSeBVFM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$-VsWyoru0F9jaIWJH62WfSeBVFM;-><init>(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getPsnSeatDropDownShowData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$yRjK_wwmvzsHUvW0J7lOB_HM2Fk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$yRjK_wwmvzsHUvW0J7lOB_HM2Fk;-><init>(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mMirrorVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->getMirrorPanelShowData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$XTKvsASzo-XHUlH_5Pk4D6fZwxM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$XTKvsASzo-XHUlH_5Pk4D6fZwxM;-><init>(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mServiceVm:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->getShowParkDropDownData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$GHVcaLbzF1tojWypf1rwTkBnzGk;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$GHVcaLbzF1tojWypf1rwTkBnzGk;-><init>(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mServiceVm:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->getUnityShowDialogData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$xTIEQXsT1Px-ALyv8E1QAaayfeg;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$xTIEQXsT1Px-ALyv8E1QAaayfeg;-><init>(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mServiceVm:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->getUnityDismissDialogData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$Pcog4u3ecXR8r8DuzRIFPon66VQ;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$Pcog4u3ecXR8r8DuzRIFPon66VQ;-><init>(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mScuVm:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->getCloseMrrDialogData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$CGSoqUvWWtEtyMs4J1-8-lVFNBc;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$CGSoqUvWWtEtyMs4J1-8-lVFNBc;-><init>(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGearLevelData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$HJwIbwles_XabFRmic1RGOFYW8E;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$HJwIbwles_XabFRmic1RGOFYW8E;-><init>(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getDvrBeltWarnData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$LKg77Ps0g7o1_m4CbGZfz8RonwA;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$LKg77Ps0g7o1_m4CbGZfz8RonwA;-><init>(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 253
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getChargeGunStatusData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$k3YYLRilL4GI-EwUjBVlrr0WJ74;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$k3YYLRilL4GI-EwUjBVlrr0WJ74;-><init>(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mSeatVm:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->getMcuIgState()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$HiJb6FP1mNZA-rCYgNsi2GnaW_I;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$HiJb6FP1mNZA-rCYgNsi2GnaW_I;-><init>(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mServiceVm:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->getShowSmartControlPanelData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$N0dATb_0cn4OMM-9Y3iU3YAUIX0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$N0dATb_0cn4OMM-9Y3iU3YAUIX0;-><init>(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mServiceVm:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->getShowSmartControlSceneData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$Ykcde0cCAeDmbJQxII1Pg3qGav4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$Ykcde0cCAeDmbJQxII1Pg3qGav4;-><init>(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 285
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mServiceVm:Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/ServiceViewModel;->getShowSmartControlElementData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$YRRlcvaqVoI5avdRlMx5lsvk0m0;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$ServiceViewManager$YRRlcvaqVoI5avdRlMx5lsvk0m0;-><init>(Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onRealCall(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
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

    .line 143
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "getCarSpeed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_1
    const-string v0, "getGearLevel"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_2
    const-string v0, "setOsdEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_3
    const-string v0, "onScreenSwiped"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_4
    const-string v0, "dismissDialog"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_5
    const-string v0, "setToastEnabled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_6
    const-string v0, "playTts"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_7
    const-string v0, "setMicrophoneMute"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 169
    iget-object p2, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown method "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 154
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->getCarSpeed()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    goto :goto_2

    .line 157
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->getGearLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 166
    :pswitch_2
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->setOsdEnabled(Z)V

    goto :goto_1

    .line 145
    :pswitch_3
    invoke-virtual {p0, p2}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->onScreenSwiped(Ljava/lang/String;)V

    goto :goto_1

    .line 160
    :pswitch_4
    invoke-virtual {p0, p2}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->dismissDialog(Ljava/lang/String;)V

    goto :goto_1

    .line 163
    :pswitch_5
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->setToastEnabled(Z)V

    goto :goto_1

    .line 148
    :pswitch_6
    invoke-virtual {p0, p2}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->playTts(Ljava/lang/String;)V

    goto :goto_1

    .line 151
    :pswitch_7
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseBoolean(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->setMicrophoneMute(Z)V

    :goto_1
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_8

    .line 172
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_8
    const-string p1, ""

    :goto_3
    return-object p1

    :sswitch_data_0
    .sparse-switch
        -0x543b109b -> :sswitch_7
        -0x1d6b7de1 -> :sswitch_6
        -0x1d39cf64 -> :sswitch_5
        -0xf4ef38e -> :sswitch_4
        0x1159df75 -> :sswitch_3
        0x3a389a23 -> :sswitch_2
        0x74f0647f -> :sswitch_1
        0x7a799249 -> :sswitch_0
    .end sparse-switch

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

.method public onScreenSwiped(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 296
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->TAG:Ljava/lang/String;

    const-string v0, "onScreenSwiped with null param"

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, ","

    .line 300
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 301
    array-length v1, v0

    const/4 v2, 0x2

    if-lt v1, v2, :cond_1

    .line 302
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onScreenSwiped: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    const/4 v1, 0x0

    aget-object v1, v0, v1

    const/4 v2, 0x1

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->onScreenSwiped(Ljava/lang/String;I)V

    goto :goto_0

    .line 305
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScreenSwiped with invalid param: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public playTts(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 314
    invoke-static {}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->getInstance()Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/common/util/SpeechHelper;->speak(Ljava/lang/String;)Ljava/lang/String;

    return-void
.end method

.method public setMicrophoneMute(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->mAudioVm:Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/audio/AudioViewModel;->setMicrophoneMute(Z)V

    return-void
.end method

.method public setOsdEnabled(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOsdEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 403
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/xapp/XAppManager;->setOsdEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 405
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setOsdEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_0
    return-void
.end method

.method public setToastEnabled(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 391
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setToastEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 393
    :try_start_0
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/xapp/XAppManager;->setToastEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 395
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/ServiceViewManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setToastEnabled"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    :goto_0
    return-void
.end method

.method public showToast(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    return-void
.end method

.method public showToast(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "sharedId"
        }
    .end annotation

    return-void
.end method

.method public showToastLong(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    return-void
.end method

.method public showToastLong(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "sharedId"
        }
    .end annotation

    return-void
.end method

.method public showToastLonger(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    return-void
.end method

.method public showToastLonger(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "content",
            "sharedId"
        }
    .end annotation

    return-void
.end method
