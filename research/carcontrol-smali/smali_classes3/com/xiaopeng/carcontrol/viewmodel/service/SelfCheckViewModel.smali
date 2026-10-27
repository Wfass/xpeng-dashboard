.class public Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;
.super Ljava/lang/Object;
.source "SelfCheckViewModel.java"

# interfaces
.implements Lcom/xiaopeng/carcontrol/viewmodel/service/ISelfCheckViewModel;


# static fields
.field private static final ALLOW_AUTO_SELF_CHECK_OFF:I = 0x0

.field private static final ALLOW_AUTO_SELF_CHECK_ON:I = 0x1

.field private static final KEY_ALLOW_AUTO_SELF_CHECK:Ljava/lang/String; = "XP_Allow_Self_Check"

.field private static final TAG:Ljava/lang/String; = "SelfCheckViewModel"


# instance fields
.field private final mAllFaultCodeData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mAutoSelfCheckData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mMcuCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController$Callback;

.field private mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

.field private mSelfCheckListener:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;

.field private final mSelfCheckProgressData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVcuCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController$Callback;

.field private mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

.field private final showAllFaultViewData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final showFaultDetailViewData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->showAllFaultViewData:Landroidx/lifecycle/MutableLiveData;

    .line 39
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->showFaultDetailViewData:Landroidx/lifecycle/MutableLiveData;

    .line 40
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->mSelfCheckProgressData:Landroidx/lifecycle/MutableLiveData;

    .line 41
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->mAutoSelfCheckData:Landroidx/lifecycle/MutableLiveData;

    .line 42
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->mAllFaultCodeData:Landroidx/lifecycle/MutableLiveData;

    .line 44
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$1;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->mSelfCheckListener:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;

    .line 275
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$2;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->mMcuCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController$Callback;

    .line 287
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$3;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->mVcuCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController$Callback;

    .line 172
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    move-result-object v0

    const-string/jumbo v1, "xp_vcu"

    .line 173
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    iput-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    const-string/jumbo v1, "xp_mcu"

    .line 174
    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->getController(Ljava/lang/String;)Lcom/xiaopeng/carcontrol/carmanager/BaseCarController;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->mVcuCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController$Callback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->mMcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->mMcuCallback:Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController$Callback;

    invoke-interface {v0, v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IMcuController;->registerCallback(Lcom/xiaopeng/carcontrol/carmanager/IBaseCallback;)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->clearCheckInfoCard()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->mAutoSelfCheckData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method static synthetic access$200(Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;)Landroidx/lifecycle/MutableLiveData;
    .locals 0

    .line 29
    iget-object p0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->mAllFaultCodeData:Landroidx/lifecycle/MutableLiveData;

    return-object p0
.end method

.method private clearCheckInfoCard()V
    .locals 2

    .line 247
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const/16 v1, 0x12

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->cancelInfoflowCard(I)V

    .line 248
    invoke-static {}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->getInstance()Lcom/xiaopeng/carcontrol/helper/NotificationHelper;

    move-result-object v0

    const/16 v1, 0x13

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/helper/NotificationHelper;->cancelInfoflowCard(I)V

    return-void
.end method

.method private getTTS()Ljava/lang/String;
    .locals 4

    .line 253
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getFaultCount()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, ""

    if-ne v0, v1, :cond_1

    .line 255
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getFirstFaultItem()Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "SelfCheckViewModel"

    const-string v1, " ERROR: fault num do not match falut items"

    .line 257
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    .line 260
    :cond_0
    sget v2, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_tts_one:I

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/bean/selfcheck/CheckDetailItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v3

    invoke-static {v2, v1}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    .line 262
    sget v0, Lcom/xiaopeng/carcontrolmodule/R$string;->selfcheck_tts_multi:I

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/common/util/ResUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_2
    :goto_0
    return-object v2
.end method

.method public static synthetic lambda$-8mZcpyME4Fj7Sum8-ziboJgKR4(Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->stopSelfCheckOnMain()V

    return-void
.end method

.method public static synthetic lambda$Vn9BfxNS1uJaBbzXXY8D8xq31t4(Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;)V
    .locals 0

    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->startSelfCheckOnMain()V

    return-void
.end method

.method static synthetic lambda$getFaultDetail$1(ILjava/lang/String;Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "type",
            "code",
            "callback"
        }
    .end annotation

    .line 311
    invoke-static {p0, p1, p2}, Lcom/xiaopeng/carcontrol/IpcRouterService;->getFaultCode(ILjava/lang/String;Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V

    return-void
.end method

.method static synthetic lambda$getMobilePhone$2(Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "callback"
        }
    .end annotation

    .line 316
    invoke-static {p0}, Lcom/xiaopeng/carcontrol/IpcRouterService;->getMobilePhone(Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V

    return-void
.end method

.method static synthetic lambda$reserveRemoteDiagnose$3(Ljava/lang/String;Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "phone",
            "callback"
        }
    .end annotation

    .line 321
    invoke-static {p0, p1}, Lcom/xiaopeng/carcontrol/IpcRouterService;->reserveRemoteDiagnose(Ljava/lang/String;Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V

    return-void
.end method

.method static synthetic lambda$setCarCheckState$4(ILcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "enable",
            "callback"
        }
    .end annotation

    .line 326
    invoke-static {p0, p1}, Lcom/xiaopeng/carcontrol/IpcRouterService;->setCarCheckState(ILcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V

    return-void
.end method

.method private playTTS()V
    .locals 2

    .line 268
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->getTTS()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 272
    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/SelfCheckUtil;->playTts(Ljava/lang/String;)V

    return-void
.end method

.method private startSelfCheckOnMain()V
    .locals 3

    const-string v0, "SelfCheckViewModel"

    const-string v1, "start self check..."

    const/4 v2, 0x0

    .line 206
    invoke-static {v0, v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 207
    invoke-static {}, Lcom/xiaopeng/carcontrol/App;->isMainProcess()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->isChecking()Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v1}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->getGearLevel()I

    move-result v1

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    const-string v1, "not GEAR_LEVEL_P, self only check on GEAR_LEVEL_P"

    .line 219
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 222
    :cond_2
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->mSelfCheckListener:Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->setViewListener(Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/ICheckCarListener;)V

    .line 223
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->startCheck()V

    return-void
.end method

.method private stopSelfCheckOnMain()V
    .locals 3

    .line 237
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->isCheckComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 238
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->isSeverity()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "SelfCheckViewModel"

    const-string v2, "stopSelfCheck clear info card..."

    .line 239
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 240
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->clearCheckInfoCard()V

    goto :goto_0

    .line 242
    :cond_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/viewmodel/selfcheck/CheckCarMode;->stopCheck()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getAllFaultCodeData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 361
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->mAllFaultCodeData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAllFaultData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->showAllFaultViewData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getAllFaultList()V
    .locals 1

    .line 296
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$SGiVSCeuFUnWp2TevvBlihNO1VE;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$SGiVSCeuFUnWp2TevvBlihNO1VE;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getAutoSelfCheckEnableData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->mAutoSelfCheckData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getFaultDetail(ILjava/lang/String;Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "type",
            "code",
            "callback"
        }
    .end annotation

    .line 311
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$dGZYcfJoOCNJExppPqCTpxhaOoA;

    invoke-direct {v0, p1, p2, p3}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$dGZYcfJoOCNJExppPqCTpxhaOoA;-><init>(ILjava/lang/String;Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getFaultDetailData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->showFaultDetailViewData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getMobilePhone(Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .line 316
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$oT_MKr1DSdjLIH73ozB7Q98Xth8;

    invoke-direct {v0, p1}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$oT_MKr1DSdjLIH73ozB7Q98Xth8;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getSelfCheckProgressData()Landroidx/lifecycle/LiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->mSelfCheckProgressData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public handleAllFaultData(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 331
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->showAllFaultViewData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public handleFaultDetailData(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 336
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->showFaultDetailViewData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public handleSelfCheckProgressChanged(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    .line 341
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->mSelfCheckProgressData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method public isAutoSelfCheck()Z
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->isAutoSelfCheck()Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$getAllFaultList$0$SelfCheckViewModel()V
    .locals 1

    .line 296
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel$4;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/IpcRouterService;->getAllFaultCode(Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V

    return-void
.end method

.method public reserveRemoteDiagnose(Ljava/lang/String;Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "phone",
            "callback"
        }
    .end annotation

    .line 321
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$HweOR8J7De4b4Fsfion5_gUk3ac;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$HweOR8J7De4b4Fsfion5_gUk3ac;-><init>(Ljava/lang/String;Lcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setAutoSelfCheck(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "auto"
        }
    .end annotation

    const/4 v0, 0x1

    .line 187
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->setAutoSelfCheck(ZZ)V

    return-void
.end method

.method public setAutoSelfCheck(ZZ)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "needSave"
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->mVcuController:Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;

    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/carcontrol/carmanager/controller/IVcuController;->setIgOnAutoCheckSw(ZZ)V

    return-void
.end method

.method public setCarCheckState(ILcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "enable",
            "callback"
        }
    .end annotation

    .line 326
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$47ukWY5Vst5mVEqouD7qD7tzj-M;

    invoke-direct {v0, p1, p2}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$47ukWY5Vst5mVEqouD7qD7tzj-M;-><init>(ILcom/xiaopeng/carcontrol/viewmodel/service/IDiagnosticCallback;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public startSelfCheck()V
    .locals 1

    .line 197
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->startSelfCheckOnMain()V

    goto :goto_0

    .line 200
    :cond_0
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$Vn9BfxNS1uJaBbzXXY8D8xq31t4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$Vn9BfxNS1uJaBbzXXY8D8xq31t4;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method

.method public stopSelfCheck()V
    .locals 1

    .line 228
    invoke-static {}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->isMainThread()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 229
    invoke-direct {p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;->stopSelfCheckOnMain()V

    goto :goto_0

    .line 231
    :cond_0
    new-instance v0, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$-8mZcpyME4Fj7Sum8-ziboJgKR4;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/viewmodel/service/-$$Lambda$SelfCheckViewModel$-8mZcpyME4Fj7Sum8-ziboJgKR4;-><init>(Lcom/xiaopeng/carcontrol/viewmodel/service/SelfCheckViewModel;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->runOnMainThread(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
