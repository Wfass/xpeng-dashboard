.class public Lcom/xiaopeng/xuiservice/xapp/XAppService;
.super Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;
.source "XAppService.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/XUIServiceBase;
.implements Lcom/xiaopeng/xuiservice/xapp/XAppHalService$XAppHalListener;
.implements Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$XMiniProgHalListener;
.implements Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;


# static fields
.field private static final APPLIST_CHANGE_ACTION:Ljava/lang/String; = "com.xiaopeng.intent.action.XP_NAPA_APP_LIST_CHANGE"

.field public static final DBG:Z = true

.field private static final GRANT_FOLDERS:[Ljava/lang/String;

.field private static INSTANCE:Lcom/xiaopeng/xuiservice/xapp/XAppService; = null

.field private static final MINIPROG_EVENT:I = 0x1

.field public static final TAG:Ljava/lang/String; = "XAPP.SERVICE.XAppService"

.field private static final mAppBizHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/xiaopeng/xuiservice/xapp/AppBizHandler;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private applistMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/app/xpAppInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private isMiniProgEnable:Z

.field private final ixAppEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/xapp/IXAppEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final ixMiniProgEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify<",
            "Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

.field protected volatile mMiniProgramStarting:Z

.field private mWindowManager:Landroid/view/WindowManager;

.field private final mXAppHal:Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

.field private mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

.field private mXSpeechService:Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 69
    const-string v0, "/data/Log"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->GRANT_FOLDERS:[Ljava/lang/String;

    .line 92
    const/4 v0, 0x0

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->INSTANCE:Lcom/xiaopeng/xuiservice/xapp/XAppService;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mAppBizHandlerMap:Ljava/util/Map;

    .line 115
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mAppBizHandlerMap:Ljava/util/Map;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/xpad/XPADBizManager;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 163
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->isMiniProgEnable:Z

    .line 76
    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProgramStarting:Z

    .line 77
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/XAppService$1;

    const-string v1, "XAPP.SERVICE.XAppService"

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppService$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->ixAppEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 91
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->applistMap:Ljava/util/Map;

    .line 95
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/XAppService$2;

    const-string v1, "XAPP.SERVICE.XAppService"

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppService$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->ixMiniProgEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    .line 164
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mContext:Landroid/content/Context;

    .line 165
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mXAppHal:Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mWindowManager:Landroid/view/WindowManager;

    .line 167
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->isBootComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 168
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppService;->initXApp()V

    goto :goto_0

    .line 170
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 171
    .local v0, "filter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerListener(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 174
    .end local v0    # "filter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    sput-object p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->INSTANCE:Lcom/xiaopeng/xuiservice/xapp/XAppService;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/XAppService;)Lcom/xiaopeng/xuiservice/xapp/XAppHalService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppService;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mXAppHal:Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/XAppService;)Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/XAppService;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    return-object v0
.end method

.method private dispatchMiniProgCallback(Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "data"    # Ljava/util/Map;

    .line 629
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppService;
    .locals 1

    .line 178
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->INSTANCE:Lcom/xiaopeng/xuiservice/xapp/XAppService;

    return-object v0
.end method

.method private handleApplistChanged(Landroid/content/Intent;)V
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .line 764
    const-string v0, "data"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 765
    .local v0, "data":Landroid/os/Bundle;
    if-eqz v0, :cond_3

    .line 766
    const-string v1, "supportScreenId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 767
    .local v1, "displayIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 771
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 773
    .local v3, "displayId":I
    :try_start_0
    invoke-static {v3}, Lcom/xiaopeng/xuimanager/xapp/XAppManager;->getXpAppPackageList(I)Ljava/util/List;

    move-result-object v4

    .line 774
    .local v4, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->applistMap:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 775
    const-string v5, "XAPP.SERVICE.XAppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleApplistChanged,displayId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ",infoList="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 778
    .end local v4    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    goto :goto_1

    .line 776
    :catch_0
    move-exception v4

    .line 777
    .local v4, "e":Ljava/lang/Exception;
    const-string v5, "XAPP.SERVICE.XAppService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleApplistChanged e="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ",displayId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 779
    .end local v3    # "displayId":I
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    goto :goto_0

    .line 780
    .end local v1    # "displayIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_1
    goto :goto_3

    .line 768
    .restart local v1    # "displayIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    :goto_2
    const-string v2, "XAPP.SERVICE.XAppService"

    const-string v3, "handleApplistChanged,displayIds is null"

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    return-void

    .line 781
    .end local v1    # "displayIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_3
    const-string v1, "XAPP.SERVICE.XAppService"

    const-string v2, "handleApplistChanged,data is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 783
    :goto_3
    return-void
.end method

.method private initCarGearListener()V
    .locals 2

    .line 193
    invoke-static {}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->getInstance()Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/XAppService$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/XAppService$3;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppService;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/carcontrol/CarClientManager;->addVcuManagerListener(Landroid/car/hardware/vcu/CarVcuManager$CarVcuEventCallback;)V

    .line 206
    return-void
.end method

.method private initMiniProgService()V
    .locals 3

    .line 182
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isMiniProgramEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->isMiniProgEnable:Z

    .line 183
    const-string v0, "XAPP.SERVICE.XAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMiniProgEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->isMiniProgEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->isMiniProgEnable:Z

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    .line 186
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->ixMiniProgEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->registerMiniProgListener(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService$XMiniProgHalListener;)V

    .line 190
    :cond_0
    return-void
.end method

.method private initXApp()V
    .locals 2

    .line 150
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppService;->initMiniProgService()V

    .line 151
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mXSpeechService:Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mXSpeechService:Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/speech/XAppSpeechService;->start()V

    .line 153
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->getInstance()Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->setXAppService(Lcom/xiaopeng/xuiservice/xapp/XAppService;)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mXAppManagerService:Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/XAppManagerService;->setupWithMiniProgService(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;)V

    .line 156
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppService;->initCarGearListener()V

    .line 157
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/video/VideoTestReceiver;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/video/VideoTestReceiver;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/video/VideoTestReceiver;->register(Landroid/content/Context;)V

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    .local v0, "filter":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const-string v1, "com.xiaopeng.intent.action.XP_NAPA_APP_LIST_CHANGE"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    invoke-virtual {v1, p0, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerListenerDynamically(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 161
    return-void
.end method

.method public static synthetic lambda$onReceive$0(Lcom/xiaopeng/xuiservice/xapp/XAppService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .line 145
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppService;->handleApplistChanged(Landroid/content/Intent;)V

    return-void
.end method

.method private launchUserScenario(Ljava/lang/String;I)V
    .locals 5
    .param p1, "scenario"    # Ljava/lang/String;
    .param p2, "displayId"    # I

    .line 748
    if-eqz p1, :cond_0

    .line 749
    const-string v0, "XAPP.SERVICE.XAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchUserScenario:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 752
    .local v0, "obj":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "screenId"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 755
    goto :goto_0

    .line 753
    :catch_0
    move-exception v1

    .line 754
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "XAPP.SERVICE.XAppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "launchUserScenario e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->getInstance()Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;

    move-result-object v1

    const-string v2, "activity"

    .line 757
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    .line 756
    invoke-virtual {v1, p1, v2, v3}, Lcom/xiaopeng/xuiservice/userscenario/UserScenarioService;->enterUserScenarioWithExtra(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 758
    .end local v0    # "obj":Lorg/json/JSONObject;
    goto :goto_1

    .line 759
    :cond_0
    const-string v0, "XAPP.SERVICE.XAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchUserScenario,null scenarioName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    :goto_1
    return-void
.end method

.method private launchXpApp(Lcom/xiaopeng/app/xpAppInfo;Landroid/content/Intent;I)V
    .locals 7
    .param p1, "info"    # Lcom/xiaopeng/app/xpAppInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "displayId"    # I

    .line 639
    iget v0, p1, Lcom/xiaopeng/app/xpAppInfo;->mLaunchMode:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_7

    const/16 v1, 0x64

    if-eq v0, v1, :cond_6

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 646
    :pswitch_0
    iget-object v0, p1, Lcom/xiaopeng/app/xpAppInfo;->mXpAppId:Ljava/lang/String;

    .line 647
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p1, Lcom/xiaopeng/app/xpAppInfo;->mXpAppPage:Ljava/lang/String;

    .line 648
    .local v1, "mainAct":Ljava/lang/String;
    move-object v2, p2

    .line 649
    .local v2, "sIntent":Landroid/content/Intent;
    if-nez v2, :cond_0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.MAIN"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 650
    :cond_0
    const-string v3, "android.intent.category.LAUNCHER"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    const/high16 v3, 0x10200000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 652
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 653
    .local v3, "extras":Landroid/os/Bundle;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 654
    new-instance v4, Landroid/content/ComponentName;

    invoke-direct {v4, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    .line 656
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 657
    const-string v4, "XAPP.SERVICE.XAppService"

    const-string v5, "launchNapaApp the packageName is null"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 658
    return-void

    .line 660
    :cond_2
    iget-object v4, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 661
    .local v4, "mPackageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v4, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 662
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 663
    const-string v5, "XAPP.SERVICE.XAppService"

    const-string v6, "launchNapaApp the mainAct is null"

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    .end local v4    # "mPackageManager":Landroid/content/pm/PackageManager;
    :cond_3
    :goto_0
    iget-object v4, p1, Lcom/xiaopeng/app/xpAppInfo;->mPageExtra:Ljava/util/HashMap;

    if-eqz v4, :cond_4

    .line 668
    iget-object v4, p1, Lcom/xiaopeng/app/xpAppInfo;->mPageExtra:Ljava/util/HashMap;

    invoke-direct {p0, v2, v4, v3}, Lcom/xiaopeng/xuiservice/xapp/XAppService;->setPageExtra(Landroid/content/Intent;Ljava/util/HashMap;Landroid/os/Bundle;)V

    .line 670
    :cond_4
    iget-object v4, p1, Lcom/xiaopeng/app/xpAppInfo;->mPageData:Ljava/util/HashMap;

    if-eqz v4, :cond_5

    .line 671
    iget-object v4, p1, Lcom/xiaopeng/app/xpAppInfo;->mPageData:Ljava/util/HashMap;

    invoke-direct {p0, v2, v4}, Lcom/xiaopeng/xuiservice/xapp/XAppService;->setPageData(Landroid/content/Intent;Ljava/util/HashMap;)V

    .line 673
    :cond_5
    invoke-virtual {v2, p3}, Landroid/content/Intent;->setScreenId(I)V

    .line 674
    const/4 v4, 0x2

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addPrivateFlags(I)Landroid/content/Intent;

    .line 675
    const-string v4, "XAPP.SERVICE.XAppService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "launchXpApp next will start 2DActivity with ScreenTaskManagerFactory displayId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ",info.mLaunchMode= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/xiaopeng/app/xpAppInfo;->mLaunchMode:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " ,info.mLaunchParam="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/xiaopeng/app/xpAppInfo;->mLaunchParam:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",info.mXpAppId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/xiaopeng/app/xpAppInfo;->mXpAppId:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",info.mXpAppPage="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/xiaopeng/app/xpAppInfo;->mXpAppPage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",info.mPageExtra="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/xiaopeng/app/xpAppInfo;->mPageExtra:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 679
    const-string v4, "XAPP.SERVICE.XAppService"

    const-string v5, "real start activity begin"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 680
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v5, v2, p3, v3}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->startActivity(Landroid/content/Context;Landroid/content/Intent;ILandroid/os/Bundle;)I

    .line 681
    const-string v4, "XAPP.SERVICE.XAppService"

    const-string v5, "real start activity end"

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "mainAct":Ljava/lang/String;
    .end local v2    # "sIntent":Landroid/content/Intent;
    .end local v3    # "extras":Landroid/os/Bundle;
    goto :goto_2

    .line 642
    :pswitch_1
    iget-object v0, p1, Lcom/xiaopeng/app/xpAppInfo;->mLaunchParam:Ljava/lang/String;

    invoke-direct {p0, v0, p3}, Lcom/xiaopeng/xuiservice/xapp/XAppService;->launchUserScenario(Ljava/lang/String;I)V

    .line 643
    goto :goto_2

    .line 684
    :cond_6
    const-string v0, "XAPP.SERVICE.XAppService"

    const-string v1, "start access app"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-static {}, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->getInstance()Lcom/xiaopeng/xuimanager/access/AccessAppManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->startApp(Lcom/xiaopeng/app/xpAppInfo;)I

    .line 686
    goto :goto_2

    .line 688
    :cond_7
    iget-object v0, p1, Lcom/xiaopeng/app/xpAppInfo;->mXpAppId:Ljava/lang/String;

    .line 689
    .local v0, "pkgName":Ljava/lang/String;
    iget-object v1, p1, Lcom/xiaopeng/app/xpAppInfo;->mXpAppPage:Ljava/lang/String;

    .line 690
    .local v1, "mainAction":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 691
    .local v2, "ssIntent":Landroid/content/Intent;
    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 692
    invoke-virtual {v2, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 694
    :try_start_0
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    move-result-object v3

    .line 695
    .local v3, "ret":Landroid/content/ComponentName;
    const-string v4, "XAPP.SERVICE.XAppService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start service app end ret="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",pkgName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",mainAction="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "next will startService with ssIntent="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 698
    .end local v3    # "ret":Landroid/content/ComponentName;
    goto :goto_1

    .line 696
    :catch_0
    move-exception v3

    .line 697
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "XAPP.SERVICE.XAppService"

    const-string v5, "start service app error"

    invoke-static {v4, v5, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 699
    .end local v0    # "pkgName":Ljava/lang/String;
    .end local v1    # "mainAction":Ljava/lang/String;
    .end local v2    # "ssIntent":Landroid/content/Intent;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    nop

    .line 703
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setPageData(Landroid/content/Intent;Ljava/util/HashMap;)V
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 731
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_3

    .line 732
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 733
    .local v1, "key":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, 0x14d4c

    if-eq v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const-string v3, "Uri"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_1
    if-eqz v2, :cond_2

    .end local v1    # "key":Ljava/lang/String;
    goto :goto_2

    .line 735
    .restart local v1    # "key":Ljava/lang/String;
    :cond_2
    const-string v2, "XAPP.SERVICE.XAppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setPageData Uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 736
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 737
    nop

    .line 741
    .end local v1    # "key":Ljava/lang/String;
    :goto_2
    goto :goto_0

    .line 745
    :cond_3
    return-void
.end method

.method private setPageExtra(Landroid/content/Intent;Ljava/util/HashMap;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p3, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 705
    .local p2, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_5

    .line 706
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    const-string v1, "media"

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    .line 707
    .local v0, "isContainsMedia":Z
    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 708
    .local v2, "key":Ljava/lang/String;
    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x6892b65c

    const/4 v6, 0x1

    if-eq v4, v5, :cond_2

    const v5, 0x62f6fe4

    if-eq v4, v5, :cond_1

    const v5, 0x7a35b80e

    if-eq v4, v5, :cond_0

    goto :goto_1

    :cond_0
    const-string v4, "resizeable"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const-string v4, "media"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v3, 0x2

    goto :goto_1

    :cond_2
    const-string v4, "checkHasOnTop"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    move v3, v6

    :cond_3
    :goto_1
    packed-switch v3, :pswitch_data_0

    .line 722
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 723
    .local v3, "value":Ljava/lang/String;
    const-string v4, "XAPP.SERVICE.XAppService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setPageExtra key = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ",value="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 724
    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/String;
    goto :goto_2

    .line 717
    .restart local v2    # "key":Ljava/lang/String;
    :pswitch_0
    const-string v3, "XAPP.SERVICE.XAppService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPageExtra media = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    const-string v3, "media"

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 719
    const-string v3, "notMoveToScreen"

    invoke-virtual {p3, v3, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 720
    goto :goto_2

    .line 713
    :pswitch_1
    const-string v3, "XAPP.SERVICE.XAppService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setPageExtra key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ",isContainsMedia="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    if-nez v0, :cond_4

    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_2

    .line 710
    :pswitch_2
    invoke-virtual {p2, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 711
    nop

    .line 727
    .end local v2    # "key":Ljava/lang/String;
    :cond_4
    :goto_2
    goto/16 :goto_0

    .line 729
    .end local v0    # "isContainsMedia":Z
    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public activeArome(Ljava/util/Map;)V
    .locals 1
    .param p1, "params"    # Ljava/util/Map;

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    if-eqz v0, :cond_0

    .line 345
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->activeArome(Ljava/util/Map;)V

    .line 346
    :cond_0
    return-void
.end method

.method public attachContext()V
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->attachContext()V

    .line 329
    :cond_0
    return-void
.end method

.method public checkAppPolicy(Ljava/lang/String;Landroid/os/Bundle;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mXAppHal:Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->checkAppPolicy(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    return v0
.end method

.method public checkAppStart(Ljava/lang/String;)I
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mXAppHal:Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->checkAppStartWithPrompt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public checkIdentityValid(Ljava/lang/String;)V
    .locals 1
    .param p1, "userKey"    # Ljava/lang/String;

    .line 395
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->checkIdentityValid(Ljava/lang/String;)V

    .line 397
    :cond_0
    return-void
.end method

.method public checkOrderValid(Ljava/lang/String;)Z
    .locals 1
    .param p1, "orderId"    # Ljava/lang/String;

    .line 407
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->checkOrderValid(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public closeCancelableDialog()V
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mXAppHal:Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->closeCancelableDialog()V

    .line 609
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 0
    .param p1, "writer"    # Ljava/io/PrintWriter;

    .line 233
    return-void
.end method

.method public exitApp(Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .line 363
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->exitApp(Ljava/lang/String;)V

    .line 365
    :cond_0
    return-void
.end method

.method public forceGrantFolderPermission(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .line 561
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppService;->grantFolderPermission(Ljava/lang/String;)V

    .line 562
    return-void
.end method

.method public getAppType(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 598
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mXAppHal:Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->getAppType(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getAppUsedLimitEnable()Z
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mXAppHal:Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->getAppUsedLimitEnable()Z

    move-result v0

    return v0
.end method

.method public getCarGearLevel()I
    .locals 1

    .line 269
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mXAppHal:Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->getCarGearLevel()I

    move-result v0

    return v0
.end method

.method public getCurrentMiniAppStatus(Ljava/lang/String;)I
    .locals 1
    .param p1, "ali_id"    # Ljava/lang/String;

    .line 632
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->getCurrentMiniAppStatus(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 635
    :cond_0
    const/4 v0, 0x2

    return v0
.end method

.method public getInstalledAppList(I)Ljava/util/List;
    .locals 1
    .param p1, "appType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 603
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mXAppHal:Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->getInstalledAppList(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getServiceName()Ljava/lang/String;
    .locals 1

    .line 237
    const-string v0, "XAppService"

    return-object v0
.end method

.method public grantFolderPermission(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .line 580
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 581
    return-void

    .line 583
    :cond_0
    const/4 v0, 0x0

    .line 584
    .local v0, "allowGrant":Z
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/XAppService;->GRANT_FOLDERS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 585
    .local v4, "folder":Ljava/lang/String;
    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 586
    const/4 v0, 0x1

    .line 584
    .end local v4    # "folder":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 589
    :cond_2
    if-eqz v0, :cond_3

    .line 590
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/utils/FileUtils;->grantFolder(Ljava/io/File;)V

    .line 592
    :cond_3
    const-string v1, "XAPP.SERVICE.XAppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "grantFolderPermission path="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " allowGrant="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    return-void
.end method

.method public declared-synchronized init()V
    .locals 1

    monitor-enter p0

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->init()V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mXAppHal:Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mXAppHal:Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->init()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    :cond_1
    monitor-exit p0

    return-void

    .line 209
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/xapp/XAppService;
    throw v0
.end method

.method public initService()V
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->initService()V

    .line 335
    :cond_0
    return-void
.end method

.method public isServiceOnline()Z
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->isServiceOnline()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loginAccount()V
    .locals 1

    .line 350
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    if-eqz v0, :cond_0

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->loginAccount()V

    .line 352
    :cond_0
    return-void
.end method

.method public logoutAccount()V
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->logoutAccount()V

    .line 359
    :cond_0
    return-void
.end method

.method public notifyAppEvent(Ljava/lang/String;ILandroid/os/Bundle;)I
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "event"    # I
    .param p3, "params"    # Landroid/os/Bundle;

    .line 566
    const/4 v0, -0x1

    .line 567
    .local v0, "category":I
    const-string v1, "callingPkg"

    const-string v2, "unknown"

    invoke-virtual {p3, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, "callingPkg":Ljava/lang/String;
    const-string v2, "com.xp.xpad"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 569
    const/4 v0, 0x3

    .line 571
    :cond_0
    const-string v2, "XAPP.SERVICE.XAppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyAppEvent,category="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",event="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",params="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",callingPkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 574
    sget-object v2, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mAppBizHandlerMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 575
    sget-object v2, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mAppBizHandlerMap:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/xapp/AppBizHandler;

    invoke-interface {v2, p1, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/AppBizHandler;->notifyAppEvent(Ljava/lang/String;ILandroid/os/Bundle;)I

    move-result v2

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 574
    :goto_0
    return v2
.end method

.method public onAppConfigUpload(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "config"    # Ljava/lang/String;

    .line 290
    invoke-static {}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->getInstance()Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/mediacenter/MediaCenterHalService;->updateAppConfig(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mXAppHal:Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->onAppConfigUpload(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onAppModeChanged(Ljava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "info"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mXAppHal:Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->onAppModeChanged(Ljava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    .line 285
    return-void
.end method

.method public onError(II)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 297
    return-void
.end method

.method public onMiniProgCallBack(ILcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;)V
    .locals 7
    .param p1, "type"    # I
    .param p2, "response"    # Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;

    .line 613
    if-nez p2, :cond_0

    const-string v0, ""

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;->toString()Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "tagResponse":Ljava/lang/String;
    :goto_0
    const-string v1, "XAPP.SERVICE.XAppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMiniProgCallBack response:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->ixMiniProgEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 616
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->ixMiniProgEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener;

    .line 618
    .local v2, "l":Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener;
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener;->onMiniProgCallBack(ILcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    goto :goto_2

    .line 619
    :catch_0
    move-exception v3

    .line 620
    .local v3, "e":Ljava/lang/Exception;
    const-string v4, "XAPP.SERVICE.XAppService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onMiniProgCallBack Exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    .end local v2    # "l":Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener;
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_2
    goto :goto_1

    .line 625
    :cond_1
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 139
    const-string v0, "XAPP.SERVICE.XAppService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "XAppService mReceiver"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 141
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    const-string v1, "XAPP.SERVICE.XAppService"

    const-string v2, "onReceive ACTION_BOOT_COMPLETED"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/XAppService;->initXApp()V

    goto :goto_0

    .line 144
    :cond_0
    const-string v1, "com.xiaopeng.intent.action.XP_NAPA_APP_LIST_CHANGE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 145
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XAppService$zGnfy6xVyat3VpLwQ0NF397JOeY;

    invoke-direct {v2, p0, p2}, Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XAppService$zGnfy6xVyat3VpLwQ0NF397JOeY;-><init>(Lcom/xiaopeng/xuiservice/xapp/XAppService;Landroid/content/Intent;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 147
    :cond_1
    :goto_0
    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 120
    const-string v0, "XAppService"

    .line 121
    .local v0, "module":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    .local v1, "info":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderEnter(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v2, 0x1

    .line 126
    .local v2, "ret":Z
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/xapp/IXApp$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v2, v3

    .line 131
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    nop

    .line 134
    return v2

    .line 131
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 127
    :catch_0
    move-exception v3

    .line 128
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_1
    const-string v4, "XAPP.SERVICE.XAppService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onTransact e="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",code="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 131
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->getInstance()Lcom/xiaopeng/xuiservice/debug/WatchDog;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->binderLeave(Ljava/lang/String;Ljava/lang/String;)V

    throw v3
.end method

.method public preloadApp(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "loadToMemory"    # Z

    .line 369
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->preloadApp(Ljava/lang/String;Z)V

    .line 371
    :cond_0
    return-void
.end method

.method public registerListener(Lcom/xiaopeng/xuimanager/xapp/IXAppEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/xapp/IXAppEventListener;

    .line 243
    const-string v0, "XAPP.SERVICE.XAppService"

    const-string v1, "registerListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->ixAppEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 247
    return-void
.end method

.method public registerMiniProgListener(Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener;

    .line 302
    const-string v0, "XAPP.SERVICE.XAppService"

    const-string v1, "registerMiniProgListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->ixMiniProgEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->registerListener(Landroid/os/IInterface;)Z

    .line 306
    return-void
.end method

.method public declared-synchronized release()V
    .locals 1

    monitor-enter p0

    .line 220
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->ixAppEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->clear()V

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->ixMiniProgEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->clear()V

    .line 222
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->release()V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mXAppHal:Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    if-eqz v0, :cond_1

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mXAppHal:Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    :cond_1
    monitor-exit p0

    return-void

    .line 219
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/xapp/XAppService;
    throw v0
.end method

.method public requestLoginInfo()V
    .locals 1

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->requestLoginInfo()V

    .line 377
    :cond_0
    return-void
.end method

.method public requestMiniList(Ljava/lang/String;)V
    .locals 1
    .param p1, "alipayVerison"    # Ljava/lang/String;

    .line 381
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    if-eqz v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->requestMiniList(Ljava/lang/String;)V

    .line 384
    :cond_0
    return-void
.end method

.method public setAppUsedLimitEnable(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mXAppHal:Lcom/xiaopeng/xuiservice/xapp/XAppHalService;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/XAppHalService;->setAppUsedLimitEnable(Z)V

    .line 260
    return-void
.end method

.method public startCustomService(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceCode"    # Ljava/lang/String;
    .param p2, "userIdentity"    # Ljava/lang/String;

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    if-eqz v0, :cond_0

    .line 402
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->startCustomService(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    :cond_0
    return-void
.end method

.method public startMiniProgram(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "params"    # Ljava/util/Map;

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    if-eqz v0, :cond_0

    .line 320
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->startMiniProgram(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 321
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProgramStarting:Z

    .line 323
    :cond_0
    return-void
.end method

.method public startXpApp(Ljava/lang/String;Landroid/content/Intent;)I
    .locals 6
    .param p1, "uriParam"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 412
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/utils/PackageUtils;->getPackageName(I)Ljava/lang/String;

    move-result-object v0

    .line 413
    .local v0, "callingApp":Ljava/lang/String;
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->newBuilder()Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->setUid(I)Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory$BundleBuilder;->build()Landroid/os/Bundle;

    move-result-object v1

    .line 414
    .local v1, "mBundle":Landroid/os/Bundle;
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getScreenId(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v2

    .line 415
    .local v2, "screenId":I
    const-string v3, "XAPP.SERVICE.XAppService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " startXpApp with mBundle callingApp="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "screenId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "Binder.getCallingUid()="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    invoke-virtual {p0, p1, p2, v2}, Lcom/xiaopeng/xuiservice/xapp/XAppService;->startXpApp(Ljava/lang/String;Landroid/content/Intent;I)V

    .line 417
    const/4 v3, 0x0

    return v3
.end method

.method public startXpApp(Lcom/xiaopeng/app/xpAppInfo;II)V
    .locals 6
    .param p1, "appInfo"    # Lcom/xiaopeng/app/xpAppInfo;
    .param p2, "startType"    # I
    .param p3, "displayId"    # I

    .line 422
    if-nez p1, :cond_0

    .line 423
    const-string v0, "XAPP.SERVICE.XAppService"

    const-string v1, "start XpApp failed, appInfo is null"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    return-void

    .line 426
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 427
    .local v0, "i":Landroid/content/Intent;
    const/high16 v1, 0x10200000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 428
    if-eqz p1, :cond_2

    .line 430
    :try_start_0
    const-string v1, "XAPP.SERVICE.XAppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XAppService.startXpApp,displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "startType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    .line 433
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    .line 434
    .local v1, "pm":Landroid/content/pm/IPackageManager;
    iget-object v2, p1, Lcom/xiaopeng/app/xpAppInfo;->mXpAppId:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/pm/IPackageManager;->getxpAppInfoBypkgName(Ljava/lang/String;)Lcom/xiaopeng/app/xpAppInfo;

    move-result-object v2

    .line 435
    .local v2, "special":Lcom/xiaopeng/app/xpAppInfo;
    const-string v3, "XAPP.SERVICE.XAppService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "next will launchXpApp appID="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/xiaopeng/app/xpAppInfo;->mXpAppId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " special case"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    invoke-direct {p0, v2, v0, p3}, Lcom/xiaopeng/xuiservice/xapp/XAppService;->launchXpApp(Lcom/xiaopeng/app/xpAppInfo;Landroid/content/Intent;I)V

    .line 437
    return-void

    .line 440
    .end local v1    # "pm":Landroid/content/pm/IPackageManager;
    .end local v2    # "special":Lcom/xiaopeng/app/xpAppInfo;
    :cond_1
    const-string v1, "XAPP.SERVICE.XAppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startXpApp,launch mode is not default:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/xiaopeng/app/xpAppInfo;->mLaunchMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ",displayId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-direct {p0, p1, v0, p3}, Lcom/xiaopeng/xuiservice/xapp/XAppService;->launchXpApp(Lcom/xiaopeng/app/xpAppInfo;Landroid/content/Intent;I)V

    .line 443
    const-string v1, "XAPP.SERVICE.XAppService"

    const-string v2, "startXpApp done"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 444
    :catch_0
    move-exception v1

    .line 445
    .local v1, "e2":Ljava/lang/Exception;
    const-string v2, "XAPP.SERVICE.XAppService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startXpApp,getXpAppPackageList e="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    .end local v1    # "e2":Ljava/lang/Exception;
    :goto_0
    goto :goto_1

    .line 448
    :cond_2
    const-string v1, "XAPP.SERVICE.XAppService"

    const-string v2, "startXpApp failed, appInfo is null"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :goto_1
    return-void
.end method

.method public startXpApp(Ljava/lang/String;Landroid/content/Intent;I)V
    .locals 20
    .param p1, "uriParam"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "displayId"    # I

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 454
    move-object/from16 v0, p2

    .line 455
    .local v0, "i":Landroid/content/Intent;
    if-nez v0, :cond_0

    .line 456
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    move-object v0, v3

    goto :goto_0

    .line 458
    :cond_0
    move-object v3, v0

    .line 458
    .end local v0    # "i":Landroid/content/Intent;
    .local v3, "i":Landroid/content/Intent;
    :goto_0
    const/high16 v0, 0x10200000

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 459
    const-string/jumbo v0, "xiaopeng://napa/show"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 460
    .local v4, "uri":Landroid/net/Uri;
    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 461
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v5, v0

    .line 462
    .local v5, "bundle":Landroid/os/Bundle;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "xiaopeng://napa/show?"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 465
    .local v6, "targetUri":Ljava/lang/String;
    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 466
    .local v7, "uriWhole":Landroid/net/Uri;
    if-eqz v7, :cond_a

    const-string/jumbo v0, "xiaopeng"

    invoke-virtual {v7}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "napa"

    invoke-virtual {v7}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 467
    const-string v0, "appID"

    invoke-virtual {v7, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 468
    .local v8, "appID":Ljava/lang/String;
    const-string v0, "page"

    invoke-virtual {v7, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 470
    .local v9, "appPage":Ljava/lang/String;
    :try_start_0
    const-string v0, "XAPP.SERVICE.XAppService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "XAppService.startXpApp,displayId="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_5

    move/from16 v11, p3

    :try_start_1
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " appPage="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " uriParam="

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    const-string v0, "screenId"

    invoke-virtual {v7, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-object v10, v0

    .line 472
    .local v10, "screenIdStr":Ljava/lang/String;
    if-eqz v10, :cond_1

    .line 473
    :try_start_2
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v11, v0

    .line 474
    .end local p3    # "displayId":I
    .local v11, "displayId":I
    const-string v0, "XAPP.SERVICE.XAppService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "parse screenId="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 530
    .end local v10    # "screenIdStr":Ljava/lang/String;
    .end local v11    # "displayId":I
    .restart local p3    # "displayId":I
    :catch_0
    move-exception v0

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    goto/16 :goto_6

    .line 476
    .end local p3    # "displayId":I
    .restart local v10    # "screenIdStr":Ljava/lang/String;
    .restart local v11    # "displayId":I
    :cond_1
    :goto_1
    :try_start_3
    const-string v0, "startType"

    invoke-virtual {v7, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    move-object v12, v0

    .line 477
    .local v12, "typeStr":Ljava/lang/String;
    const/4 v0, 0x0

    .line 478
    .local v0, "type":I
    if-eqz v12, :cond_2

    .line 479
    :try_start_4
    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move v0, v13

    .line 480
    const-string v13, "XAPP.SERVICE.XAppService"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "parse startType="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    :cond_2
    move v13, v0

    .line 483
    .end local v0    # "type":I
    .local v13, "type":I
    const/4 v0, 0x1

    if-ne v13, v0, :cond_3

    .line 484
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 485
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    invoke-interface {v0, v8}, Landroid/content/pm/IPackageManager;->getxpAppInfoBypkgName(Ljava/lang/String;)Lcom/xiaopeng/app/xpAppInfo;

    move-result-object v14

    .line 486
    .local v14, "special":Lcom/xiaopeng/app/xpAppInfo;
    const-string v15, "XAPP.SERVICE.XAppService"

    move-object/from16 v16, v0

    new-instance v0, Ljava/lang/StringBuilder;

    .line 486
    .end local v0    # "pm":Landroid/content/pm/IPackageManager;
    .local v16, "pm":Landroid/content/pm/IPackageManager;
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next will launchXpApp appID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " special case"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    invoke-direct {v1, v14, v3, v11}, Lcom/xiaopeng/xuiservice/xapp/XAppService;->launchXpApp(Lcom/xiaopeng/app/xpAppInfo;Landroid/content/Intent;I)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 488
    return-void

    .line 492
    .end local v14    # "special":Lcom/xiaopeng/app/xpAppInfo;
    .end local v16    # "pm":Landroid/content/pm/IPackageManager;
    :cond_3
    if-eqz v9, :cond_5

    :try_start_5
    const-string v0, "XPENG.ACCESS@"

    invoke-virtual {v9, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 493
    invoke-static {}, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->getInstance()Lcom/xiaopeng/xuimanager/access/AccessAppManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->getAppList()Ljava/util/List;

    move-result-object v0

    move-object v2, v0

    .line 494
    .local v2, "accessAppList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    if-eqz v2, :cond_5

    .line 495
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/xiaopeng/app/xpAppInfo;

    .line 496
    .local v14, "info":Lcom/xiaopeng/app/xpAppInfo;
    iget-object v15, v14, Lcom/xiaopeng/app/xpAppInfo;->mXpAppId:Ljava/lang/String;

    invoke-virtual {v15, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 497
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-object v15, v0

    .line 499
    .local v15, "obj":Lorg/json/JSONObject;
    :try_start_6
    const-string v0, "screenId"

    invoke-virtual {v15, v0, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    .line 502
    nop

    .line 503
    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    goto :goto_3

    .line 500
    :catch_1
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    move-object/from16 v17, v2

    :try_start_7
    const-string v2, "XAPP.SERVICE.XAppService"
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    .line 501
    .end local v2    # "accessAppList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    .local v17, "accessAppList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    move-object/from16 v18, v4

    :try_start_8
    new-instance v4, Ljava/lang/StringBuilder;

    .line 501
    .end local v4    # "uri":Landroid/net/Uri;
    .local v18, "uri":Landroid/net/Uri;
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    move-object/from16 v19, v7

    :try_start_9
    const-string v7, "json opt e="

    .line 501
    .end local v7    # "uriWhole":Landroid/net/Uri;
    .local v19, "uriWhole":Landroid/net/Uri;
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 503
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_3
    invoke-static {}, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->getInstance()Lcom/xiaopeng/xuimanager/access/AccessAppManager;

    move-result-object v0

    invoke-virtual {v15}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v14, v2}, Lcom/xiaopeng/xuimanager/access/AccessAppManager;->startAppWithParam(Lcom/xiaopeng/app/xpAppInfo;Ljava/lang/String;)I

    move-result v0

    .line 504
    .local v0, "ret":I
    const-string v2, "XAPP.SERVICE.XAppService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startXpApp,start access app ret="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 505
    return-void

    .line 530
    .end local v0    # "ret":I
    .end local v10    # "screenIdStr":Ljava/lang/String;
    .end local v12    # "typeStr":Ljava/lang/String;
    .end local v13    # "type":I
    .end local v14    # "info":Lcom/xiaopeng/app/xpAppInfo;
    .end local v15    # "obj":Lorg/json/JSONObject;
    .end local v17    # "accessAppList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    .end local v19    # "uriWhole":Landroid/net/Uri;
    .restart local v7    # "uriWhole":Landroid/net/Uri;
    :catch_2
    move-exception v0

    move-object/from16 v19, v7

    .line 530
    .end local v7    # "uriWhole":Landroid/net/Uri;
    .restart local v19    # "uriWhole":Landroid/net/Uri;
    goto/16 :goto_6

    .line 507
    .end local v18    # "uri":Landroid/net/Uri;
    .end local v19    # "uriWhole":Landroid/net/Uri;
    .restart local v2    # "accessAppList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v7    # "uriWhole":Landroid/net/Uri;
    .restart local v10    # "screenIdStr":Ljava/lang/String;
    .restart local v12    # "typeStr":Ljava/lang/String;
    .restart local v13    # "type":I
    :cond_4
    move-object/from16 v17, v2

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    .line 507
    .end local v2    # "accessAppList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v7    # "uriWhole":Landroid/net/Uri;
    .restart local v17    # "accessAppList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    .restart local v18    # "uri":Landroid/net/Uri;
    .restart local v19    # "uriWhole":Landroid/net/Uri;
    goto :goto_2

    .line 511
    .end local v17    # "accessAppList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    .end local v18    # "uri":Landroid/net/Uri;
    .end local v19    # "uriWhole":Landroid/net/Uri;
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v7    # "uriWhole":Landroid/net/Uri;
    :cond_5
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    .line 511
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v7    # "uriWhole":Landroid/net/Uri;
    .restart local v18    # "uri":Landroid/net/Uri;
    .restart local v19    # "uriWhole":Landroid/net/Uri;
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/xapp/XAppService;->applistMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 512
    .local v0, "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    if-nez v0, :cond_6

    .line 514
    invoke-static {v11}, Lcom/xiaopeng/xuimanager/xapp/XAppManager;->getXpAppPackageList(I)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .line 515
    const-string v2, "XAPP.SERVICE.XAppService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getXpAppPackageList,display id="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/xapp/XAppService;->applistMap:Ljava/util/Map;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 518
    :cond_6
    if-eqz v0, :cond_8

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    .line 519
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/app/xpAppInfo;

    .line 520
    .local v4, "info":Lcom/xiaopeng/app/xpAppInfo;
    iget-object v7, v4, Lcom/xiaopeng/app/xpAppInfo;->mXpAppId:Ljava/lang/String;

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, v4, Lcom/xiaopeng/app/xpAppInfo;->mLaunchMode:I

    if-eqz v7, :cond_7

    .line 521
    const-string v2, "XAPP.SERVICE.XAppService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "startXpApp,launch mode is not default:"

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v4, Lcom/xiaopeng/app/xpAppInfo;->mLaunchMode:I

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ",displayId="

    invoke-virtual {v7, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    invoke-direct {v1, v4, v3, v11}, Lcom/xiaopeng/xuiservice/xapp/XAppService;->launchXpApp(Lcom/xiaopeng/app/xpAppInfo;Landroid/content/Intent;I)V

    .line 524
    return-void

    .line 526
    .end local v4    # "info":Lcom/xiaopeng/app/xpAppInfo;
    :cond_7
    goto :goto_4

    .line 528
    :cond_8
    const-string v2, "XAPP.SERVICE.XAppService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startXpApp,infoList is null or empty,displayId="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 532
    .end local v0    # "infoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/app/xpAppInfo;>;"
    .end local v10    # "screenIdStr":Ljava/lang/String;
    .end local v12    # "typeStr":Ljava/lang/String;
    .end local v13    # "type":I
    :cond_9
    goto :goto_7

    .line 530
    :catch_3
    move-exception v0

    goto :goto_6

    .line 530
    .end local v11    # "displayId":I
    .end local v18    # "uri":Landroid/net/Uri;
    .end local v19    # "uriWhole":Landroid/net/Uri;
    .local v4, "uri":Landroid/net/Uri;
    .restart local v7    # "uriWhole":Landroid/net/Uri;
    .restart local p3    # "displayId":I
    :catch_4
    move-exception v0

    goto :goto_5

    :catch_5
    move-exception v0

    move/from16 v11, p3

    .line 530
    .end local p3    # "displayId":I
    .restart local v11    # "displayId":I
    :goto_5
    move-object/from16 v18, v4

    move-object/from16 v19, v7

    .line 531
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v7    # "uriWhole":Landroid/net/Uri;
    .local v0, "e2":Ljava/lang/Exception;
    .restart local v18    # "uri":Landroid/net/Uri;
    .restart local v19    # "uriWhole":Landroid/net/Uri;
    :goto_6
    const-string v2, "XAPP.SERVICE.XAppService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "startXpApp,getXpAppPackageList e="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V

    .end local v0    # "e2":Ljava/lang/Exception;
    .end local v8    # "appID":Ljava/lang/String;
    .end local v9    # "appPage":Ljava/lang/String;
    goto :goto_7

    .line 536
    .end local v11    # "displayId":I
    .end local v18    # "uri":Landroid/net/Uri;
    .end local v19    # "uriWhole":Landroid/net/Uri;
    .restart local v4    # "uri":Landroid/net/Uri;
    .restart local v7    # "uriWhole":Landroid/net/Uri;
    .restart local p3    # "displayId":I
    :cond_a
    move/from16 v11, p3

    move-object/from16 v18, v4

    move-object/from16 v19, v7

    .line 536
    .end local v4    # "uri":Landroid/net/Uri;
    .end local v7    # "uriWhole":Landroid/net/Uri;
    .end local p3    # "displayId":I
    .restart local v11    # "displayId":I
    .restart local v18    # "uri":Landroid/net/Uri;
    .restart local v19    # "uriWhole":Landroid/net/Uri;
    :goto_7
    const-string v0, "uri"

    invoke-virtual {v5, v0, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 537
    const-string v0, "screen_id"

    invoke-virtual {v5, v0, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 538
    const-string v0, "action"

    const-string v2, "android.intent.action.VIEW"

    invoke-virtual {v5, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    invoke-virtual {v3, v5}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 540
    const-string v0, "XAPP.SERVICE.XAppService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startXpApp,targetUri="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",intent="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ",displayId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    :try_start_a
    iget-object v0, v1, Lcom/xiaopeng/xuiservice/xapp/XAppService;->ixAppEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->size()I

    move-result v0

    if-eqz v0, :cond_d

    .line 544
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 545
    .local v0, "extras":Landroid/os/Bundle;
    const-string v2, "intent"

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 546
    iget-object v2, v1, Lcom/xiaopeng/xuiservice/xapp/XAppService;->ixAppEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->listeners()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xuimanager/xapp/IXAppEventListener;

    .line 547
    .local v4, "listener":Lcom/xiaopeng/xuimanager/xapp/IXAppEventListener;
    if-eqz v4, :cond_b

    .line 548
    invoke-interface {v4, v0}, Lcom/xiaopeng/xuimanager/xapp/IXAppEventListener;->onStartAppEvent(Landroid/os/Bundle;)V

    .line 550
    .end local v4    # "listener":Lcom/xiaopeng/xuimanager/xapp/IXAppEventListener;
    :cond_b
    goto :goto_8

    .line 551
    .end local v0    # "extras":Landroid/os/Bundle;
    :cond_c
    goto :goto_9

    .line 552
    :cond_d
    const-string v0, "XAPP.SERVICE.XAppService"

    const-string v2, "startXpApp,mListenersMap null or empty"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    .line 555
    :goto_9
    goto :goto_a

    .line 554
    :catch_6
    move-exception v0

    .line 556
    :goto_a
    const-string v0, "XAPP.SERVICE.XAppService"

    const-string v2, "startXpApp done"

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    return-void
.end method

.method public unregisterListener(Lcom/xiaopeng/xuimanager/xapp/IXAppEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/xapp/IXAppEventListener;

    .line 252
    const-string v0, "XAPP.SERVICE.XAppService"

    const-string v1, "unregisterListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->ixAppEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 255
    return-void
.end method

.method public unregisterMiniProgListener(Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener;)V
    .locals 2
    .param p1, "listener"    # Lcom/xiaopeng/xuimanager/xapp/IXMiniProgEventListener;

    .line 311
    const-string v0, "XAPP.SERVICE.XAppService"

    const-string v1, "unregisterMiniProgListener"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->ixMiniProgEventListenerHelper:Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/utils/ServiceListenerRegisterAndNotify;->unregisterListener(Landroid/os/IInterface;)Z

    .line 314
    return-void
.end method

.method public uploadAlipayLog()V
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    if-eqz v0, :cond_0

    .line 389
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/XAppService;->mMiniProg:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->uploadAlipayLog()V

    .line 391
    :cond_0
    return-void
.end method
