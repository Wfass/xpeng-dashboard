.class public Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;
.super Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;
.source "SystemBarManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$Holder;,
        Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$BarColorListenerServer;,
        Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$BarListener;
    }
.end annotation


# static fields
.field public static final ID_PERSONAL:Ljava/lang/String; = "personal"


# instance fields
.field private mBarColorListener:Lcom/xiaopeng/xuimanager/systemui/systembar/BarColorListener;

.field private mBarListener:Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener;

.field private mIBarColorListener:Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener;

.field private mPkg:Ljava/lang/String;

.field private mSystemBarListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 262
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$1;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mSystemBarListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;Ljava/lang/String;)V
    .locals 0

    .line 16
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;)Lcom/xiaopeng/xuimanager/systemui/systembar/BarColorListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mBarColorListener:Lcom/xiaopeng/xuimanager/systemui/systembar/BarColorListener;

    return-object p0
.end method

.method public static get()Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;
    .locals 1

    .line 259
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$Holder;->access$600()Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;

    move-result-object v0

    return-object v0
.end method

.method private registerBarColorListenerServer()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mIBarColorListener:Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$BarColorListenerServer;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$BarColorListenerServer;-><init>(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mIBarColorListener:Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener;

    .line 104
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->registerBarColorListenerServerInner()V

    return-void
.end method

.method private registerBarColorListenerServerInner()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    if-eqz v0, :cond_0

    .line 111
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mIBarColorListener:Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->registerBarColorListener(Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 113
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "registerBarColorListener service is null"

    .line 116
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private unRegisterBarColorListenerServer()V
    .locals 2

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mIBarColorListener:Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener;

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    if-eqz v0, :cond_0

    .line 125
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mIBarColorListener:Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->unRegisterBarColorListener(Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 127
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v0, "unRegisterBarColorListenerServer service is null"

    .line 130
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->log(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public cancelSystemBar(Ljava/lang/String;)Z
    .locals 5

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const-string v4, "cancelSystemBar service:%s id:%s"

    .line 153
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 156
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mPkg:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->cancelSystemBar(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v3, :cond_0

    move v2, v3

    :cond_0
    return v2

    :catch_0
    move-exception p1

    .line 159
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p1, "cancelSystemBar service is null "

    .line 162
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->log(Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method public init(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mPkg:Ljava/lang/String;

    const-string p1, "init"

    .line 32
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method public isSystemBarDark(I)Z
    .locals 1

    .line 55
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    if-eqz v0, :cond_0

    .line 58
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->isSystemBarDark(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 60
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "isSystemBarDark service is null"

    .line 63
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->log(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected logTag()Ljava/lang/String;
    .locals 1

    const-string v0, "SystemBar"

    return-object v0
.end method

.method public onServerConnected(Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;)V
    .locals 1

    const-string v0, "onServerConnected-"

    .line 235
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->log(Ljava/lang/String;)V

    .line 236
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;->onServerConnected(Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;)V

    .line 237
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mBarColorListener:Lcom/xiaopeng/xuimanager/systemui/systembar/BarColorListener;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mIBarColorListener:Lcom/xiaopeng/xuimanager/systemui/systembar/IBarColorListener;

    if-eqz p1, :cond_0

    .line 238
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->registerBarColorListenerServerInner()V

    :cond_0
    return-void
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarListener;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "registerListener listener:%s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 168
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->log(Ljava/lang/String;)V

    .line 169
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mSystemBarListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-nez v0, :cond_0

    .line 170
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mSystemBarListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mSystemBarListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    .line 173
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mSystemBarListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    .line 175
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mBarListener:Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener;

    if-nez p1, :cond_1

    .line 176
    new-instance p1, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$BarListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$BarListener;-><init>(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager$1;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mBarListener:Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener;

    .line 178
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_3

    .line 181
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mPkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mBarListener:Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener;

    invoke-interface {p1, v0, v2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->registerSystemBarListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener;)I

    move-result p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v3

    .line 182
    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception p1

    .line 184
    :try_start_2
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_3
    const-string p1, "registerListener service is null "

    .line 187
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 192
    :goto_1
    monitor-exit p0

    return v3

    .line 190
    :cond_4
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public requestSystemBarColor(ILandroid/os/Bundle;)V
    .locals 2

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestSystemBarColor screenId:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->log(Ljava/lang/String;)V

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    if-eqz v0, :cond_0

    .line 91
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->requestSystemBarColor(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "requestSystemBarColor service is null"

    .line 96
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setBarColorListener(Lcom/xiaopeng/xuimanager/systemui/systembar/BarColorListener;)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mBarColorListener:Lcom/xiaopeng/xuimanager/systemui/systembar/BarColorListener;

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 74
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->registerBarColorListenerServer()V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eqz v0, :cond_1

    .line 76
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->unRegisterBarColorListenerServer()V

    .line 78
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mBarColorListener:Lcom/xiaopeng/xuimanager/systemui/systembar/BarColorListener;

    return-void
.end method

.method public setStatusBarColor(IZ)V
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setStatusBarColor screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " &darkIcon:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 40
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->setStatusBarColor(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "setStatusBarColor service is null "

    .line 45
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public showSystemBar(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;)Z
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    const/4 v3, 0x1

    aput-object p1, v1, v3

    const/4 v4, 0x2

    aput-object p2, v1, v4

    const-string v4, "showSystemBar service:%s id:%s item:%s"

    .line 137
    invoke-static {v4, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 140
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mPkg:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->showSystemBar(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarItem;)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v3, :cond_0

    move v2, v3

    :cond_0
    return v2

    :catch_0
    move-exception p1

    .line 143
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p1, "showSystemBar service is null "

    .line 146
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->log(Ljava/lang/String;)V

    :goto_0
    return v2
.end method

.method public declared-synchronized unRegisterListener(Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarListener;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "unRegisterListener listener:%s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 196
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->log(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mSystemBarListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 198
    monitor-exit p0

    return v1

    .line 200
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 201
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mSystemBarListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mBarListener:Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener;

    if-eqz p1, :cond_3

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 205
    :try_start_2
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mPkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mBarListener:Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener;

    invoke-interface {p1, v0, v2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->unRegisterSystemBarListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener;)I

    move-result p1

    const/4 v0, 0x0

    .line 206
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->mBarListener:Lcom/xiaopeng/xuimanager/systemui/systembar/ISystemBarListener;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 207
    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception p1

    .line 209
    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string p1, "unRegisterListener service is null "

    .line 212
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/systembar/SystemBarManager;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 217
    :goto_1
    monitor-exit p0

    return v3

    .line 215
    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
