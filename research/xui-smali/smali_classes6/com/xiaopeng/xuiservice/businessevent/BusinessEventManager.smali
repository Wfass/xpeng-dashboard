.class public Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;
.super Ljava/lang/Object;
.source "BusinessEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager$BusinessEventManagerHolder;
    }
.end annotation


# static fields
.field private static final ACTION_EVENT_FILTER:Ljava/lang/String; = "com.xiaopeng.xui.businessevent"

.field private static final TAG:Ljava/lang/String; = "BusinessEventManager"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->mContext:Landroid/content/Context;

    .line 27
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager$1;

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;
    .locals 1

    .line 30
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager$BusinessEventManagerHolder;->access$100()Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$notifyAppAsync$0(Landroid/content/Intent;)V
    .locals 3
    .param p0, "intent"    # Landroid/content/Intent;

    .line 69
    const-string v0, "BusinessEventManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notify app,intent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->sendBroadcast(Landroid/content/Intent;)Z

    .line 71
    return-void
.end method

.method private notifyAppAsync(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .line 68
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$BusinessEventManager$bbO1mEuLl0mrPT0-PwbL4M6SNfM;

    invoke-direct {v1, p1}, Lcom/xiaopeng/xuiservice/businessevent/-$$Lambda$BusinessEventManager$bbO1mEuLl0mrPT0-PwbL4M6SNfM;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->post(Ljava/lang/Runnable;)Z

    .line 72
    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    .line 35
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;->getInstance()Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/businessevent/AppStoreEventManager;->init()V

    .line 38
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIConfig;->isXuiProcessHelpLaunch()Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    const-string v0, "BusinessEventManager"

    const-string v1, "init, feature not configured"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    return-void

    .line 42
    :cond_0
    const-string v0, "BusinessEventManager"

    const-string v1, "init, feature configured"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;->getInstance()Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/businessevent/CameraEventManager;->init()V

    .line 49
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;->getInstance()Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/businessevent/FactoryEventManager;->init()V

    .line 50
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;->getInstance()Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/businessevent/NetworkEventManager;->init()V

    .line 51
    invoke-static {}, Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;->getInstance()Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/businessevent/OtaEventManager;->init()V

    .line 52
    return-void
.end method

.method public notifyApp(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p1, "pkgName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "eventMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 56
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 57
    const-string v1, "com.xiaopeng.xui.businessevent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 58
    const/high16 v1, 0x1400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 59
    if-eqz p2, :cond_0

    .line 60
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 61
    .local v2, "key":Ljava/lang/String;
    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 62
    .end local v2    # "key":Ljava/lang/String;
    goto :goto_0

    .line 64
    :cond_0
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/businessevent/BusinessEventManager;->notifyAppAsync(Landroid/content/Intent;)V

    .line 65
    return-void
.end method
