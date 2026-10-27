.class public interface abstract Lcom/xiaopeng/vui/commons/IVuiElementBuilder;
.super Ljava/lang/Object;
.source "IVuiElementBuilder.java"


# virtual methods
.method public build(ILandroid/view/View;)Ljava/util/List;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method

.method public build(ILjava/util/List;)Ljava/util/List;
    .locals 0
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

    const/4 p1, 0x0

    return-object p1
.end method
