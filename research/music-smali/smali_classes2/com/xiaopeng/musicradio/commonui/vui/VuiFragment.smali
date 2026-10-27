.class public abstract Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;
.super Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;
.source "VuiFragment.java"

# interfaces
.implements Lbxv;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        "Presenter:",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TUIInterface;>;>",
        "Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment<",
        "TUIInterface;TPresenter;>;",
        "Lbxv;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VuiFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createViewAgain()V
    .locals 1

    .line 51
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;->createViewAgain()V

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onCreateAgainVuiScene(Landroid/view/View;)V

    return-void
.end method

.method protected createViewFirst()V
    .locals 1

    .line 46
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getRootView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onCreateVuiScene(Landroid/view/View;)V

    return-void
.end method

.method public enterScene()V
    .locals 2

    .line 105
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laqy;->a(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->isMainScene()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->enterScene(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public exitScene()V
    .locals 2

    .line 38
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Laqy;->b(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->isMainScene()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->exitScene(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getSceneId()Ljava/lang/String;
    .locals 1

    const-string v0, ""

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

    .line 101
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isMainScene()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBuildScene()V
    .locals 5

    .line 87
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getSubSceneList()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->isMainScene()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Z)V

    :cond_0
    return-void
.end method

.method public onCreateAgainVuiScene(Landroid/view/View;)V
    .locals 3

    .line 118
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lbxv;Z)V

    :cond_0
    return-void
.end method

.method public onCreateVuiScene(Landroid/view/View;)V
    .locals 3

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    if-eqz p1, :cond_0

    .line 113
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p1, p0, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lbxv;Z)V

    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 57
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;->onDestroyView()V

    .line 58
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->needCacheView()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onDestroyVuiScene(Z)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 61
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->onDestroyVuiScene(Z)V

    :goto_0
    return-void
.end method

.method public onDestroyVuiScene(Z)V
    .locals 2

    .line 124
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0, p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->removeVuiSceneListener(Ljava/lang/String;Lbxv;Z)V

    :cond_0
    return-void
.end method

.method public onInterceptVuiEvent(Landroid/view/View;Lbyf;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 80
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onPause()V
    .locals 2

    .line 32
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;->onPause()V

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPause:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->exitScene()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 24
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/vui/DeskVuiFragment;->onResume()V

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VuiFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;->enterScene()V

    return-void
.end method

.method public onVuiEvent(Landroid/view/View;Lbyf;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;)V

    return-void
.end method
