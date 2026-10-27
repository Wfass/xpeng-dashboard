.class public Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;
.super Ljava/lang/Object;
.source "ADriveSystemViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/IADriveSystemViewModel;
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "ADriveSystemViewModel"


# instance fields
.field private final mBodyFaultIndicationData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrivingRiskWarningData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mGreenLightRemindStateData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mIntelligentOverspeedRemindStateData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mStartRemindStateData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mXpuADriveSyatemCallBack:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;

.field private mXpucontroller:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mBodyFaultIndicationData:Landroidx/lifecycle/MutableLiveData;

    .line 20
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mDrivingRiskWarningData:Landroidx/lifecycle/MutableLiveData;

    .line 21
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mStartRemindStateData:Landroidx/lifecycle/MutableLiveData;

    .line 22
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mGreenLightRemindStateData:Landroidx/lifecycle/MutableLiveData;

    .line 23
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mIntelligentOverspeedRemindStateData:Landroidx/lifecycle/MutableLiveData;

    .line 25
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mXpuADriveSyatemCallBack:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;

    .line 54
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_xpu"

    .line 55
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mXpucontroller:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    .line 56
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mXpuADriveSyatemCallBack:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    return-void
.end method


# virtual methods
.method public BodyFaultIndicationChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mBodyFaultIndicationData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public DrivingRiskWarningChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mDrivingRiskWarningData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public GreenLightRemindStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mGreenLightRemindStateData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public IntelligentOverspeedRemindStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mIntelligentOverspeedRemindStateData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public StartRemindStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 146
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mStartRemindStateData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public getBodyFaultIndicationData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mBodyFaultIndicationData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getBodyFaultIndicationSw()Z
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mXpucontroller:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getBodyFaultIndicationSw()Z

    move-result v0

    return v0
.end method

.method public getDrivingRiskWarningData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mDrivingRiskWarningData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDrivingRiskWarningSw()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mXpucontroller:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getDrivingRiskWarningSw()Z

    move-result v0

    return v0
.end method

.method public getGreenLightRemindStateData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mGreenLightRemindStateData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getGreenLightRemindStateSw()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mXpucontroller:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getGreenLightRemindStateSw()Z

    move-result v0

    return v0
.end method

.method public getIntelligentOverspeedRemindStateData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mIntelligentOverspeedRemindStateData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getIntelligentOverspeedRemindStateSw()Z
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mXpucontroller:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getIntelligentOverspeedRemindStateSw()Z

    move-result v0

    return v0
.end method

.method public getStartRemindStateData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mStartRemindStateData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getStartRemindStateSw()Z
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mXpucontroller:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->getStartRemindStateSw()Z

    move-result v0

    return v0
.end method

.method public setBodyFaultIndicationSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mXpucontroller:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setBodyFaultIndicationSw(Z)V

    return-void
.end method

.method public setDrivingRiskWarningSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mXpucontroller:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setDrivingRiskWarningSw(Z)V

    return-void
.end method

.method public setGreenLightRemindStateSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mXpucontroller:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setGreenLightRemindStateSw(Z)V

    return-void
.end method

.method public setIntelligentOverspeedRemindStateSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mXpucontroller:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setIntelligentOverspeedRemindStateSw(Z)V

    return-void
.end method

.method public setStartRemindStateSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/adrivesystem/ADriveSystemViewModel;->mXpucontroller:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->setStartRemindStateSw(Z)V

    return-void
.end method
