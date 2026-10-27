.class public abstract Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;
.super Landroidx/fragment/app/Fragment;
.source "VuiFragment.java"

# interfaces
.implements Lcom/xiaopeng/speech/vui/Helper/IVuiSceneHelper;


# instance fields
.field protected final TAG:Ljava/lang/String;

.field protected fatherId:Ljava/lang/String;

.field private final mElementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

.field protected mIsDialog:Z

.field protected mIsWholeScene:Z

.field private mLastVuiEnable:Z

.field protected mRootContainer:Landroid/view/ViewGroup;

.field private mSubSceneList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final mVuiUpdateViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field protected sceneId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 29
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->sceneId:Ljava/lang/String;

    .line 32
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->fatherId:Ljava/lang/String;

    const/4 v1, 0x1

    .line 33
    iput-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->mIsWholeScene:Z

    .line 34
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->mSubSceneList:Ljava/util/List;

    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->mIsDialog:Z

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->mVuiUpdateViews:Ljava/util/List;

    .line 41
    new-instance v0, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$VuiFragment$iPUM3M9_BU_O6H_9OiUt9zOIOms;

    invoke-direct {v0, p0}, Lcom/xiaopeng/carcontrol/view/fragment/-$$Lambda$VuiFragment$iPUM3M9_BU_O6H_9OiUt9zOIOms;-><init>(Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;)V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->mElementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    return-void
.end method


# virtual methods
.method public getBuildViews()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getRootLayoutId()I
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->sceneId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubSceneList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->mSubSceneList:Ljava/util/List;

    return-object v0
.end method

.method public getVuiElementVisible(Landroid/view/View;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 168
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->getVuiElementVisible(Landroid/content/Context;Landroid/view/View;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public initVuiScene()V
    .locals 10

    .line 140
    iget-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->mIsDialog:Z

    if-nez v0, :cond_0

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initVuiScene: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->sceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->sceneId:Ljava/lang/String;

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->mRootContainer:Landroid/view/ViewGroup;

    iget-object v8, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->mElementChangedListener:Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;

    iget-object v9, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->fatherId:Ljava/lang/String;

    move-object v7, p0

    invoke-virtual/range {v2 .. v9}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initScene(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public isVuiAction(Landroid/view/View;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    const/4 v0, 0x1

    .line 107
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->isVuiAction(Landroid/view/View;Z)Z

    move-result p1

    return p1
.end method

.method public isVuiAction(Landroid/view/View;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "reset"
        }
    .end annotation

    .line 111
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->isVuiAction(Landroid/view/View;Z)Z

    move-result p1

    return p1
.end method

.method public synthetic lambda$new$0$VuiFragment(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "view",
            "type"
        }
    .end annotation

    .line 42
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1, p2}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->updateScene(Landroid/content/Context;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 56
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->isVuiFeatureDisabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->mLastVuiEnable:Z

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    .line 62
    iget-object p3, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->TAG:Ljava/lang/String;

    const-string v0, " onCreateView"

    invoke-static {p3, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->getRootLayoutId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->mRootContainer:Landroid/view/ViewGroup;

    return-object p1
.end method

.method public onDestroyView()V
    .locals 0

    .line 88
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onInterceptVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "vuiEvent"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 101
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 3

    .line 82
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->sceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    .line 71
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onResume:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->sceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->isVuiFeatureDisabled()Z

    move-result v0

    .line 74
    iget-boolean v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->mLastVuiEnable:Z

    if-eq v0, v1, :cond_0

    .line 75
    iput-boolean v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->mLastVuiEnable:Z

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->onVuiEnableChanged()V

    :cond_0
    return-void
.end method

.method protected onVuiEnableChanged()V
    .locals 3

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVuiEnableChanged:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->sceneId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "vuiEvent"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 94
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setFatherId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fatherId"
        }
    .end annotation

    .line 124
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->fatherId:Ljava/lang/String;

    return-void
.end method

.method public setIsDialog(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isDialog"
        }
    .end annotation

    .line 132
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->mIsDialog:Z

    return-void
.end method

.method public setIsWholeScene(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isWholeScene"
        }
    .end annotation

    .line 128
    iput-boolean p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->mIsWholeScene:Z

    return-void
.end method

.method public setSceneId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "sceneId"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->sceneId:Ljava/lang/String;

    return-void
.end method

.method public setSubSceneList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subSceneList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 136
    iput-object p1, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->mSubSceneList:Ljava/util/List;

    return-void
.end method

.method public setVuiElementUnSupport(Landroid/view/View;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "isUnSupport"
        }
    .end annotation

    .line 156
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->setVuiElementUnSupport(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method public setVuiElementVisible(Landroid/view/View;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "isVisible"
        }
    .end annotation

    .line 164
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, p2, v2}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->setVuiElementVisible(Landroid/content/Context;Z[Landroid/view/View;)V

    return-void
.end method

.method protected varargs setVuiLabelUnSupportText([Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "views"
        }
    .end annotation

    .line 160
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->setVuiLabelUnSupportText(Landroid/content/Context;[Landroid/view/View;)V

    return-void
.end method

.method public updateVuiScene()V
    .locals 4

    .line 152
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->sceneId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->mVuiUpdateViews:Ljava/util/List;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->updateVuiScene(Ljava/lang/String;Landroid/content/Context;Ljava/util/List;)V

    return-void
.end method

.method public varargs updateVuiScene([Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "views"
        }
    .end annotation

    .line 148
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->sceneId:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p1}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->updateVuiScene(Ljava/lang/String;Landroid/content/Context;[Landroid/view/View;)V

    return-void
.end method
