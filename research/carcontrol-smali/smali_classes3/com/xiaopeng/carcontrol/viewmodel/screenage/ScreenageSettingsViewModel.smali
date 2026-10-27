.class public Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;
.super Ljava/lang/Object;
.source "ScreenageSettingsViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/screenage/IScreenageSettingsViewModel;
.implements Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController$Callback;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScreenageSettingsViewModel"


# instance fields
.field private mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

.field private mAvmScreenageSettingsCallBack:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController$Callback;

.field private final mDrivingGuardData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mDrivingGuardPerspectiveSegData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNarPerspectiveSegData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNraSensitivityData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mNraSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSentinelModeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSteeringImageFullSegData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSteeringImageFullSwData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransCarbodyData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTransChassisData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mTurnSignalActivateRearSideVideoData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mXpuScreenageSettingsCallBack:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;

.field private mXpucontroller:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mNraSwData:Landroidx/lifecycle/MutableLiveData;

    .line 22
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mNraSensitivityData:Landroidx/lifecycle/MutableLiveData;

    .line 23
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mSentinelModeData:Landroidx/lifecycle/MutableLiveData;

    .line 24
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mDrivingGuardData:Landroidx/lifecycle/MutableLiveData;

    .line 25
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mDrivingGuardPerspectiveSegData:Landroidx/lifecycle/MutableLiveData;

    .line 26
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mTransChassisData:Landroidx/lifecycle/MutableLiveData;

    .line 27
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mTransCarbodyData:Landroidx/lifecycle/MutableLiveData;

    .line 28
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mNarPerspectiveSegData:Landroidx/lifecycle/MutableLiveData;

    .line 29
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mSteeringImageFullSegData:Landroidx/lifecycle/MutableLiveData;

    .line 30
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mSteeringImageFullSwData:Landroidx/lifecycle/MutableLiveData;

    .line 31
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mTurnSignalActivateRearSideVideoData:Landroidx/lifecycle/MutableLiveData;

    .line 33
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mXpuScreenageSettingsCallBack:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;

    .line 46
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel$2;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mAvmScreenageSettingsCallBack:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController$Callback;

    .line 96
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_avm"

    .line 97
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    const-string/jumbo v1, "xp_xpu"

    .line 98
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mXpucontroller:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;

    .line 99
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mXpuScreenageSettingsCallBack:Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController$Callback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IXpuController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mAvmScreenageSettingsCallBack:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController$Callback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    return-void
.end method


# virtual methods
.method public DrivingGuardDataChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mDrivingGuardData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public DrivingGuardPerspectiveSeg(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mDrivingGuardPerspectiveSegData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public NarPerspectiveSelectionChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mNarPerspectiveSegData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public NraSensitivityChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 242
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mNraSensitivityData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public NraSwChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mNraSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public SentinelModeChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mSentinelModeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public SteeringImageFullSelectionChanged(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mSteeringImageFullSegData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public SteeringImageFullStateChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 258
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mSteeringImageFullSwData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public TransCarbodyChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mTransCarbodyData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public TransChassisChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "enable"
        }
    .end annotation

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mTransChassisData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public TurnSignalActivateRearSideVideoChanged(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mTurnSignalActivateRearSideVideoData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public getDrivingGuardData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mDrivingGuardData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDrivingGuardPerspectiveSegData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mDrivingGuardPerspectiveSegData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getDrivingGuardSw()Z
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->getDrivingGuardSw()Z

    move-result v0

    return v0
.end method

.method public getNarPerspectiveSelection()I
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->getNarPerspectiveSelection()I

    move-result v0

    return v0
.end method

.method public getNarPerspectiveSelectionData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mNarPerspectiveSegData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getNraSensitivityData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mNraSensitivityData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getNraSwData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mNraSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getPerspectiveSelection()I
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->getPerspectiveSelection()I

    move-result v0

    return v0
.end method

.method public getSentinelModeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mSentinelModeData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSteeringImageFullSelection()I
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->getSteeringImageFullSelection()I

    move-result v0

    return v0
.end method

.method public getSteeringImageFullSelectionData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mSteeringImageFullSegData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSteeringImageFullState()Z
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->getSteeringImageFullState()Z

    move-result v0

    return v0
.end method

.method public getSteeringImageFullStateData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mSteeringImageFullSwData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTransCarbodyData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mTransCarbodyData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTransCarbodySw()Z
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->getTransCarbodySw()Z

    move-result v0

    return v0
.end method

.method public getTransChasisSw()Z
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->getTransChasisSw()Z

    move-result v0

    return v0
.end method

.method public getTranschassisData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mTransChassisData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTurnSignalActivateRearSideVideoData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mTurnSignalActivateRearSideVideoData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getTurnSignalActivateRearVideoSw()Z
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->getTurnSignalActivateRearVideoSw()Z

    move-result v0

    return v0
.end method

.method public setDrivingGuardSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->setDrivingGuardSw(Z)V

    return-void
.end method

.method public setNarPerspectiveSelection(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 157
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->setNarPerspectiveSelection(I)V

    return-void
.end method

.method public setPerspectiveSelection(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->setPerspectiveSelection(I)V

    return-void
.end method

.method public setSteeringImageFullSelection(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->setSteeringImageFullSelection(I)V

    return-void
.end method

.method public setSteeringImageFullState(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "on"
        }
    .end annotation

    .line 142
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->setSteeringImageFullState(Z)V

    return-void
.end method

.method public setTransCarbodySw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->setTransCarbodySw(Z)V

    return-void
.end method

.method public setTransChasisSw(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->setTransChasisSw(Z)V

    return-void
.end method

.method public setTurnSignalActivateRearSideVideoEnable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isOn"
        }
    .end annotation

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/screenage/ScreenageSettingsViewModel;->mAvmController:Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IAvmController;->setTurnSignalActivateRearSideVideoEnable(Z)V

    return-void
.end method
