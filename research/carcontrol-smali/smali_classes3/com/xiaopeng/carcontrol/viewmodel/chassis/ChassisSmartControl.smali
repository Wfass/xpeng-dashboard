.class public Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;
.super Ljava/lang/Object;
.source "ChassisSmartControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl$Holder;
    }
.end annotation


# static fields
.field private static final AS_MOVE_UP_TYPE_AUTO:I = 0x2

.field private static final AS_MOVE_UP_TYPE_MANUAL:I = 0x1

.field private static final DELAY_SET_AVH:J = 0xc8L

.field private static final TAG:Ljava/lang/String; = "ChassisSmartControl"


# instance fields
.field mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

.field private mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

.field private mEpsController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;

.field mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

.field mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

.field private final mSetAvhTask:Ljava/lang/Runnable;

.field mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

.field mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$Fa74xbqrudkm-iL1tdY6eWa-xsg;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/-$$Lambda$Fa74xbqrudkm-iL1tdY6eWa-xsg;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mSetAvhTask:Ljava/lang/Runnable;

    .line 54
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    .line 55
    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->isCarServiceConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "xp_esp"

    .line 56
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    const-string/jumbo v1, "xp_eps"

    .line 57
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mEpsController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEpsController;

    const-string/jumbo v1, "xp_bcm"

    .line 58
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    const-string/jumbo v1, "xp_vcu"

    .line 59
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    .line 60
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->initOtherControllers(Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;)V

    .line 61
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    :cond_0
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;
    .locals 1

    .line 71
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl$Holder;->access$000()Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;

    move-result-object v0

    return-object v0
.end method

.method public static parseAvhStatus(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public checkAvhCondition()V
    .locals 4

    const/4 v0, 0x1

    .line 165
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->isAvhPrepared(Z)Z

    move-result v0

    const-string v1, "ChassisSmartControl"

    if-eqz v0, :cond_0

    const-string v0, "Delay 200ms to set avh"

    .line 167
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 168
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mSetAvhTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->postDelayed(ILjava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    const-string v0, "Remove delayed task of setting avh, because avh is not prepared"

    .line 170
    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mSetAvhTask:Ljava/lang/Runnable;

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->removeRunnable(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public checkEspCondition()V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->checkEspCondition(Z)V

    return-void
.end method

.method public checkEspCondition(Z)V
    .locals 14
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "force"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isEvSysReady()Z

    move-result v0

    const-string v1, "isNewEspArch"

    .line 81
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "ChassisSmartControl"

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    const-string p1, "checkEspCondition car not ready!"

    .line 83
    invoke-static {v2, p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getEsp()I

    move-result v1

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eq v1, v4, :cond_2

    if-eq v1, v7, :cond_2

    if-eq v1, v6, :cond_2

    if-ne v1, v5, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v4, v7

    .line 118
    :goto_1
    iget-object v8, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v8}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getEspSw()Z

    move-result v8

    .line 120
    iget-object v9, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v9}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getDriveMode()I

    move-result v9

    const/16 v10, 0x11

    const/16 v11, 0xd

    if-eq v9, v6, :cond_5

    if-eq v9, v11, :cond_4

    if-eq v9, v10, :cond_5

    if-ne v1, v7, :cond_3

    :goto_2
    move v1, v7

    goto :goto_3

    :cond_3
    move v1, v3

    goto :goto_3

    :cond_4
    if-ne v1, v5, :cond_3

    goto :goto_2

    :cond_5
    if-ne v1, v6, :cond_3

    goto :goto_2

    .line 135
    :goto_3
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "currentEspSw: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", savedEspSw: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", force set flag: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "isEvSysReady, "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v2, v12, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez p1, :cond_6

    if-eqz v0, :cond_b

    if-ne v4, v8, :cond_6

    if-nez v1, :cond_b

    :cond_6
    const/4 p1, 0x3

    if-eqz v8, :cond_a

    if-eq v9, v6, :cond_8

    if-eq v9, v11, :cond_7

    if-eq v9, v10, :cond_8

    move v6, v7

    goto :goto_4

    :cond_7
    move v6, v5

    :cond_8
    :goto_4
    const-string p1, "isSupportSnowMode"

    .line 152
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getSnowMode()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_5

    :cond_9
    move v7, v6

    goto :goto_5

    :cond_a
    move v7, p1

    :goto_5
    if-eq v7, v5, :cond_b

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {p1, v7}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->setEspMode(I)V

    :cond_b
    return-void
.end method

.method initOtherControllers(Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "carClientWrapper"
        }
    .end annotation

    const-string/jumbo v0, "xp_msm"

    .line 66
    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mMsmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMsmController;

    const-string/jumbo v0, "xp_xpu"

    .line 67
    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    return-void
.end method

.method public isAvhPrepared(Z)Z
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checkAvhFault"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->isDrvDoorClosed()Z

    move-result v0

    .line 203
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isEvSysReady()Z

    move-result v1

    .line 204
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v2}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->isDrvBeltBuckled()Z

    move-result v2

    .line 205
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDoorClose:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isEvSysReady:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", isBeltBuckled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ChassisSmartControl"

    invoke-static {v4, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    if-eqz p1, :cond_0

    .line 210
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getAvhFault()Z

    move-result p1

    .line 211
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAvhFault: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3
.end method

.method public onSmartAsMoveDown(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    const-string p1, "isSupportAirSuspension"

    .line 283
    invoke-static {p1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "ChassisSmartControl"

    const-string v0, "onSmartAsMoveDown"

    .line 286
    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xf

    .line 288
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getDriveMode()I

    move-result v1

    if-eq v0, v1, :cond_2

    const/16 v0, 0x11

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    .line 289
    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getDriveMode()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 293
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->resumeAsHeight()V

    return-void

    :cond_2
    :goto_0
    const/4 v0, 0x0

    const-string v1, "in XSportMode, do not Resume As Height"

    .line 290
    invoke-static {p1, v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public onSmartAsMoveUp(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 235
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "isSupportAirSuspension"

    .line 238
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "ChassisSmartControl"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_2

    const-string p1, "Not in drive gear, do not handle adjust AS height request"

    .line 242
    invoke-static {v2, p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    .line 245
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSmartAsMoveUp:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "type"

    .line 248
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    if-ne p1, v1, :cond_3

    .line 249
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAsLocationControlSw()Z

    move-result v4

    if-nez v4, :cond_3

    const-string p1, "Do not open As Location Manual Control Sw and Return"

    .line 250
    invoke-static {v2, p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_3
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    .line 253
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAsLocationSw()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "Do not open As Location Auto Control Sw and Return"

    .line 254
    invoke-static {v2, p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void

    :cond_4
    const-string p1, "level"

    .line 257
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getAsTargetMinHeightRequest()I

    move-result v0

    .line 260
    iget-object v4, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mXpuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v4}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getAsTargetMaxHeightRequest()I

    move-result v4

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onSmartAsMoveUp level: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "mAsMinTarget: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", mAsMaxTarget: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-nez v0, :cond_5

    if-eqz v4, :cond_7

    :cond_5
    if-lt p1, v4, :cond_6

    if-le p1, v0, :cond_7

    :cond_6
    move v1, v3

    :cond_7
    if-eqz v1, :cond_9

    .line 270
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->getAirSuspensionHeight()I

    move-result v0

    if-eq v0, p1, :cond_8

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mBcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IBcmController;->setAirSuspensionHeight(I)V

    goto :goto_0

    :cond_8
    const-string p1, "Current As equals to target height"

    .line 273
    invoke-static {v2, p1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 276
    :cond_9
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object p1

    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->as_height_adjust_tips:I

    invoke-virtual {p1, v0, v3}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 278
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onSmartAsSaveResult(Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "param"
        }
    .end annotation

    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSmartAsSaveResult:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChassisSmartControl"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 225
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "result"

    .line 226
    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 228
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move p1, v0

    .line 230
    :goto_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->as_height_save_success_tips:I

    goto :goto_1

    :cond_0
    sget v3, Lcom/xiaopeng/carcontrolmodule/R$string;->as_height_save_error_tips:I

    :goto_1
    invoke-virtual {v1, v3, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(IZ)V

    .line 231
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    if-ne p1, v2, :cond_1

    move v0, v2

    :cond_1
    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->updateAsSaveResult(Z)V

    return-void
.end method

.method setAvhImpl()V
    .locals 7

    const-string v0, "isNewEspArch"

    .line 176
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, ", sw avh mode: "

    const-string v2, "setAvh current avh mode: "

    const/4 v3, 0x0

    const-string v4, "ChassisSmartControl"

    if-eqz v0, :cond_0

    const-string v0, "200ms delayed, start to set avh"

    .line 177
    invoke-static {v4, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getAvhSw()Z

    move-result v0

    .line 180
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getAvh()I

    move-result v5

    invoke-static {v5}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->parseAvhStatus(I)Z

    move-result v5

    .line 181
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v0, v5, :cond_2

    .line 183
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->setAvh(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "200ms delayed, check avh prepared again"

    .line 186
    invoke-static {v4, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 187
    invoke-virtual {p0, v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->isAvhPrepared(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 189
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getAvhSw()Z

    move-result v0

    .line 190
    iget-object v5, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v5}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->getAvh()I

    move-result v5

    invoke-static {v5}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->parseAvhStatus(I)Z

    move-result v5

    .line 191
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eq v0, v5, :cond_2

    .line 193
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mEspController:Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;

    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IEspController;->setAvh(Z)V

    goto :goto_0

    :cond_1
    const-string v0, "AVH condition not prepared, do not switch AVH now"

    .line 196
    invoke-static {v4, v0, v3}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public setAvhSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisSmartControl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->setAvhSw(Z)V

    return-void
.end method
