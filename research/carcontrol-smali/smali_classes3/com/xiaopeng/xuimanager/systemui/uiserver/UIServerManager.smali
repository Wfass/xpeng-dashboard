.class public Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;
.super Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;
.source "UIServerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager$Holder;,
        Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager$UIEventListenerServer;
    }
.end annotation


# instance fields
.field private mListenerServer:Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener;

.field private mPkg:Ljava/lang/String;

.field private mUIEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/xiaopeng/xuimanager/systemui/uiserver/UIEventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager$1;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;Ljava/lang/String;)V
    .locals 0

    .line 11
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->mUIEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static get()Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;
    .locals 1

    .line 125
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager$Holder;->access$400()Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    .line 22
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    const-string p1, "init"

    .line 23
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected logTag()Ljava/lang/String;
    .locals 1

    const-string v0, "UIServerManager"

    return-object v0
.end method

.method public onServerConnected(Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;)V
    .locals 2

    .line 93
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;->onServerConnected(Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;)V

    const-string v0, "onServerConnected"

    .line 94
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->mListenerServer:Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener;

    if-eqz v0, :cond_0

    .line 97
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->mPkg:Ljava/lang/String;

    invoke-interface {p1, v1, v0}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->registerUIEventListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 99
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/systemui/uiserver/UIEventListener;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "registerListener listener:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 47
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->log(Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->mUIEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->mUIEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->mUIEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    .line 52
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->mUIEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_3

    .line 54
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->mListenerServer:Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener;

    if-nez p1, :cond_1

    .line 55
    new-instance p1, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager$UIEventListenerServer;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager$UIEventListenerServer;-><init>(Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager$1;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->mListenerServer:Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener;

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_2

    .line 60
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->mPkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->mListenerServer:Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener;

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->registerUIEventListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 62
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_2
    const-string p1, "registerListener service is null "

    .line 65
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 68
    :cond_3
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public sendUIEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "sendUIEvent module:%s method:%s"

    .line 34
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 37
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->sendUIEvent(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 39
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "sendUIEvent service is null "

    .line 42
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public declared-synchronized unRegisterListener(Lcom/xiaopeng/xuimanager/systemui/uiserver/UIEventListener;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "unRegisterListener listener:%s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 71
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->log(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->mUIEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 73
    monitor-exit p0

    return-void

    .line 75
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 76
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->mUIEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->mListenerServer:Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener;

    if-eqz p1, :cond_2

    .line 77
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    .line 80
    :try_start_2
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->mPkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->mListenerServer:Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener;

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->unRegisterUIEventListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener;)V

    const/4 p1, 0x0

    .line 81
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->mListenerServer:Lcom/xiaopeng/xuimanager/systemui/uiserver/IUIEventListener;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 83
    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p1, "unRegisterListener service is null "

    .line 86
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/uiserver/UIServerManager;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 89
    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
