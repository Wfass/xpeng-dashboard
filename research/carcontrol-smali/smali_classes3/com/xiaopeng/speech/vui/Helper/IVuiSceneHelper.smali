.class public interface abstract Lcom/xiaopeng/speech/vui/Helper/IVuiSceneHelper;
.super Ljava/lang/Object;
.source "IVuiSceneHelper.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/IVuiSceneListener;


# virtual methods
.method public buildScene()V
    .locals 5

    .line 42
    invoke-interface {p0}, Lcom/xiaopeng/speech/vui/Helper/IVuiSceneHelper;->getSceneId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 43
    :cond_0
    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    invoke-interface {p0}, Lcom/xiaopeng/speech/vui/Helper/IVuiSceneHelper;->getSceneId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p0}, Lcom/xiaopeng/speech/vui/Helper/IVuiSceneHelper;->getBuildViews()Ljava/util/List;

    move-result-object v2

    invoke-interface {p0}, Lcom/xiaopeng/speech/vui/Helper/IVuiSceneHelper;->getSubSceneList()Ljava/util/List;

    move-result-object v3

    invoke-interface {p0}, Lcom/xiaopeng/speech/vui/Helper/IVuiSceneHelper;->isMainScene()Z

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/xiaopeng/speech/vui/VuiEngine;->buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V

    return-void
.end method

.method public abstract getBuildViews()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSceneId()Ljava/lang/String;
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

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getVuiScenePops()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public isCustomBuildScene()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isMainScene()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onBuildScene()V
    .locals 3

    .line 20
    invoke-interface {p0}, Lcom/xiaopeng/speech/vui/Helper/IVuiSceneHelper;->getVuiScenePops()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    invoke-static {}, Lcom/xiaopeng/speech/vui/constants/Foo;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v1

    invoke-interface {p0}, Lcom/xiaopeng/speech/vui/Helper/IVuiSceneHelper;->getSceneId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiSceneProps(Ljava/lang/String;Ljava/util/Map;)V

    .line 24
    :cond_0
    invoke-interface {p0}, Lcom/xiaopeng/speech/vui/Helper/IVuiSceneHelper;->isCustomBuildScene()Z

    move-result v0

    if-nez v0, :cond_1

    .line 25
    invoke-interface {p0}, Lcom/xiaopeng/speech/vui/Helper/IVuiSceneHelper;->buildScene()V

    :cond_1
    return-void
.end method
