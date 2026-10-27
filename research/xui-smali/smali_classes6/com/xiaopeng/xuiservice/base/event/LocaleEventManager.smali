.class public Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;
.super Ljava/lang/Object;
.source "LocaleEventManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "LocaleEventManager"

.field private static volatile mInstance:Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;


# instance fields
.field mLocalChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mLocaleEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager$1;-><init>(Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->mLocalChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->mLocaleEventListeners:Ljava/util/List;

    .line 20
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->notifyListener()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;
    .locals 2

    .line 27
    sget-object v0, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->mInstance:Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;

    if-nez v0, :cond_1

    .line 28
    const-class v0, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;

    monitor-enter v0

    .line 29
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->mInstance:Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;

    if-nez v1, :cond_0

    .line 30
    new-instance v1, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->mInstance:Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;

    .line 32
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 34
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->mInstance:Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;

    return-object v0
.end method

.method public static synthetic lambda$registerLocalBroadcast$0(Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->mLocalChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p1, p2}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 54
    return-void
.end method

.method private notifyListener()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->mLocaleEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;

    .line 59
    .local v1, "listener":Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;
    invoke-interface {v1}, Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;->onLocalChanged()V

    .line 60
    .end local v1    # "listener":Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;
    goto :goto_0

    .line 61
    :cond_0
    return-void
.end method

.method private registerLocalBroadcast()V
    .locals 3

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 51
    .local v0, "intentFilter":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->getInstance()Lcom/xiaopeng/xuiservice/utils/BroadcastManager;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/base/event/-$$Lambda$LocaleEventManager$Pmx08rmx4yeuhdUm9UTJyWi7ZIA;

    invoke-direct {v2, p0}, Lcom/xiaopeng/xuiservice/base/event/-$$Lambda$LocaleEventManager$Pmx08rmx4yeuhdUm9UTJyWi7ZIA;-><init>(Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;)V

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/xuiservice/utils/BroadcastManager;->registerListenerDynamically(Lcom/xiaopeng/xuiservice/utils/BroadcastManager$BroadcastListener;Ljava/util/List;)V

    .line 55
    return-void
.end method


# virtual methods
.method public notifyLocaleChanged()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->notifyListener()V

    .line 24
    return-void
.end method

.method public registerListener(Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->mLocaleEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->mLocaleEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 41
    :cond_0
    return-void
.end method

.method public unregisterListener(Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->mLocaleEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->mLocaleEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 47
    :cond_0
    return-void
.end method
