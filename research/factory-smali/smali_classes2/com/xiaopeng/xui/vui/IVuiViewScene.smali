.class public interface abstract Lcom/xiaopeng/xui/vui/IVuiViewScene;
.super Ljava/lang/Object;
.source "IVuiViewScene.java"


# virtual methods
.method public abstract initVuiScene(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiEngine;)V
.end method

.method public abstract setCustomViewIdList(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setVuiElementListener(Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
.end method

.method public abstract setVuiEngine(Lcom/xiaopeng/vui/commons/IVuiEngine;)V
.end method

.method public abstract setVuiSceneId(Ljava/lang/String;)V
.end method
