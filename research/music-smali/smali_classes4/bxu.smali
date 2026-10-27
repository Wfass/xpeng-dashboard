.class public interface abstract Lbxu;
.super Ljava/lang/Object;
.source "IVuiEngine.java"


# virtual methods
.method public abstract addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lbxv;)V
.end method

.method public abstract addVuiSceneListener(Ljava/lang/String;Landroid/view/View;Lbxv;Lbxs;)V
.end method

.method public abstract buildScene(Ljava/lang/String;Landroid/view/View;Ljava/util/List;Lbxt;Ljava/lang/String;Lbxv;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Lbxt;",
            "Ljava/lang/String;",
            "Lbxv;",
            ")V"
        }
    .end annotation
.end method

.method public abstract buildScene(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation
.end method

.method public abstract enterScene(Ljava/lang/String;)V
.end method

.method public abstract enterScene(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract exitScene(Ljava/lang/String;)V
.end method

.method public abstract exitScene(Ljava/lang/String;Ljava/lang/String;Lbxv;)V
.end method

.method public abstract initScene(Landroidx/lifecycle/j;Ljava/lang/String;Landroid/view/View;Lbxv;Lbxs;)V
.end method

.method public abstract removeVuiSceneListener(Ljava/lang/String;Lbxv;)V
.end method

.method public abstract updateElementAttribute(Ljava/lang/String;Landroid/view/View;)V
.end method

.method public abstract updateScene(Ljava/lang/String;Landroid/view/View;)V
.end method

.method public abstract vuiFeedback(Landroid/view/View;Ljava/lang/String;)V
.end method
