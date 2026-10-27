.class public interface abstract Lcom/xiaopeng/speech/vui/listener/IXpVuiElementChanged;
.super Ljava/lang/Object;
.source "IXpVuiElementChanged.java"


# virtual methods
.method public onVuiElementChanged(Ljava/lang/String;Landroid/view/View;)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;

    .line 12
    return-void
.end method

.method public onVuiElementChanged(Ljava/lang/String;Landroid/view/View;Ljava/util/List;)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;)V"
        }
    .end annotation

    .line 15
    .local p3, "elementList":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/vui/commons/model/VuiElement;>;"
    return-void
.end method

.method public onVuiElementChanged(Ljava/lang/String;Landroid/view/View;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "vuiLabels"    # [Ljava/lang/String;
    .param p4, "curState"    # I

    .line 18
    return-void
.end method
