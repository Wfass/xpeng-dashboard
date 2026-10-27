.class public Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;
.super Ljava/lang/Object;
.source "ScenarioViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/scenario/IScenarioViewModel;


# static fields
.field private static final TAG:Ljava/lang/String; = "ScenarioViewModel"


# instance fields
.field private final mCinemaModeEndData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mCinemaModeStartData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mMeditationModeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mRescueModeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mScenarioCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController$Callback;

.field private mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

.field private final mScenarioStateData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mSleepModeEndData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSleepModeStartData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVipSeatModeEndData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mVipSeatModeStartData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mScenarioStateData:Landroidx/lifecycle/MutableLiveData;

    .line 15
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mMeditationModeData:Landroidx/lifecycle/MutableLiveData;

    .line 16
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mRescueModeData:Landroidx/lifecycle/MutableLiveData;

    .line 18
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mVipSeatModeStartData:Landroidx/lifecycle/MutableLiveData;

    .line 19
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mVipSeatModeEndData:Landroidx/lifecycle/MutableLiveData;

    .line 21
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mSleepModeStartData:Landroidx/lifecycle/MutableLiveData;

    .line 22
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mSleepModeEndData:Landroidx/lifecycle/MutableLiveData;

    .line 24
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mCinemaModeStartData:Landroidx/lifecycle/MutableLiveData;

    .line 25
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mCinemaModeEndData:Landroidx/lifecycle/MutableLiveData;

    .line 30
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mScenarioCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController$Callback;

    .line 48
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v1

    const-string/jumbo v2, "xp_UserScenarioService"

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    .line 49
    invoke-interface {v1, v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;Z)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->handleScenarioStateChanged(Z)V

    return-void
.end method

.method private handleScenarioStateChanged(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "start"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mScenarioStateData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 186
    iget-object p1, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mScenarioStateData:Landroidx/lifecycle/MutableLiveData;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getCinemaModeEndData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mCinemaModeEndData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCinemaModeStartData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mCinemaModeStartData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getCurrentUserScenario()Ljava/lang/String;
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;->getCurrentUserScenario()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentUserScenarioValue()Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->getCurrentUserScenario()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->fromScenario(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    move-result-object v0

    return-object v0
.end method

.method public getMeditationModeData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mMeditationModeData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getRescueModeData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mRescueModeData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getScenarioStateData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mScenarioStateData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSleepModeEndData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mSleepModeEndData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getSleepModeStartData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mSleepModeStartData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getUserScenarioStatus(Ljava/lang/String;)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "scenario"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;->getUserScenarioStatus(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public getVipSeatModeEndData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mVipSeatModeEndData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getVipSeatModeStartData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mVipSeatModeStartData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public handleNapaCinemaModeEnd(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mCinemaModeEndData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public handleNapaCinemaModeStart(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mCinemaModeStartData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public handleNapaMeditationMode(ZZZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "show",
            "vice",
            "switchMode"
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p2, :cond_1

    or-int/lit8 p1, p1, 0x2

    :cond_1
    if-eqz p3, :cond_2

    or-int/lit8 p1, p1, 0x1

    .line 91
    :cond_2
    iget-object p2, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mMeditationModeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public handleNapaRescueMode(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "show"
        }
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mRescueModeData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public handleNapaSleepModeEnd(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mSleepModeEndData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public handleNapaSleepModeStart(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "info"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mSleepModeStartData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public handleNapaVipSeatModeEnd(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "reason"
        }
    .end annotation

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mVipSeatModeEndData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public handleNapaVipSeatModeStart(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isVoice"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mVipSeatModeStartData:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public isScenarioModeRunning(Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mode"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    invoke-virtual {p1}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->toScenarioStr()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;->getUserScenarioStatus(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public registerBinderObserver()V
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;->registerBinderObserver()V

    return-void
.end method

.method public reportScenarioStatus(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "scenario",
            "state"
        }
    .end annotation

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;->reportScenarioState(Ljava/lang/String;I)V

    return-void
.end method

.method public startScenario(ZLjava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "scenario"
        }
    .end annotation

    .line 124
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->mScenarioController:Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IScenarioController;->startScenario(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public startScenario(ZLcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "start",
            "mode"
        }
    .end annotation

    .line 53
    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->toScenarioStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioViewModel;->startScenario(ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    sget-object v1, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->VipSeat:Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;

    if-ne p2, v1, :cond_1

    .line 57
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    const-string v1, "gearNotP"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 63
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v1

    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->vip_seat_notice_gear_p:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->showToast(I)V

    .line 69
    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startScenario, start: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", ScenarioMode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p2}, Lcom/xiaopeng/carcontrol/viewmodel/scenario/ScenarioMode;->toScenarioStr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", result: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    const-string v0, "ScenarioViewModel"

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
