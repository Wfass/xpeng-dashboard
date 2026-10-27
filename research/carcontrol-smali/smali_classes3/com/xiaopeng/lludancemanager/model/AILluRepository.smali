.class public Lcom/xiaopeng/lludancemanager/model/AILluRepository;
.super Ljava/lang/Object;
.source "AILluRepository.java"


# static fields
.field private static final ASSETS_LLU_AI_CONFIG:Ljava/lang/String; = "lludance/ai_llu_config.json"

.field private static final ASSETS_LLU_AI_USER_MANUAL:Ljava/lang/String; = "lludance/ai_llu_welcome.json"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mLluAiLampMutableLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

.field private mUserManualMutableLiveData:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lludancemanager/bean/LluAiUserManualBean;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const-class v0, Lcom/xiaopeng/lludancemanager/model/AILluRepository;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->TAG:Ljava/lang/String;

    .line 31
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getSmartManager()Lcom/xiaopeng/xuimanager/smart/SmartManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    .line 32
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->mLluAiLampMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 33
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->mUserManualMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    .line 34
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->requestAiLluUserManual()V

    .line 35
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->requestAiLluResourceData()V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/lludancemanager/model/AILluRepository;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->parseData()V

    return-void
.end method

.method private parseData()V
    .locals 4

    :try_start_0
    const-string v0, "lludance/ai_llu_config.json"

    .line 75
    invoke-static {v0}, Lcom/xiaopeng/lludancemanager/util/FileUtil;->loadFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    new-instance v1, Lcom/xiaopeng/lludancemanager/model/AILluRepository$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lludancemanager/model/AILluRepository$3;-><init>(Lcom/xiaopeng/lludancemanager/model/AILluRepository;)V

    .line 77
    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/model/AILluRepository$3;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 76
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 79
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestAiLluData --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->TAG:Ljava/lang/String;

    const-string v1, "requestAiLluData --> lluAiLampBeans is null "

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 86
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;

    if-eqz v2, :cond_1

    .line 88
    invoke-virtual {v2}, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->getLampBg()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lludancemanager/util/ResUtil;->getDrawableResByName(Ljava/lang/String;)I

    move-result v3

    .line 89
    invoke-virtual {v2, v3}, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->setLampBgResId(I)V

    .line 90
    invoke-virtual {v2}, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->getNoteAudio()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lludancemanager/util/ResUtil;->getRawResByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->setNoteAudioResId(I)V

    .line 91
    invoke-virtual {v2}, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->getNoteText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/lludancemanager/util/ResUtil;->getDrawableResByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->setNoteTextResId(I)V

    .line 92
    iget-object v3, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 95
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->mLluAiLampMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method

.method private requestAiLluResourceData()V
    .locals 1

    .line 64
    new-instance v0, Lcom/xiaopeng/lludancemanager/model/AILluRepository$2;

    invoke-direct {v0, p0}, Lcom/xiaopeng/lludancemanager/model/AILluRepository$2;-><init>(Lcom/xiaopeng/lludancemanager/model/AILluRepository;)V

    invoke-static {v0}, Lcom/xiaopeng/carcontrol/util/ThreadUtils;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private requestAiLluUserManual()V
    .locals 4

    :try_start_0
    const-string v0, "lludance/ai_llu_welcome.json"

    .line 49
    invoke-static {v0}, Lcom/xiaopeng/lludancemanager/util/FileUtil;->loadFromAssets(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 50
    new-instance v1, Lcom/xiaopeng/lludancemanager/model/AILluRepository$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/lludancemanager/model/AILluRepository$1;-><init>(Lcom/xiaopeng/lludancemanager/model/AILluRepository;)V

    .line 51
    invoke-virtual {v1}, Lcom/xiaopeng/lludancemanager/model/AILluRepository$1;->getType()Ljava/lang/reflect/Type;

    move-result-object v1

    .line 50
    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/GsonUtil;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 53
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestAiLluUserManual --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->TAG:Ljava/lang/String;

    const-string v1, "requestAiLluUserManual --> lluAiLampBeans is null "

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 60
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->mUserManualMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v1, v0}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getLluAiLampMutableLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lludancemanager/bean/LluAiLampBean;",
            ">;>;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->mLluAiLampMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public getUserManualMutableLiveData()Landroidx/lifecycle/MutableLiveData;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/util/List<",
            "Lcom/xiaopeng/lludancemanager/bean/LluAiUserManualBean;",
            ">;>;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->mUserManualMutableLiveData:Landroidx/lifecycle/MutableLiveData;

    return-object v0
.end method

.method public registerAILluListener(Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-nez v0, :cond_0

    .line 127
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->TAG:Ljava/lang/String;

    const-string v0, "registerAILluListener  --> SmartManager is null "

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 131
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getInstance()Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/XuiClientWrapper;->getSmartManager()Lcom/xiaopeng/xuimanager/smart/SmartManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->registerCommonListener(Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 133
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public startAILlu(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-nez v0, :cond_0

    .line 103
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->TAG:Ljava/lang/String;

    const-string v0, "startAILlu  --> SmartManager is null "

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 107
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->startAiLluMode(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public stopAILlu()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-nez v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->TAG:Ljava/lang/String;

    const-string v1, "stopAILlu  --> SmartManager is null "

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 119
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->stopAiLluMode()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public unRegisterAILluListener(Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->mSmartManager:Lcom/xiaopeng/xuimanager/smart/SmartManager;

    if-nez v0, :cond_0

    .line 139
    iget-object p1, p0, Lcom/xiaopeng/lludancemanager/model/AILluRepository;->TAG:Ljava/lang/String;

    const-string v0, "unRegisterAILluListener  --> SmartManager is null "

    invoke-static {p1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 143
    :cond_0
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/smart/SmartManager;->unregisterCommonListener(Lcom/xiaopeng/xuimanager/smart/SmartManager$SmartCommonEventListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 145
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
