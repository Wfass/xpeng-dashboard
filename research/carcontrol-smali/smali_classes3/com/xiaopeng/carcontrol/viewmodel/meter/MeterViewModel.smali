.class public Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;
.super Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;
.source "MeterViewModel.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MeterViewModel"


# instance fields
.field private final mDoorKeyData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;",
            ">;"
        }
    .end annotation
.end field

.field private final mEcallAvailableData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastMaintainData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/bean/MaintainInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenuBrightSw:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenuMediaSw:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenuTempSw:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenuWindModeSw:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMenuWindPowerSw:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mMileageA:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMileageB:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMileageSinceLastCharge:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMileageSinceStartUp:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMileageTotal:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mNextMaintainData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/bean/MaintainInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpdWarningSw:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSpdWarningValue:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mWheelKeyProtectSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mXKeyData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterBaseViewModel;-><init>()V

    .line 25
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMileageTotal:Landroidx/lifecycle/MutableLiveData;

    .line 26
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMileageSinceLastCharge:Landroidx/lifecycle/MutableLiveData;

    .line 27
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMileageSinceStartUp:Landroidx/lifecycle/MutableLiveData;

    .line 28
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMileageA:Landroidx/lifecycle/MutableLiveData;

    .line 29
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMileageB:Landroidx/lifecycle/MutableLiveData;

    .line 32
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mSpdWarningSw:Landroidx/lifecycle/MutableLiveData;

    .line 33
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mSpdWarningValue:Landroidx/lifecycle/MutableLiveData;

    .line 34
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMenuTempSw:Landroidx/lifecycle/MutableLiveData;

    .line 35
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMenuWindPowerSw:Landroidx/lifecycle/MutableLiveData;

    .line 36
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMenuWindModeSw:Landroidx/lifecycle/MutableLiveData;

    .line 37
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMenuBrightSw:Landroidx/lifecycle/MutableLiveData;

    .line 38
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMenuMediaSw:Landroidx/lifecycle/MutableLiveData;

    .line 40
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mXKeyData:Landroidx/lifecycle/MutableLiveData;

    .line 41
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mDoorKeyData:Landroidx/lifecycle/MutableLiveData;

    .line 43
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mLastMaintainData:Landroidx/lifecycle/MutableLiveData;

    .line 44
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mNextMaintainData:Landroidx/lifecycle/MutableLiveData;

    .line 46
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mEcallAvailableData:Landroidx/lifecycle/MutableLiveData;

    .line 47
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mWheelKeyProtectSwData:Landroidx/lifecycle/MutableLiveData;

    .line 52
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v0

    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->registerContentObserver()V

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mIcmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;

    invoke-interface {v0, p0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IIcmController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    return-void
.end method


# virtual methods
.method public getDoorKeyData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;",
            ">;"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mDoorKeyData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDoorKeyForCustomerValue()Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;
    .locals 1

    .line 312
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getDoorKeyForCustomer()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->fromSwsValue(I)Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    move-result-object v0

    return-object v0
.end method

.method public getEcallAvailableData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 276
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mEcallAvailableData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getKeyTouchDirection()Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;
    .locals 3

    .line 287
    :try_start_0
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getTouchRotationDirection()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;->fromIcmStatus(I)Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 289
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "MeterViewModel"

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastMaintenanceData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/bean/MaintainInfo;",
            ">;"
        }
    .end annotation

    .line 265
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mLastMaintainData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMenuBrightSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMenuBrightSw:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMenuMediaSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMenuMediaSw:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMenuTempSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMenuTempSw:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMenuWindModeSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMenuWindModeSw:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMenuWindPowerSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMenuWindPowerSw:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMileageAData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMileageA:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMileageBData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMileageB:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMileageDataSinceCharge()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMileageSinceLastCharge:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMileageDataSinceStart()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMileageSinceStartUp:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getNextMaintenanceData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lcom/xiaopeng/carcontrol/bean/MaintainInfo;",
            ">;"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mNextMaintainData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSpdWarningSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mSpdWarningSw:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSpdWarningValueData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mSpdWarningValue:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTotalMileageData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMileageTotal:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getWheelKeyProtectSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 329
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mWheelKeyProtectSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getXKeyData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mXKeyData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getXKeyForCustomerValue()Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;
    .locals 1

    .line 301
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->getXKeyForCustomer()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->fromSwsValue(I)Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;

    move-result-object v0

    return-object v0
.end method

.method protected handleDoorKeyChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyValue"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDoorKeyChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeterViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mDoorKeyData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->fromSwsValue(I)Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleEcallAvailableChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "available"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mEcallAvailableData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleLastMaintainChanged(Lcom/xiaopeng/carcontrol/bean/MaintainInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "last"
        }
    .end annotation

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mLastMaintainData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleNextMaintainChanged(Lcom/xiaopeng/carcontrol/bean/MaintainInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "next"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mNextMaintainData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleWheelKeyProtectChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mWheelKeyProtectSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method protected handleXKeyChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyValue"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleXKeyChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MeterViewModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mXKeyData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onBrightSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMenuMediaSw:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onMediaSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMenuMediaSw:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onMileageAChanged(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMileageA:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->formatMileage(FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onMileageBChanged(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMileageB:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->formatMileage(FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onMileageLastChargeChanged(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMileageSinceLastCharge:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->formatMileage(FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onMileageStartUpChanged(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMileageSinceStartUp:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->formatMileage(FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onMileageTotalChanged(F)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMileageTotal:Landroidx/lifecycle/MutableLiveData;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->formatMileage(FI)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSpeedWarningSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mSpdWarningSw:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onSpeedWarningValueChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mSpdWarningValue:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onTempSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMenuTempSw:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onWindModeSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMenuWindModeSw:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public onWindPowerSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enabled"
        }
    .end annotation

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->mMenuWindPowerSw:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public setDoorKeyForCustomerValue(Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "doorKeyForCustomer"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 306
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/DoorKeyForCustomer;->toIcmCmd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setDoorKeyForCustomer(I)V

    :cond_0
    return-void
.end method

.method public setKeyTouchDirection(Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "direction"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 281
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/KeyTouchDirection;->toIcmCmd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setTouchRotationDirection(I)V

    :cond_0
    return-void
.end method

.method public setXKeyForCustomerValue(Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyForCustomer"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 296
    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/XKeyForCustomer;->toSwsCmd()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/meter/MeterViewModel;->setXKeyForCustomer(I)V

    :cond_0
    return-void
.end method
