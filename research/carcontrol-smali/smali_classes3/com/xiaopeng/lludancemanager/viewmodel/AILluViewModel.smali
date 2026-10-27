.class public Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "AILluViewModel.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListener;


# static fields
.field private static final DEFAULT_CODE:I = 0x0

.field public static final MAX_LAMP_BEAM_INDEX:I = 0xd

.field private static final TAG:Ljava/lang/String; = "AILluViewModel"


# instance fields
.field private mCurrentLampIndex:I

.field private final mExperienceState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLampMusicState:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;",
            ">;"
        }
    .end annotation
.end field

.field private mLluAiLampBeans:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mLluAiLampMediatorLiveData:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mLluAiUserManualLiveData:Landroidx/lifecycle/MediatorLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lludancemanager/bean/LluAiUserManualBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLluViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

.field private mRepository:Lcom/xiaopeng/lludancemanager/model/AILluRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 35
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 26
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mExperienceState:Landroidx/lifecycle/MutableLiveData;

    .line 27
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mLampMusicState:Landroidx/lifecycle/MutableLiveData;

    .line 28
    new-instance v0, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mLluAiLampMediatorLiveData:Landroidx/lifecycle/MediatorLiveData;

    .line 29
    new-instance v1, Landroidx/lifecycle/MediatorLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MediatorLiveData;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mLluAiUserManualLiveData:Landroidx/lifecycle/MediatorLiveData;

    const/4 v2, -0x1

    .line 33
    iput v2, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mCurrentLampIndex:I

    .line 36
    new-instance v2, Lcom/xiaopeng/lludancemanager/model/AILluRepository;

    invoke-direct {v2}, Lcom/xiaopeng/lludancemanager/model/AILluRepository;-><init>()V

    iput-object v2, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mRepository:Lcom/xiaopeng/lludancemanager/model/AILluRepository;

    .line 37
    invoke-static {}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getInstance()Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/carcontrol/viewmodel/lamp/ILluViewModel;

    invoke-virtual {v2, v3}, Lcom/xiaopeng/carcontrol/viewmodel/ViewModelManager;->getViewModelImpl(Ljava/lang/Class;)Lcom/xiaopeng/carcontrol/viewmodel/IBaseViewModel;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    iput-object v2, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mLluViewModel:Lcom/xiaopeng/carcontrol/viewmodel/lamp/LluViewModel;

    .line 38
    iget-object v2, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mRepository:Lcom/xiaopeng/lludancemanager/model/AILluRepository;

    invoke-virtual {v2}, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->getLluAiLampMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v2

    new-instance v3, Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$AILluViewModel$lLRzb_JwlU8EogMNbJW0o3zqclk;

    invoke-direct {v3, p0}, Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$AILluViewModel$lLRzb_JwlU8EogMNbJW0o3zqclk;-><init>(Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;)V

    invoke-virtual {v0, v2, v3}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mRepository:Lcom/xiaopeng/lludancemanager/model/AILluRepository;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->getUserManualMutableLiveData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v2, Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$AILluViewModel$JrO8IgnetXzxe2hz-KX8c9obsgE;

    invoke-direct {v2, p0}, Lcom/xiaopeng/lludancemanager/viewmodel/-$$Lambda$AILluViewModel$JrO8IgnetXzxe2hz-KX8c9obsgE;-><init>(Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;)V

    invoke-virtual {v1, v0, v2}, Landroidx/lifecycle/MediatorLiveData;->addSource(Landroidx/lifecycle/LiveData;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public static synthetic lambda$JrO8IgnetXzxe2hz-KX8c9obsgE(Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->updateLluUserManual(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic lambda$lLRzb_JwlU8EogMNbJW0o3zqclk(Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->updateLluAiLampData(Ljava/util/List;)V

    return-void
.end method

.method private parseCode(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 109
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->updateExperienceState(Z)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 112
    invoke-direct {p0, p1}, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->updateLampValue(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateLampValue(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "index"
        }
    .end annotation

    const/16 v0, 0xd

    if-le p1, v0, :cond_0

    .line 119
    sget-object v0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLamp : invalid index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    add-int/lit8 p1, p1, -0x1

    .line 123
    iget v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mCurrentLampIndex:I

    if-ne p1, v0, :cond_1

    .line 124
    sget-object p1, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->TAG:Ljava/lang/String;

    const-string v0, "updateLamp\uff1bcurrent index is same"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 127
    :cond_1
    iput p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mCurrentLampIndex:I

    .line 128
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mLluAiLampBeans:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    .line 132
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mLampMusicState:Landroidx/lifecycle/MutableLiveData;

    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mLluAiLampBeans:Ljava/util/List;

    iget v1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mCurrentLampIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void

    .line 129
    :cond_3
    :goto_0
    sget-object p1, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->TAG:Ljava/lang/String;

    const-string v0, "onCommonEvent current mLluAiLampBeans is null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateLluAiLampData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "aiLampBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mLluAiLampBeans:Ljava/util/List;

    .line 59
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mLluAiLampMediatorLiveData:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private updateLluUserManual(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lluAiUserManualBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lludancemanager/bean/LluAiUserManualBean;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mLluAiUserManualLiveData:Landroidx/lifecycle/MediatorLiveData;

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MediatorLiveData;->postValue(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getExperienceState()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mExperienceState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLampMusicState()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;",
            ">;"
        }
    .end annotation

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mLampMusicState:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getLluAiLampMediatorLiveData()Landroidx/lifecycle/MediatorLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;",
            ">;>;"
        }
    .end annotation

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mLluAiLampMediatorLiveData:Landroidx/lifecycle/MediatorLiveData;

    return-object v0
.end method

.method public getLluAiUserManualLiveData()Landroidx/lifecycle/MediatorLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MediatorLiveData<",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lludancemanager/bean/LluAiUserManualBean;",
            ">;>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mLluAiUserManualLiveData:Landroidx/lifecycle/MediatorLiveData;

    return-object v0
.end method

.method public onCommonEvent(III)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "lluType",
            "aiAlgorithmType",
            "code"
        }
    .end annotation

    .line 99
    sget-object v0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCommonEvent:llu_type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " aiAlgorithmType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, " code:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p2, 0x1000

    if-ne p1, p2, :cond_0

    .line 102
    invoke-direct {p0, p3}, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->parseCode(I)V

    :cond_0
    return-void
.end method

.method public registerAILluListener()V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mRepository:Lcom/xiaopeng/lludancemanager/model/AILluRepository;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->registerAILluListener(Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListener;)V

    return-void
.end method

.method public startAiLlu(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mRepository:Lcom/xiaopeng/lludancemanager/model/AILluRepository;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->startAILlu(I)V

    return-void
.end method

.method public stopAiLlu()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mRepository:Lcom/xiaopeng/lludancemanager/model/AILluRepository;

    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->stopAILlu()V

    return-void
.end method

.method public unRegisterAILluListener()V
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mRepository:Lcom/xiaopeng/lludancemanager/model/AILluRepository;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->unRegisterAILluListener(Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListener;)V

    return-void
.end method

.method public updateExperienceState(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isExperiencing"
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isExperiencing:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateExperienceState"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/viewmodel/AILluViewModel;->mExperienceState:Landroidx/lifecycle/MutableLiveData;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
