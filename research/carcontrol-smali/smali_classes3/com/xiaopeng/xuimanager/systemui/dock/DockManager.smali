.class public Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;
.super Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;
.source "DockManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$Holder;,
        Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;
    }
.end annotation


# static fields
.field private static final SYS_PROP_DRAG_DROP_ATTACHED_POSITION:Ljava/lang/String; = "sys.dock.drop.attached.position"

.field private static final TAG:Ljava/lang/String; = "DockManager"


# instance fields
.field private disconnect:Z

.field private mDockEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mDockListener:Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;

.field private mPkg:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 354
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;-><init>()V

    .line 21
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mDockEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->disconnect:Z

    .line 355
    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    if-nez v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->disconnect:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$1;)V
    .locals 0

    .line 19
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mDockEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method public static get()Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;
    .locals 1

    .line 351
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$Holder;->access$300()Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clearDragDropAttachedPosition()V
    .locals 2

    const-string v0, "DockManager"

    const-string v1, "clearDragDropAttachedPosition"

    .line 70
    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sys.dock.drop.attached.position"

    const-string v1, ""

    .line 71
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getDockItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 111
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->getDockItems(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getDockItems(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;",
            ">;"
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getDockItems screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 119
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->getDockItems(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 121
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "getDockItems service is null "

    .line 124
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public getShortcutAndComponents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 130
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->getShortcutAndComponents(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getShortcutAndComponents(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    .line 135
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getShortcutAndComponents screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 138
    :try_start_0
    invoke-interface {v0, p1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->getShortcutAndComponents(I)Ljava/util/List;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 140
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "getShortcutAndComponents service is null "

    .line 143
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public init(Landroid/content/Context;)V
    .locals 2

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 29
    invoke-static {}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->get()Lcom/xiaopeng/screen/ScreenTaskManagerFactory;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/screen/ScreenTaskManagerFactory;->getPackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mPkg:Ljava/lang/String;

    .line 30
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 31
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mPkg:Ljava/lang/String;

    .line 33
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "init pkgName:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mPkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected logTag()Ljava/lang/String;
    .locals 1

    const-string v0, "DockManager"

    return-object v0
.end method

.method public notifyServerEdit(IZ)V
    .locals 3

    .line 79
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    .line 80
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyServerEdit screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " &edit:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 83
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->notifyServerEdit(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 85
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "notifyServerEdit service is null "

    .line 88
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public notifyServerEdit(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 75
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->notifyServerEdit(IZ)V

    return-void
.end method

.method public notifyServerItemAdd(ILcom/xiaopeng/xuimanager/systemui/dock/DockItem;)V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    .line 98
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyServerItemAdd screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " &dockItem:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 101
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->notifyServerItemAdd(ILcom/xiaopeng/xuimanager/systemui/dock/DockItem;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 103
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "notifyServerItemAdd service is null "

    .line 106
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public notifyServerItemAdd(Lcom/xiaopeng/xuimanager/systemui/dock/DockItem;)V
    .locals 1

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->notifyServerItemAdd(ILcom/xiaopeng/xuimanager/systemui/dock/DockItem;)V

    return-void
.end method

.method public onServerConnected(Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;->onServerConnected(Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;)V

    .line 39
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->disconnect:Z

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mDockEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 43
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mPkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mDockListener:Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->registerDockListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_0
    const/4 p1, 0x0

    .line 48
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->disconnect:Z

    :cond_1
    return-void
.end method

.method public onServerDisconnected()V
    .locals 1

    .line 54
    invoke-super {p0}, Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;->onServerDisconnected()V

    const/4 v0, 0x1

    .line 55
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->disconnect:Z

    return-void
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/systemui/dock/DockEventListener;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string p1, "registerListener listener:%s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "@deprecated"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 154
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "registerListener listener:%s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 159
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mPkg:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "dockManager must init first"

    .line 161
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    monitor-exit p0

    return v3

    .line 164
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mDockEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    if-nez v0, :cond_1

    .line 165
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mDockEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 167
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mDockEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result v0

    .line 168
    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mDockEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_4

    .line 170
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mDockListener:Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;

    if-nez p1, :cond_2

    .line 171
    new-instance p1, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$DockListener;-><init>(Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;Lcom/xiaopeng/xuimanager/systemui/dock/DockManager$1;)V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mDockListener:Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;

    .line 173
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_3

    .line 176
    :try_start_2
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mPkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mDockListener:Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;

    invoke-interface {p1, v0, v1}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->registerDockListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 178
    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_3
    const-string p1, "registerListener service is null "

    .line 181
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 186
    :goto_0
    monitor-exit p0

    return v3

    .line 184
    :cond_4
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public resetDock(ILandroid/os/Bundle;)V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    const-string v1, "resetDock"

    .line 331
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 334
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->resetDock(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 336
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "resetDock service is null "

    .line 339
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDockEditDisable(IZLandroid/os/Bundle;)V
    .locals 3

    .line 311
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    .line 312
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDockEditDisable screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " &disable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 315
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->setDockEditDisable(IZLandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 317
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p1, "setDockEditDisable service is null "

    .line 320
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public setDragDropAttachedPosition(II)V
    .locals 2

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDragDropAttachedPosition x:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " &y:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DockManager"

    invoke-static {v1, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string/jumbo v0, "|"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sys.dock.drop.attached.position"

    .line 66
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized unRegisterListener(Lcom/xiaopeng/xuimanager/systemui/dock/DockEventListener;)Z
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string p1, "unRegisterListener listener:%s"

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "deprecated listener"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 195
    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    monitor-exit p0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized unRegisterListener(Lcom/xiaopeng/xuimanager/systemui/dock/DockScreenEventListener;)Z
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "unRegisterListener listener:%s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 200
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mDockListener:Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 202
    monitor-exit p0

    return v1

    .line 204
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mDockEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 205
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mDockEventListeners:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mDockListener:Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;

    if-eqz p1, :cond_3

    .line 206
    iget-object p1, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_2

    .line 209
    :try_start_2
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mPkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mDockListener:Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;

    invoke-interface {p1, v0, v2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->unRegisterDockListener(Ljava/lang/String;Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;)I

    move-result p1

    const/4 v0, 0x0

    .line 210
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mDockListener:Lcom/xiaopeng/xuimanager/systemui/dock/IDockEventListener;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v3

    .line 211
    :goto_0
    monitor-exit p0

    return v1

    :catch_0
    move-exception p1

    .line 213
    :try_start_3
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    :cond_2
    const-string p1, "unRegisterListener service is null "

    .line 216
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 221
    :goto_1
    monitor-exit p0

    return v3

    .line 219
    :cond_3
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public updateDockOutsideInvalidRect(ILjava/lang/String;Landroid/graphics/Rect;)V
    .locals 3

    .line 287
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    if-nez p3, :cond_0

    goto :goto_1

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDockOutsideInvalidRect screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " &key:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " &areaInScreen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 295
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->updateDockOutsideInvalidRect(ILjava/lang/String;Landroid/graphics/Rect;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 297
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string p1, "updateDockOutsideInvalidRect service is null "

    .line 300
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_2
    :goto_1
    const-string p1, "updateDockOutsideInvalidRect key and areaInScreen must not be null"

    .line 288
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/systemui/dock/DockManager;->log(Ljava/lang/String;)V

    return-void
.end method
