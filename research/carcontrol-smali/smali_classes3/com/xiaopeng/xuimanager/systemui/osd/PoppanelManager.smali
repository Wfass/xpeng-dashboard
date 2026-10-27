.class public Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;
.super Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;
.source "PoppanelManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager$Holder;
    }
.end annotation


# instance fields
.field private mPopPanelConnectListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConnectListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 124
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;-><init>()V

    .line 16
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->mPopPanelConnectListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager$1;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;
    .locals 1

    .line 129
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager$Holder;->access$100()Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getPoppanelConfig()Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    if-eqz v0, :cond_0

    .line 89
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->getPopPanelConfig()Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConfig;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPoppanelContainer()Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    if-eqz v0, :cond_0

    .line 101
    :try_start_0
    invoke-interface {v0}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->getPopPanelContainer()Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelContainer;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 103
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isPoppanelShowing(Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 73
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    const-string p1, "isPopPanelShowing packageName:%s screenId:%d"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->log(Ljava/lang/String;)V

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    if-eqz p1, :cond_0

    .line 77
    :try_start_0
    invoke-interface {p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->isPopPanelShowing(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 79
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return v1
.end method

.method protected logTag()Ljava/lang/String;
    .locals 1

    const-string v0, "Poppanel"

    return-object v0
.end method

.method public notifyHide(Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener;II)Z
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 61
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->hidePopPanel(Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener;II)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move v1, p2

    :cond_0
    return v1

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p1, "notifyHide service is null "

    .line 67
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->log(Ljava/lang/String;)V

    :goto_0
    return v1
.end method

.method public onServerConnected(Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;)V
    .locals 3

    .line 111
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;->onServerConnected(Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;)V

    .line 112
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->mPopPanelConnectListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConnectListener;

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 113
    invoke-interface {v0, v1, v2}, Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConnectListener;->onSysUIEvent(ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public declared-synchronized registerSysUIConnectListener(Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConnectListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->mPopPanelConnectListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 26
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method

.method public requestShow(Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener;III)Z
    .locals 4

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 38
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestShow poppanelType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " position:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " screenId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->log(Ljava/lang/String;)V

    .line 39
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->showPopPanel(Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener;III)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move v1, p2

    :cond_0
    return v1

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p2, "requestShow service is null "

    .line 45
    invoke-virtual {p0, p2}, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->log(Ljava/lang/String;)V

    if-eqz p1, :cond_2

    .line 48
    :try_start_1
    invoke-interface {p1}, Lcom/xiaopeng/xuimanager/systemui/osd/IPopPanelListener;->onShowPopPanel()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 51
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_2
    :goto_0
    return v1
.end method

.method public declared-synchronized unregisterSysUIConnectListener(Lcom/xiaopeng/xuimanager/systemui/osd/PopPanelConnectListener;)V
    .locals 1

    monitor-enter p0

    if-eqz p1, :cond_0

    .line 30
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/osd/PoppanelManager;->mPopPanelConnectListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 32
    :cond_0
    :goto_0
    monitor-exit p0

    return-void
.end method
