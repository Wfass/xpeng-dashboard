.class public Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;
.super Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;
.source "DriveControlManagerImpl.java"

# interfaces
.implements Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer$Implementation;


# instance fields
.field private mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer;

.field private mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

.field private mDriveModeXPowerNotifyDialog:Lcom/xiaopeng/xui/app/XDialog;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/sdkImpl/AbstractManagerImpl;-><init>()V

    return-void
.end method

.method private convertDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 167
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->NoCommand:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    if-eq p1, v0, :cond_0

    .line 168
    sget-object v0, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl$1;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const/16 p1, 0xc

    goto :goto_1

    :pswitch_1
    const/16 p1, 0xb

    goto :goto_1

    :pswitch_2
    const/16 p1, 0xa

    goto :goto_1

    :pswitch_3
    const/16 p1, 0x9

    goto :goto_1

    :pswitch_4
    const/16 p1, 0x8

    goto :goto_1

    :pswitch_5
    const/4 p1, 0x7

    goto :goto_1

    :pswitch_6
    const/4 p1, 0x4

    goto :goto_1

    :pswitch_7
    const/4 p1, 0x3

    goto :goto_1

    :pswitch_8
    const/4 p1, 0x2

    goto :goto_1

    :pswitch_9
    const/4 p1, 0x1

    goto :goto_1

    :pswitch_a
    const/4 p1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
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


# virtual methods
.method public getDriveMode()I
    .locals 5

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getDriveModeValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->convertDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDriveMode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getDriveModeList()Ljava/lang/String;
    .locals 2

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 123
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 124
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    .line 125
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xa

    .line 127
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 128
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 129
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNormalDriveModeList()Ljava/lang/String;
    .locals 2

    .line 136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 137
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 138
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x2

    .line 139
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x3

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/16 v1, 0xa

    .line 141
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 143
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSpecialDriveModeList()Ljava/lang/String;
    .locals 2

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "isSupportEspMudMode"

    .line 151
    invoke-static {v1}, Lcom/xiaopeng/lib/feature/XpFeature;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    .line 152
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 154
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 155
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method protected initInternal()V
    .locals 2

    .line 39
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 40
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    .line 41
    invoke-static {}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getInstance()Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/smartcontrol/sdk/server/CarControlSDKImpl;->getDriveControlManagerServer()Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer;

    return-void
.end method

.method public synthetic lambda$observeData$0$DriveControlManagerImpl(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "driveMode"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 47
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer;

    if-eqz v0, :cond_0

    .line 48
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->convertDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)I

    move-result v0

    .line 49
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->mCallback:Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer;

    invoke-interface {v1, v0}, Lcom/xiaopeng/smartcontrol/sdk/server/vehicle/DriveControlManagerServer;->onDriveModeChanged(I)V

    .line 50
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDriveModeChanged:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v2, "--->"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getDriveModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$DriveControlManagerImpl$BXM9d4oqGS1Bm56XHSqtxYk4XMM;

    invoke-direct {v1, p0}, Lcom/xiaopeng/carcontrol/sdkImpl/-$$Lambda$DriveControlManagerImpl$BXM9d4oqGS1Bm56XHSqtxYk4XMM;-><init>(Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public setDriveMode(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 113
    :pswitch_1
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Individual:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    goto :goto_0

    .line 110
    :pswitch_2
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Race:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->showConfirmDialogBySpDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)Ljava/lang/String;

    goto :goto_0

    .line 106
    :pswitch_3
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->EcoPlus:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->showConfirmDialogBySpDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)Ljava/lang/String;

    goto :goto_0

    .line 103
    :pswitch_4
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Xpower:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->showConfirmDialogBySpDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)Ljava/lang/String;

    goto :goto_0

    .line 100
    :pswitch_5
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Geek:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->showConfirmDialogBySpDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)Ljava/lang/String;

    goto :goto_0

    .line 97
    :pswitch_6
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Adaptive:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    goto :goto_0

    .line 91
    :pswitch_7
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->OffRoad:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)V

    goto :goto_0

    .line 88
    :pswitch_8
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Comfort:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->showConfirmDialogBySpDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)Ljava/lang/String;

    goto :goto_0

    .line 85
    :pswitch_9
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Eco:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    goto :goto_0

    .line 82
    :pswitch_a
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Sport:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    goto :goto_0

    .line 79
    :pswitch_b
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/sdkImpl/DriveControlManagerImpl;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
