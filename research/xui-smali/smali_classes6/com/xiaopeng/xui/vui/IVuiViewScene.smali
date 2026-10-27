.class public interface abstract Lcom/xiaopeng/xui/vui/IVuiViewScene;
.super Ljava/lang/Object;
.source "IVuiViewScene.java"


# virtual methods
.method public getVuiDisplayLocation()I
    .locals 1

    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public initVuiDialogScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;Lcom/xiaopeng/vui/commons/IVuiSceneListener;I)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;
    .param p3, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;
    .param p4, "type"    # I

    .line 41
    return-void
.end method

.method public initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 29
    return-void
.end method

.method public initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;
    .param p3, "listener"    # Lcom/xiaopeng/vui/commons/IVuiSceneListener;

    .line 33
    return-void
.end method

.method public setCustomViewIdList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 25
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    return-void
.end method

.method public setVuiElementListener(Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/xiaopeng/vui/commons/IVuiElementListener;

    .line 21
    return-void
.end method

.method public setVuiEngine(Lcom/xiaopeng/vui/commons/IVuiEngine;)V
    .locals 0
    .param p1, "vuiEngine"    # Lcom/xiaopeng/vui/commons/IVuiEngine;

    .line 17
    return-void
.end method

.method public setVuiSceneId(Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 13
    return-void
.end method
