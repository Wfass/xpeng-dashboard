.class public Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;
.super Ljava/lang/Object;
.source "ThemeEventManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeEventManager"

.field private static mInstance:Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;


# instance fields
.field private mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/xiaopeng/xuiservice/base/event/ThemeEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 14
    return-void
.end method

.method public static get()Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;
    .locals 2

    .line 17
    sget-object v0, Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;->mInstance:Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;

    if-nez v0, :cond_1

    .line 18
    const-class v0, Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;

    monitor-enter v0

    .line 19
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;->mInstance:Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;

    if-nez v1, :cond_0

    .line 20
    new-instance v1, Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;->mInstance:Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;

    .line 22
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;->mInstance:Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;

    return-object v0
.end method


# virtual methods
.method public notifyThemeChanged()V
    .locals 2

    .line 40
    const-string v0, "ThemeEventManager"

    const-string v1, "notifyThemeChanged--"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/base/event/ThemeEventListener;

    .line 42
    .local v1, "listener":Lcom/xiaopeng/xuiservice/base/event/ThemeEventListener;
    invoke-interface {v1}, Lcom/xiaopeng/xuiservice/base/event/ThemeEventListener;->onThemeChanged()V

    .line 43
    .end local v1    # "listener":Lcom/xiaopeng/xuiservice/base/event/ThemeEventListener;
    goto :goto_0

    .line 44
    :cond_0
    return-void
.end method

.method public register(Lcom/xiaopeng/xuiservice/base/event/ThemeEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/base/event/ThemeEventListener;

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    :cond_0
    return-void
.end method

.method public unregister(Lcom/xiaopeng/xuiservice/base/event/ThemeEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/base/event/ThemeEventListener;

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/base/event/ThemeEventManager;->mEventListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 37
    :cond_0
    return-void
.end method
