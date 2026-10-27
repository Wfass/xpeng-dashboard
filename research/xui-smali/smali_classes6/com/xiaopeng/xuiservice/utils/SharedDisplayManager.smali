.class public Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;
.super Ljava/lang/Object;
.source "SharedDisplayManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;,
        Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$SharedDisplayListenerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SharedDisplayManager"

.field private static mInstance:Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;


# instance fields
.field private mEventListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;",
            ">;"
        }
    .end annotation
.end field

.field private mSharedDisplayListenerImpl:Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$SharedDisplayListenerImpl;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->mEventListeners:Ljava/util/List;

    .line 25
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->mWindowManager:Landroid/view/WindowManager;

    .line 26
    new-instance v0, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$SharedDisplayListenerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$SharedDisplayListenerImpl;-><init>(Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$1;)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->mSharedDisplayListenerImpl:Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$SharedDisplayListenerImpl;

    .line 27
    return-void
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->mEventListeners:Ljava/util/List;

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;
    .locals 2

    .line 30
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->mInstance:Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;

    if-nez v0, :cond_1

    .line 31
    const-class v0, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;

    monitor-enter v0

    .line 32
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->mInstance:Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;

    if-nez v1, :cond_0

    .line 33
    new-instance v1, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->mInstance:Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;

    .line 35
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 37
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->mInstance:Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;

    return-object v0
.end method

.method public static hasSharedDisplayFeature()Z
    .locals 1

    .line 55
    sget-boolean v0, Lcom/xiaopeng/util/FeatureOption;->FO_SHARED_DISPLAY_ENABLED:Z

    return v0
.end method


# virtual methods
.method public confirmSharedEvent(I)V
    .locals 3
    .param p1, "targetScreen"    # I

    .line 41
    const-string v0, "SharedDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "confirmSharedEvent targetScreen:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method public getFilterPackages(I)Ljava/util/List;
    .locals 1
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNapaDialogString()Ljava/lang/String;
    .locals 1

    .line 97
    const-string v0, ""

    return-object v0
.end method

.method public getPrimaryFilterPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 59
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecondFilterPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 81
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSharedId(Ljava/lang/String;)I
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getSharedPackages()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public goSharedDesktop(I)V
    .locals 0
    .param p1, "displayId"    # I

    .line 94
    return-void
.end method

.method public isSupportSharedDisplay(Ljava/lang/String;)Z
    .locals 1
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized registerListener(Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;

    monitor-enter p0

    .line 101
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 107
    :cond_0
    monitor-exit p0

    return-void

    .line 100
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;
    throw p1
.end method

.method public setSelfSharedId(I)V
    .locals 1
    .param p1, "displayId"    # I

    .line 51
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->setSharedId(Ljava/lang/String;I)V

    .line 52
    return-void
.end method

.method public setSharedId(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "sharedId"    # I

    .line 46
    const-string v0, "SharedDisplayManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSharedId pkgName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &sharedId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public startSharedDisplay(I)V
    .locals 0
    .param p1, "toDisplayId"    # I

    .line 78
    return-void
.end method

.method public declared-synchronized unregisterListener(Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;

    monitor-enter p0

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;->mEventListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    monitor-exit p0

    return-void

    .line 109
    .end local p1    # "listener":Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager$ISharedDisplayEventListener;
    :catchall_0
    move-exception p1

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/utils/SharedDisplayManager;
    throw p1
.end method
