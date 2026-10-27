.class public interface abstract Lcom/xiaopeng/vui/commons/IVuiEngine;
.super Ljava/lang/Object;
.source "IVuiEngine.java"


# virtual methods
.method public abstract addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;)V
.end method

.method public abstract addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lcom/xiaopeng/vui/commons/IVuiSceneListener;Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;)V
.end method

.method public abstract buildScene(Ljava/lang/String;Landroid/view/View;)V
.end method

.method public abstract buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract buildScene(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract enterScene(Ljava/lang/String;)V
.end method

.method public abstract exitScene(Ljava/lang/String;)V
.end method

.method public abstract removeVuiSceneListener(Ljava/lang/String;)V
.end method

.method public abstract updateElementAttribute(Ljava/lang/String;Landroid/view/View;)V
.end method

.method public abstract updateScene(Ljava/lang/String;Landroid/view/View;)V
.end method

.method public abstract updateScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            ")V"
        }
    .end annotation
.end method

.method public abstract updateScene(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract updateScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/xiaopeng/vui/commons/IVuiElementListener;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/xiaopeng/vui/commons/IVuiElementListener;",
            ")V"
        }
    .end annotation
.end method
