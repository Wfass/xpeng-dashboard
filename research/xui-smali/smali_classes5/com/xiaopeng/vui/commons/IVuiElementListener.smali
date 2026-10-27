.class public interface abstract Lcom/xiaopeng/vui/commons/IVuiElementListener;
.super Ljava/lang/Object;
.source "IVuiElementListener.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/IVuiElement;


# virtual methods
.method public onBuildVuiElement(Ljava/lang/String;Lcom/xiaopeng/vui/commons/IVuiElementBuilder;)Lcom/xiaopeng/vui/commons/model/VuiElement;
    .locals 1
    .param p1, "vuiElementId"    # Ljava/lang/String;
    .param p2, "builder"    # Lcom/xiaopeng/vui/commons/IVuiElementBuilder;

    .line 16
    const/4 v0, 0x0

    return-object v0
.end method

.method public onVuiElementEvent(Landroid/view/View;Lcom/xiaopeng/vui/commons/model/VuiEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "event"    # Lcom/xiaopeng/vui/commons/model/VuiEvent;

    .line 20
    const/4 v0, 0x0

    return v0
.end method
