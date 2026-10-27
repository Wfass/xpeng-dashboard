.class public interface abstract Lcom/xiaopeng/vui/commons/IVuiElementBuilder;
.super Ljava/lang/Object;
.source "IVuiElementBuilder.java"


# virtual methods
.method public build(ILandroid/view/View;)Ljava/util/List;
    .locals 1
    .param p1, "fatherElementId"    # I
    .param p2, "view"    # Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public build(ILjava/util/List;)Ljava/util/List;
    .locals 1
    .param p1, "fatherElementId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/vui/commons/model/VuiElement;",
            ">;"
        }
    .end annotation

    .line 20
    .local p2, "viewList":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    const/4 v0, 0x0

    return-object v0
.end method
