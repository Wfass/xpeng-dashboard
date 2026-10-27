.class public Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;
.super Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;
.source "DriveModeSetManager.java"

# interfaces
.implements Lcom/xiaopeng/unity/carcontrol/IDriveModeSetManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager<",
        "Lcom/xiaopeng/unity/carcontrol/DriveModeSetListener;",
        ">;",
        "Lcom/xiaopeng/unity/carcontrol/IDriveModeSetManager;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DriveModeSetManager"


# instance fields
.field private mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

.field private mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/base/AbstractNapaManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager$1;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 16
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->callback(Ljava/lang/String;Ljava/lang/Object;)V

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

    .line 238
    sget-object v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->NoCommand:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    if-eq p1, v0, :cond_0

    .line 239
    sget-object v0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager$2;->$SwitchMap$com$xiaopeng$carcontrol$viewmodel$vcu$DriveMode:[I

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

.method public static get_instance()Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;
    .locals 1

    .line 26
    invoke-static {}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager$Holder;->access$000()Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public enterXSportGeekSettings()V
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->enterXSportGeekSettings()V

    return-void
.end method

.method public getDriveMode()I
    .locals 4
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_drive_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getDriveModeValue()Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->convertDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 117
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDriveMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DriveModeSetManager"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getEspFault()Z
    .locals 3

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;->getEspFault()Z

    move-result v0

    .line 187
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEspFault, fault: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DriveModeSetManager"

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public getGeekInfoCode()I
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getGeekInfoCode()I

    move-result v0

    return v0
.end method

.method public getLastDriveMode()I
    .locals 4

    .line 224
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getLastDriveMode()Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->convertDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 228
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDriveMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DriveModeSetManager"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public getRacerInfoCode()I
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getRacerInfoCode()I

    move-result v0

    return v0
.end method

.method public getSpDriveModeInfoCodeAndNotifyMsg(I)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "driveMode"
        }
    .end annotation

    .line 219
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getSpDriveModeInfoCodeAndNotifyMsg(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getXpowerInfoCode()I
    .locals 1

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getXpowerInfoCode()I

    move-result v0

    return v0
.end method

.method public initInternal()V
    .locals 2

    .line 31
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/vcu/IVcuViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    .line 32
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/carcontrol/viewmodel/chassis/IChassisViewModel;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    iput-object v0, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mChassisVm:Lcom/xiaopeng/carcontrol/viewmodel/chassis/ChassisViewModel;

    .line 33
    new-instance v0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager$1;-><init>(Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;)V

    invoke-virtual {p0, v0}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->set_listener(Lcom/xiaopeng/unity/carcontrol/base/INapaListener;)V

    return-void
.end method

.method public isXPedalMode()Z
    .locals 4

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getEnergyRecycleGrade()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    .line 178
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isXPedalMode:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DriveModeSetManager"

    invoke-static {v3, v2, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public synthetic lambda$observeData$0$DriveModeSetManager(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "driveMode"
        }
    .end annotation

    .line 44
    invoke-direct {p0, p1}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->convertDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)I

    move-result v0

    .line 45
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDriveModeChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "--->"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "DriveModeSetManager"

    invoke-static {v1, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    if-eq v0, p1, :cond_0

    .line 47
    iget-object p1, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mListener:Lcom/xiaopeng/unity/carcontrol/base/INapaListener;

    check-cast p1, Lcom/xiaopeng/unity/carcontrol/DriveModeSetListener;

    invoke-interface {p1, v0}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetListener;->onDriveModeChanged(I)V

    :cond_0
    return-void
.end method

.method protected observeData()V
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->getDriveModeData()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$DriveModeSetManager$crXpu7jGajMFhEXtlct4ygn79As;

    invoke-direct {v1, p0}, Lcom/xiaopeng/unity/carcontrol/-$$Lambda$DriveModeSetManager$crXpu7jGajMFhEXtlct4ygn79As;-><init>(Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;)V

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->setLiveDataObserver(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

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

    .line 68
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "enterXSportGeekSettings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v1, 0x9

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "getXpowerInfoCode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v1, 0x8

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "setDriveMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x7

    goto :goto_0

    :sswitch_3
    const-string v0, "getLastDriveMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v0, "getEspFault"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v1, 0x5

    goto :goto_0

    :sswitch_5
    const-string v0, "getRacerInfoCode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x4

    goto :goto_0

    :sswitch_6
    const-string v0, "getDriveMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_7
    const-string v0, "isXPedalMode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_8
    const-string v0, "getGeekInfoCode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_9
    const-string v0, "getSpDriveModeInfoCodeAndNotifyMsg"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 100
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unknown method "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DriveModeSetManager"

    invoke-static {p2, p1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 82
    :pswitch_0
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->enterXSportGeekSettings()V

    :goto_1
    const/4 p1, 0x0

    goto :goto_2

    .line 88
    :pswitch_1
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->getXpowerInfoCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 73
    :pswitch_2
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->setDriveMode(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    .line 97
    :pswitch_3
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->getLastDriveMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 79
    :pswitch_4
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->getEspFault()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 85
    :pswitch_5
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->getRacerInfoCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 70
    :pswitch_6
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->getDriveMode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 76
    :pswitch_7
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->isXPedalMode()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    goto :goto_2

    .line 91
    :pswitch_8
    invoke-virtual {p0}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->getGeekInfoCode()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_2

    .line 94
    :pswitch_9
    invoke-static {p2}, Lcom/xiaopeng/carcontrol/common/util/ConvertUtils;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->getSpDriveModeInfoCodeAndNotifyMsg(I)Ljava/lang/String;

    move-result-object p1

    :goto_2
    if-eqz p1, :cond_a

    .line 103
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_3

    :cond_a
    const-string p1, ""

    :goto_3
    return-object p1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7338c6ea -> :sswitch_9
        -0x605773ab -> :sswitch_8
        -0x5562c691 -> :sswitch_7
        -0x52131c69 -> :sswitch_6
        -0x17a5a11a -> :sswitch_5
        -0x1bb60ca -> :sswitch_4
        0xeb44a1 -> :sswitch_3
        0xa40a40b -> :sswitch_2
        0x2a17e75e -> :sswitch_1
        0x5bd01f3b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public setDriveMode(I)Ljava/lang/String;
    .locals 3
    .annotation runtime Lcom/xiaopeng/track/annotation/BtnTrack;
        value = .enum Lcom/xiaopeng/track/constant/BID;->drive_settings_drive_mode:Lcom/xiaopeng/track/constant/BID;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->defaultDriveModeInfoCodeAndNotifyMsg()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 164
    :pswitch_1
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Individual:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    goto :goto_0

    .line 161
    :pswitch_2
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Race:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->showConfirmDialogBySpDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 158
    :pswitch_3
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->EcoPlus:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->showConfirmDialogBySpDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 155
    :pswitch_4
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Xpower:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->showConfirmDialogBySpDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 152
    :pswitch_5
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Geek:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->showConfirmDialogBySpDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    :pswitch_6
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Adaptive:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    goto :goto_0

    .line 143
    :pswitch_7
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->OffRoad:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->showConfirmDialogBySpDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 140
    :pswitch_8
    iget-object v0, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Comfort:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->showConfirmDialogBySpDriveMode(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;Z)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 137
    :pswitch_9
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Eco:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    goto :goto_0

    .line 134
    :pswitch_a
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Sport:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    goto :goto_0

    .line 131
    :pswitch_b
    iget-object v1, p0, Lcom/xiaopeng/unity/carcontrol/DriveModeSetManager;->mVcuVm:Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;

    sget-object v2, Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;->Normal:Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/viewmodel/vcu/VcuViewModel;->setDriveModeByUser(Lcom/xiaopeng/carcontrol/viewmodel/vcu/DriveMode;)V

    .line 168
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "drive_settings_drive_mode"

    invoke-static {v1, p1}, Lcom/xiaopeng/track/BIHelper;->interact(Ljava/lang/String;Ljava/lang/Object;)V

    return-object v0

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
