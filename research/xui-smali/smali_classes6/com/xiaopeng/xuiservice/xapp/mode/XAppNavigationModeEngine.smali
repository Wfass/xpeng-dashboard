.class public Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;
.super Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;
.source "XAppNavigationModeEngine.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XAppNavigationModeEngine"


# instance fields
.field private mXAppModeViewManager:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppBaseModeEngine;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 24
    const-string v0, "XAppNavigationModeEngine"

    const-string v1, "started XAppNavigationModeEngine!"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;->mXAppModeViewManager:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    .line 26
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;->registerSharedListener()V

    .line 27
    const-string v0, "navigationBar"

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/-$$Lambda$XAppNavigationModeEngine$N3WeSbWvvaJ7aXHV_l6F-bgbWKw;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/-$$Lambda$XAppNavigationModeEngine$N3WeSbWvvaJ7aXHV_l6F-bgbWKw;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/debug/DumpDispatcher;->registerDump(Ljava/lang/String;Lcom/xiaopeng/xuiservice/debug/DumpDispatcher$DebugDumper;)V

    .line 30
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;I)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;
    .param p1, "x1"    # I

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;->refreshNaviBarWithScreenId(I)V

    return-void
.end method

.method private hideDialog(ILjava/lang/String;)V
    .locals 1
    .param p1, "screenId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 63
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->dismissClearAppDialog(ILjava/lang/String;)V

    .line 64
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 29
    return-void
.end method

.method private refreshNaviBarWithScreenId(I)V
    .locals 4
    .param p1, "screenId"    # I

    .line 67
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getActivityInfo(I)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    move-result-object v0

    .line 68
    .local v0, "XAppActivityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    const-string v1, "XAppNavigationModeEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshNaviBarWithScreenId activityInfo:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    if-eqz v0, :cond_0

    .line 70
    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "pkgName":Ljava/lang/String;
    invoke-direct {p0, p1, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;->hideDialog(ILjava/lang/String;)V

    .line 72
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;->mXAppModeViewManager:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    invoke-virtual {v2, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->hideQsPanel(I)V

    .line 74
    .end local v1    # "pkgName":Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;->mXAppModeViewManager:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->updateScreenNavigationBar(I)V

    .line 75
    return-void
.end method

.method private registerSharedListener()V
    .locals 2

    .line 78
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->addWindowStatusCallback(Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy$WindowStatusCallback;)V

    .line 112
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 33
    const-string v0, "dump-XAppNavigationModeEngine"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 35
    if-nez p2, :cond_0

    .line 36
    const-string v0, "please input cmds"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    return-void

    .line 39
    :cond_0
    return-void
.end method

.method protected declared-synchronized handleAppInfoChange()V
    .locals 3

    monitor-enter p0

    .line 43
    :try_start_0
    const-string v0, "XAppNavigationModeEngine"

    const-string v1, "handleAppInfoChange:"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;->isCurrentModeEnable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;->mEnable:Z

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;->mPkgName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/screen/ScreenTaskManager;->getScreenId(Ljava/lang/String;Landroid/os/Bundle;)I

    move-result v0

    .line 46
    .local v0, "screenId":I
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getActivityInfo(I)Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    move-result-object v1

    .line 47
    .local v1, "XAppActivityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    iget-boolean v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;->mEnable:Z

    if-nez v2, :cond_0

    .line 48
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;->mXAppModeViewManager:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->hideQsPanel(I)V

    .line 50
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;->mXAppModeViewManager:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->updateScreenNavigationBar(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    monitor-exit p0

    return-void

    .line 42
    .end local v0    # "screenId":I
    .end local v1    # "XAppActivityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;
    throw v0
.end method

.method protected handleEnableChange()V
    .locals 0

    .line 124
    return-void
.end method

.method protected isCurrentModeEnable()Z
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 116
    return v1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;->mPackageInfo:Lcom/xiaopeng/app/xpPackageInfo;

    iget v0, v0, Lcom/xiaopeng/app/xpPackageInfo;->navigationKey:I

    if-lez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method protected onInit()V
    .locals 0

    .line 128
    return-void
.end method

.method protected onRelease()V
    .locals 0

    .line 133
    return-void
.end method

.method public refreshNaviBar(I)V
    .locals 2
    .param p1, "screenId"    # I

    .line 54
    invoke-virtual {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;->getWorkHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine$1;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/XAppNavigationModeEngine;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method
