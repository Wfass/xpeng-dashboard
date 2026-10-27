.class public abstract Lcom/xiaopeng/carcontrol/view/VuiMultiSceneActivity;
.super Lcom/xiaopeng/xui/app/XActivity;
.source "VuiMultiSceneActivity.java"

# interfaces
.implements Lcom/xiaopeng/speech/vui/Helper/IVuiSceneHelper;


# instance fields
.field public mRootView:Landroid/view/View;

.field public mSceneId:Ljava/lang/String;

.field public final mSubScenes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/xui/app/XActivity;-><init>()V

    const/4 v0, 0x0

    .line 23
    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/VuiMultiSceneActivity;->mRootView:Landroid/view/View;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/carcontrol/view/VuiMultiSceneActivity;->mSubScenes:Ljava/util/List;

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

.method public getSceneId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/carcontrol/view/VuiMultiSceneActivity;->mSceneId:Ljava/lang/String;

    return-object v0
.end method

.method public initFragmentVuiParams(Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;Ljava/lang/String;ZLjava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "fragment",
            "sceneId",
            "isWholeScene",
            "subSceneList",
            "fatherId"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 66
    :cond_0
    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->setSceneId(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p1, p3}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->setIsWholeScene(Z)V

    .line 68
    invoke-virtual {p1, p4}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->setSubSceneList(Ljava/util/List;)V

    .line 69
    invoke-virtual {p1, p5}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->setFatherId(Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 70
    invoke-virtual {p1, p2}, Lcom/xiaopeng/carcontrol/view/fragment/VuiFragment;->setIsDialog(Z)V

    return-void
.end method

.method public abstract initVui()V
.end method

.method public initVuiScene()V
    .locals 10

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initVuiScene: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/VuiMultiSceneActivity;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Activity"

    invoke-static {v1, v0}, Lcom/xiaopeng/carcontrol/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    invoke-static {}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->instance()Lcom/xiaopeng/carcontrol/speech/VuiManager;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/VuiMultiSceneActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {p0}, Lcom/xiaopeng/carcontrol/view/VuiMultiSceneActivity;->getSceneId()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/xiaopeng/carcontrol/view/VuiMultiSceneActivity;->mRootView:Landroid/view/View;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p0

    move-object v7, p0

    invoke-virtual/range {v2 .. v9}, Lcom/xiaopeng/carcontrol/speech/VuiManager;->initScene(Landroid/content/Context;Landroidx/lifecycle/Lifecycle;Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;Ljava/lang/String;)V

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

    .line 42
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onPause()V
    .locals 1

    .line 28
    invoke-super {p0}, Lcom/xiaopeng/xui/app/XActivity;->onPause()V

    const/4 v0, 0x1

    .line 29
    invoke-static {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->hide(I)V

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

    .line 35
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    :cond_0
    return-void
.end method
