.class public Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;
.super Ljava/lang/Object;
.source "RestoreSmartControl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl$SingleHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "RestoreSmartControl"


# instance fields
.field private mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

.field private mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

.field private mMirrorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

.field private mScuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

.field private mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

.field private mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/ISeatViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    .line 52
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/ICarBodyViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    .line 53
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/cabin/IMirrorViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->mMirrorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    .line 54
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 55
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/scu/IScuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->mScuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    .line 56
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/avas/IAvasViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl$1;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;
    .locals 1

    .line 47
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl$SingleHolder;->access$100()Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleCarControlFactoryRestore()V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->moveToExhibitionPos()V

    const-string v0, "isSupportControlSteer"

    .line 62
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->moveSteerToExhibitionPos()V

    :cond_0
    const-string v0, "isSupportMirrorMemory"

    .line 66
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->mMirrorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->moveToExhibitionPos()V

    :cond_1
    const-string v0, "isSupportIms"

    .line 70
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->mMirrorViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/MirrorViewModel;->setImsResetReq()V

    :cond_2
    return-void
.end method

.method public handleSmartRestore()V
    .locals 4

    const-string v0, "RestoreSmartControl"

    const-string v1, "Send Restore Broadcast"

    .line 77
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaopeng.intent.action.ACTION_AUTO_SHOW_RECOVERY"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x1000000

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 80
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->isExhibitionModeOn()Z

    move-result v1

    const-string v2, "is_exhibition_mode"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 81
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->getInstance()Lcom/xiaopeng/carcontrol/App;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/carcontrol/App;->sendBroadcast(Landroid/content/Intent;)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->moveToExhibitionPos()V

    const-string v0, "isSupportSeatMassage"

    .line 85
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->mSeatViewModel:Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/cabin/SeatViewModel;->stopMassager(I)V

    :cond_0
    const-string v0, "isSupportControlSteer"

    .line 89
    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->mCarBodyViewModel:Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/carsettings/CarBodyViewModel;->moveSteerToExhibitionPos()V

    .line 93
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveMode(IZ)V

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setEnergyRecycleGrade(IZ)Ljava/lang/String;

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->mAvasViewModel:Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;

    invoke-static {v2}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;->fromAvasType(I)Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasViewModel;->setAvasLowSpdEffect(Lcom/xiaopeng/carcontrol/viewmodel/avas/AvasEffect;)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->mScuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scu/ScuViewModel;->moveToExhibitionPos()V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/restore/RestoreSmartControl;->mVcuViewModel:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setSsaSwEnable(ZZ)V

    return-void
.end method
