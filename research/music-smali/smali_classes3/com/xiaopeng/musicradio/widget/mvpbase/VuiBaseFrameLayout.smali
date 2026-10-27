.class public abstract Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;
.super Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;
.source "VuiBaseFrameLayout.java"

# interfaces
.implements Lbxv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        "Presenter:",
        "Lcom/xiaopeng/musicradio/widget/lifecycle/a<",
        "TUIInterface;>;>",
        "Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout<",
        "TUIInterface;TPresenter;>;",
        "Lbxv;"
    }
.end annotation


# instance fields
.field public isCanBuild:Z

.field public needBuild:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->isCanBuild:Z

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->needBuild:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->isCanBuild:Z

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->needBuild:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 21
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->isCanBuild:Z

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->needBuild:Z

    return-void
.end method


# virtual methods
.method protected abstract getScene()Ljava/lang/String;
.end method

.method protected abstract getSubSceneList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public onBuildScene()V
    .locals 4

    .line 50
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->isCanBuild:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->needBuild:Z

    .line 52
    sget-object v0, Lbya;->NORMAL:Lbya;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->setVuiMode(Lbya;)V

    .line 53
    sget-object v0, Lbxy;->GROUP:Lbxy;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->setVuiElementType(Lbxy;)V

    const-string v0, ""

    .line 54
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->getScene()Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->getSubSceneList()Ljava/util/List;

    move-result-object v3

    .line 55
    invoke-virtual {v0, v2, p0, v3, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Z)V

    goto :goto_0

    .line 58
    :cond_0
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->needBuild:Z

    :goto_0
    return-void
.end method

.method public onCreateView()V
    .locals 2

    .line 64
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->onCreateView()V

    .line 65
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->getScene()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p0}, Lcom/xiaopeng/speech/vui/VuiEngine;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lbxv;)V

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 70
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->onDestroyView()V

    .line 71
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->getScene()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/xiaopeng/speech/vui/VuiEngine;->removeVuiSceneListener(Ljava/lang/String;Lbxv;)V

    return-void
.end method

.method public onInterceptVuiEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 43
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 88
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->onPause()V

    .line 89
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->getScene()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->exitScene(Ljava/lang/String;)V

    return-void
.end method

.method public onSupportInvisible()V
    .locals 2

    .line 82
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->onSupportInvisible()V

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->getScene()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->exitScene(Ljava/lang/String;)V

    return-void
.end method

.method public onSupportVisible()V
    .locals 2

    .line 76
    invoke-super {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/MVPBaseFrameLayout;->onSupportVisible()V

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/mvpbase/VuiBaseFrameLayout;->getScene()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->enterScene(Ljava/lang/String;)V

    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 0

    return-void
.end method
