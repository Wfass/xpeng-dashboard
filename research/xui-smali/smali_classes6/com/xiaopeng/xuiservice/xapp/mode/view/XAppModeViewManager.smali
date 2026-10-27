.class public Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;
.super Ljava/lang/Object;
.source "XAppModeViewManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "XAppModeViewManager"

.field private static sXAppModeViewManager:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;


# instance fields
.field private delta:I

.field private mAppTipsDialogWrapper:Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;

.field private mClearDataDialogWrapper:Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;

.field private mContext:Landroid/content/Context;

.field private mEffectDialogWrapper:Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;

.field private mGameDialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;

.field private mJoystickQuickMenuView:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;

.field private mKeyConfigViewGroup:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigViewGroup;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mPkgName:Ljava/lang/String;

.field private mQsPanel:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

.field private volatile transient mQsPanelShow:Z

.field private mShareDialogWrapper:Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

.field private final showingNavigationBars:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x14

    iput v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->delta:I

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->mQsPanelShow:Z

    .line 50
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->showingNavigationBars:Landroid/util/SparseArray;

    .line 62
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->mContext:Landroid/content/Context;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 64
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->mClearDataDialogWrapper:Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;

    .line 65
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->mAppTipsDialogWrapper:Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;

    .line 66
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->mShareDialogWrapper:Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    .line 67
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;

    invoke-direct {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->mEffectDialogWrapper:Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;

    .line 68
    invoke-static {}, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->getInstance()Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$1;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/base/event/LocaleEventManager;->registerListener(Lcom/xiaopeng/xuiservice/base/event/LocaleEventListener;)V

    .line 74
    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->mShareDialogWrapper:Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->mAppTipsDialogWrapper:Lcom/xiaopeng/xuiservice/xapp/mode/view/AppTipsDialogWrapper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->mEffectDialogWrapper:Lcom/xiaopeng/xuiservice/xapp/mode/view/EffectDialogWrapper;

    return-object v0
.end method

.method static synthetic access$300(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->mQsPanel:Lcom/xiaopeng/xuiservice/xapp/mode/widget/QsPanel;

    return-object v0
.end method

.method static synthetic access$400(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->initJoystickView()V

    return-void
.end method

.method static synthetic access$500(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->mJoystickQuickMenuView:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->mClearDataDialogWrapper:Lcom/xiaopeng/xuiservice/xapp/mode/view/ClearDataDialogWrapper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;
    .locals 1
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    .line 33
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->mGameDialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    .line 33
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->initGameDialog()V

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;
    .locals 2

    .line 53
    const-class v0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    monitor-enter v0

    .line 54
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->sXAppModeViewManager:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    if-nez v1, :cond_0

    .line 55
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->sXAppModeViewManager:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    .line 57
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->sXAppModeViewManager:Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;

    return-object v0

    .line 57
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private initGameDialog()V
    .locals 3

    .line 375
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->mGameDialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;

    if-nez v0, :cond_0

    .line 376
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->mContext:Landroid/content/Context;

    const v2, 0x7f0f02fc

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->mGameDialog:Lcom/xiaopeng/xuiservice/xapp/mode/widget/GameDialog;

    .line 378
    :cond_0
    return-void
.end method

.method private declared-synchronized initJoystickView()V
    .locals 3

    monitor-enter p0

    .line 381
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->mJoystickQuickMenuView:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0c0047

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->mJoystickQuickMenuView:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/JoystickQuickMenuView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 384
    :cond_0
    monitor-exit p0

    return-void

    .line 380
    :catchall_0
    move-exception v0

    monitor-exit p0

    .end local p0    # "this":Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;
    throw v0
.end method

.method public static synthetic lambda$removeNavigationBar$2(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;I)V
    .locals 3
    .param p1, "screenId"    # I

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->showingNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 192
    .local v0, "bars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;>;"
    if-eqz v0, :cond_1

    .line 193
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    .line 194
    .local v2, "bar":Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->hide()V

    .line 195
    .end local v2    # "bar":Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;
    goto :goto_0

    .line 196
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->showingNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 198
    :cond_1
    return-void
.end method

.method public static synthetic lambda$showNavigationBar$1(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 0
    .param p1, "screenId"    # I
    .param p2, "areaType"    # Ljava/lang/String;
    .param p3, "xpPackageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 173
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->showNavigationBar0(ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    return-void
.end method

.method public static synthetic lambda$updateScreenNavigationBar$0(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;ILjava/util/List;)V
    .locals 11
    .param p1, "screenId"    # I
    .param p2, "topActivityInfoList"    # Ljava/util/List;

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->showingNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 88
    .local v0, "bars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;>;"
    if-eqz v0, :cond_3

    .line 89
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 90
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    .line 91
    .local v2, "bar":Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getXpPackageInfo()Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v3

    iget-object v3, v3, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    .line 93
    .local v3, "packageName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 94
    .local v4, "found":Z
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    .line 95
    .local v6, "xAppActivityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v6}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 96
    const/4 v4, 0x1

    .line 97
    goto :goto_2

    .line 99
    .end local v6    # "xAppActivityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    :cond_0
    goto :goto_1

    .line 101
    :cond_1
    :goto_2
    if-nez v4, :cond_2

    .line 102
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->hide()V

    .line 103
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 105
    .end local v2    # "bar":Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "found":Z
    :cond_2
    goto :goto_0

    .line 109
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;>;"
    :cond_3
    if-eqz v0, :cond_4

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    :goto_3
    move-object v0, v1

    .line 110
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    .line 111
    .local v2, "xAppActivityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    invoke-direct {p0, v2}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->xpPackageInfoOf(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v3

    .line 112
    .local v3, "xpPackageInfo":Lcom/xiaopeng/app/xpPackageInfo;
    invoke-virtual {p0, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->isShowNaviBar(Lcom/xiaopeng/app/xpPackageInfo;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 113
    goto :goto_4

    .line 116
    :cond_5
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getAreaType()Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "areaType":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v5

    .line 119
    .local v5, "packageName":Ljava/lang/String;
    const/4 v6, 0x0

    .line 120
    .local v6, "found":Z
    const/4 v7, 0x0

    .line 121
    .local v7, "showingBar":Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;
    if-eqz v0, :cond_7

    .line 122
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    .line 123
    .local v9, "bar":Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;
    if-eqz v5, :cond_6

    invoke-virtual {v9}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->getXpPackageInfo()Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v10

    iget-object v10, v10, Lcom/xiaopeng/app/xpPackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 124
    const/4 v6, 0x1

    .line 125
    move-object v7, v9

    .line 126
    goto :goto_6

    .line 128
    .end local v9    # "bar":Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;
    :cond_6
    goto :goto_5

    .line 131
    :cond_7
    :goto_6
    if-nez v6, :cond_8

    .line 132
    invoke-direct {p0, p1, v4, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->showNavigationBar0(ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    goto :goto_7

    .line 134
    :cond_8
    invoke-virtual {v7, v4, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->update(Ljava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    .line 136
    .end local v2    # "xAppActivityInfo":Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;
    .end local v3    # "xpPackageInfo":Lcom/xiaopeng/app/xpPackageInfo;
    .end local v4    # "areaType":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    .end local v6    # "found":Z
    .end local v7    # "showingBar":Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;
    :goto_7
    goto :goto_4

    .line 137
    :cond_9
    return-void
.end method

.method private removeNavigationBar(I)V
    .locals 2
    .param p1, "screenId"    # I

    .line 190
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$bJ2UQ_YlaYg9powCQKP7A1DfDyo;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$bJ2UQ_YlaYg9powCQKP7A1DfDyo;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 199
    return-void
.end method

.method private showNavigationBar(ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 2
    .param p1, "screenId"    # I
    .param p2, "areaType"    # Ljava/lang/String;
    .param p3, "xpPackageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 173
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$VkfS3Ewe_l7RbM_7qrsbcawgEqk;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$VkfS3Ewe_l7RbM_7qrsbcawgEqk;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method

.method private showNavigationBar0(ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 3
    .param p1, "screenId"    # I
    .param p2, "areaType"    # Ljava/lang/String;
    .param p3, "xpPackageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 177
    const-string v0, "XAppModeViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showNavigationBar screenId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " areaType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " &xpPackageInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;-><init>(Landroid/content/Context;)V

    .line 179
    .local v0, "navigationBar2":Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;
    invoke-virtual {v0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;->show(ILjava/lang/String;Lcom/xiaopeng/app/xpPackageInfo;)V

    .line 181
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->showingNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 182
    .local v1, "bars":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/xiaopeng/xuiservice/xapp/mode/widget/NavigationBar2;>;"
    if-nez v1, :cond_0

    .line 183
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v2

    .line 184
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->showingNavigationBars:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 186
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    return-void
.end method

.method private xpPackageInfoOf(Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;)Lcom/xiaopeng/app/xpPackageInfo;
    .locals 6
    .param p1, "xAppActivityInfo"    # Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;

    .line 141
    invoke-virtual {p1}, Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    .line 142
    .local v0, "pkgName":Ljava/lang/String;
    const/4 v1, 0x0

    .line 143
    .local v1, "packageInfo":Lcom/xiaopeng/app/xpPackageInfo;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 144
    const-string v2, "com.xiaopeng"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/xiaopeng/xuiservice/xapp/Constants;->XP_PACKAGE_OVERLAY_LIST:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/content/pm/IPackageManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v2

    move-object v1, v2

    .line 147
    const-string v2, "XAppModeViewManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "xpPackageInfoOf AppGlobals.getPackageManager().getXpPackageInfo "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_0

    .line 148
    :catch_0
    move-exception v2

    .line 149
    .local v2, "e":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    .line 151
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    if-nez v1, :cond_1

    .line 152
    invoke-static {}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getInstance()Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuiservice/applist/ApplistManagerServer;->getAppListManager(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;

    move-result-object v2

    .line 153
    .local v2, "appListManager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    if-eqz v2, :cond_1

    .line 154
    invoke-virtual {v2, v0}, Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;->getXpPackageInfo(Ljava/lang/String;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object v1

    .line 155
    const-string v3, "XAppModeViewManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "xpPackageInfoOf AbsAppListManager.getXpPackageInfo "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .end local v2    # "appListManager":Lcom/xiaopeng/xuiservice/applist/AbsAppListManager;
    :cond_1
    return-object v1
.end method


# virtual methods
.method public dismissAppTipsStatusDialog(Ljava/lang/String;)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 211
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$3;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$3;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 217
    return-void
.end method

.method public dismissClearAppDialog()V
    .locals 2

    .line 303
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$13;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$13;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 309
    return-void
.end method

.method public dismissClearAppDialog(ILjava/lang/String;)V
    .locals 2
    .param p1, "screenId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 312
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$14;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$14;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 318
    return-void
.end method

.method public dismissGameDialog()V
    .locals 2

    .line 364
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$19;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$19;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 372
    return-void
.end method

.method public dismissKaraokeEffectDialog()V
    .locals 2

    .line 228
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$5;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 234
    return-void
.end method

.method public dismissShareLoading()V
    .locals 2

    .line 330
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$16;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$16;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 336
    return-void
.end method

.method public hideOrHideJoystickView(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .line 284
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$11;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;II)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 291
    return-void
.end method

.method public hideOrShowKaraokeEffectDialog(I)V
    .locals 2
    .param p1, "screenId"    # I

    .line 220
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$4;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$4;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 226
    return-void
.end method

.method public hideQsPanel(I)V
    .locals 2
    .param p1, "screenId"    # I

    .line 237
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$6;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$6;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 245
    return-void
.end method

.method public hideSharePanel(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "screenId"    # I

    .line 257
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$8;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 263
    return-void
.end method

.method public hideTransferConfirmDialog()V
    .locals 2

    .line 275
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$10;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$10;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 281
    return-void
.end method

.method protected isShowNaviBar(Lcom/xiaopeng/app/xpPackageInfo;)Z
    .locals 4
    .param p1, "packageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 165
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 166
    return v0

    .line 168
    :cond_0
    const-string v1, "XAppModeViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "navigationKey:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/xiaopeng/app/xpPackageInfo;->navigationKey:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    iget v1, p1, Lcom/xiaopeng/app/xpPackageInfo;->navigationKey:I

    if-lez v1, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method

.method public showAppTipsStatusDialog(ILjava/lang/String;)V
    .locals 2
    .param p1, "screenId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 202
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$2;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 208
    return-void
.end method

.method public showClearAppDialog(ILjava/lang/String;)V
    .locals 2
    .param p1, "screenId"    # I
    .param p2, "pkgName"    # Ljava/lang/String;

    .line 294
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$12;

    invoke-direct {v1, p0, p2, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$12;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 300
    return-void
.end method

.method public showGameDetail()V
    .locals 2

    .line 354
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$18;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$18;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 361
    return-void
.end method

.method public showGameDialog(Lcom/xiaopeng/app/xpPackageInfo;)V
    .locals 2
    .param p1, "packageInfo"    # Lcom/xiaopeng/app/xpPackageInfo;

    .line 338
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$17;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$17;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;Lcom/xiaopeng/app/xpPackageInfo;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 351
    return-void
.end method

.method public showShareLoading(I)V
    .locals 2
    .param p1, "screenId"    # I

    .line 321
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$15;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$15;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 327
    return-void
.end method

.method public showSharePanel(Ljava/lang/String;I)V
    .locals 2
    .param p1, "pkgName"    # Ljava/lang/String;
    .param p2, "screenId"    # I

    .line 248
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$7;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 254
    return-void
.end method

.method public showTransferConfirmDialog(Landroid/content/Intent;ILcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "screenId"    # I
    .param p3, "callback"    # Lcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;

    .line 266
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager$9;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;Landroid/content/Intent;ILcom/xiaopeng/xuiservice/xapp/mode/view/ShareDialogWrapper$DialogCallback;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 272
    return-void
.end method

.method public updateScreenNavigationBar(I)V
    .locals 3
    .param p1, "screenId"    # I

    .line 77
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->get()Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/xapp/platform/ScreenManagerProxy;->getActivityInfoList(I)Ljava/util/List;

    move-result-object v0

    .line 78
    .local v0, "topActivityInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/platform/XAppActivityInfo;>;"
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/UiHandler;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$bAJS_oDatKq0UIvQ6TSCb3njKlA;

    invoke-direct {v2, p0, p1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/view/-$$Lambda$XAppModeViewManager$bAJS_oDatKq0UIvQ6TSCb3njKlA;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/UiHandler;->post(Ljava/lang/Runnable;)Z

    .line 138
    return-void

    .line 79
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/xapp/mode/view/XAppModeViewManager;->removeNavigationBar(I)V

    .line 80
    return-void
.end method
