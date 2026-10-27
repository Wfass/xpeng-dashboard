.class public Lcom/xiaopeng/xui/vui/VuiSceneHelper;
.super Ljava/lang/Object;
.source "VuiSceneHelper.java"

# interfaces
.implements Lbxv;


# instance fields
.field private isCustomBuildScene:Z

.field private isMainScene:Z

.field private mBuildViewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mListener:Lbxs;

.field private mRootView:Landroid/view/View;

.field private mSceneId:Ljava/lang/String;

.field private mSubSceneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mVuiEventInterceptListener:Lcom/xiaopeng/xui/vui/listenner/IVuiEventInterceptListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mBuildViewList:Ljava/util/List;

    const/4 v1, 0x1

    .line 24
    iput-boolean v1, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->isMainScene:Z

    .line 25
    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mSubSceneList:Ljava/util/List;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->isCustomBuildScene:Z

    .line 84
    new-instance v0, Lcom/xiaopeng/xui/vui/-$$Lambda$VuiSceneHelper$NgYdPDcKcvgU2fCEbD8164HZCos;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xui/vui/-$$Lambda$VuiSceneHelper$NgYdPDcKcvgU2fCEbD8164HZCos;-><init>(Lcom/xiaopeng/xui/vui/VuiSceneHelper;)V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mListener:Lbxs;

    return-void
.end method

.method private getBuildViews()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mBuildViewList:Ljava/util/List;

    if-nez v0, :cond_0

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mBuildViewList:Ljava/util/List;

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mBuildViewList:Ljava/util/List;

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mRootView:Landroid/view/View;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mBuildViewList:Ljava/util/List;

    return-object v0
.end method

.method private getSceneId()Ljava/lang/String;
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mSceneId:Ljava/lang/String;

    return-object v0
.end method

.method private isCustomBuildScene()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->isCustomBuildScene:Z

    return v0
.end method


# virtual methods
.method public buildScene()V
    .locals 5

    .line 78
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 79
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isVuiEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lbxu;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 80
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lbxu;

    move-result-object v0

    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->getBuildViews()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mSubSceneList:Ljava/util/List;

    iget-boolean v4, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->isMainScene:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lbxu;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    :cond_1
    return-void
.end method

.method public init(Landroidx/lifecycle/j;Ljava/lang/String;Landroid/view/View;)V
    .locals 7

    .line 70
    iput-object p2, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mSceneId:Ljava/lang/String;

    .line 71
    iput-object p3, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mRootView:Landroid/view/View;

    .line 72
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->isVuiEnable()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lbxu;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lbxu;

    move-result-object v1

    iget-object v6, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mListener:Lbxs;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p0

    invoke-interface/range {v1 .. v6}, Lbxu;->initScene(Landroidx/lifecycle/j;Ljava/lang/String;Landroid/view/View;Lbxv;Lbxs;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$new$0$VuiSceneHelper(Landroid/view/View;Lbyc;)V
    .locals 1

    .line 85
    sget-object v0, Lbyc;->UPDATE_VIEW:Lbyc;

    invoke-virtual {v0, p2}, Lbyc;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lbxu;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 86
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lbxu;

    move-result-object p2

    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lbxu;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 88
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lbxu;

    move-result-object p2

    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0, p1}, Lbxu;->updateElementAttribute(Ljava/lang/String;Landroid/view/View;)V

    :goto_0
    return-void
.end method

.method public onBuildScene()V
    .locals 1

    .line 116
    invoke-direct {p0}, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->isCustomBuildScene()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    invoke-virtual {p0}, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->buildScene()V

    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mBuildViewList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 98
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mBuildViewList:Ljava/util/List;

    .line 101
    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mRootView:Landroid/view/View;

    .line 102
    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mSceneId:Ljava/lang/String;

    .line 103
    iget-object v1, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mSubSceneList:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 104
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 106
    :cond_1
    iput-object v0, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mSubSceneList:Ljava/util/List;

    return-void
.end method

.method public onInterceptVuiEvent(Landroid/view/View;Lbyf;)Z
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mVuiEventInterceptListener:Lcom/xiaopeng/xui/vui/listenner/IVuiEventInterceptListener;

    if-eqz v0, :cond_0

    .line 49
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xui/vui/listenner/IVuiEventInterceptListener;->onInterceptVuiEvent(Landroid/view/View;Lbyf;)Z

    move-result p1

    return p1

    :cond_0
    if-eqz p1, :cond_1

    .line 52
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mVuiEventInterceptListener:Lcom/xiaopeng/xui/vui/listenner/IVuiEventInterceptListener;

    if-eqz v0, :cond_0

    .line 61
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xui/vui/listenner/IVuiEventInterceptListener;->onVuiEvent(Landroid/view/View;Lbyf;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 64
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onVuiStateChanged()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mVuiEventInterceptListener:Lcom/xiaopeng/xui/vui/listenner/IVuiEventInterceptListener;

    if-eqz v0, :cond_0

    .line 124
    invoke-interface {v0}, Lcom/xiaopeng/xui/vui/listenner/IVuiEventInterceptListener;->onVuiStateChanged()V

    :cond_0
    return-void
.end method

.method public setBuildViewList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    .line 93
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mBuildViewList:Ljava/util/List;

    return-void
.end method

.method public setCustomBuildScene(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->isCustomBuildScene:Z

    return-void
.end method

.method public setMainScene(Z)V
    .locals 0

    .line 110
    iput-boolean p1, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->isMainScene:Z

    return-void
.end method

.method public setSubSceneIds(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mSubSceneList:Ljava/util/List;

    return-void
.end method

.method public setVuiEventInterceptListener(Lcom/xiaopeng/xui/vui/listenner/IVuiEventInterceptListener;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/VuiSceneHelper;->mVuiEventInterceptListener:Lcom/xiaopeng/xui/vui/listenner/IVuiEventInterceptListener;

    return-void
.end method
