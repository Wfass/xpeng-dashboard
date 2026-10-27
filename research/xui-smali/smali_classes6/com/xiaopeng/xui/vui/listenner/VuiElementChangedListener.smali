.class public Lcom/xiaopeng/xui/vui/listenner/VuiElementChangedListener;
.super Ljava/lang/Object;
.source "VuiElementChangedListener.java"

# interfaces
.implements Lcom/xiaopeng/vui/commons/IVuiElementChangedListener;


# instance fields
.field private mSceneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "sceneId"    # Ljava/lang/String;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/listenner/VuiElementChangedListener;->mSceneId:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public onVuiElementChaned(Landroid/view/View;Lcom/xiaopeng/vui/commons/VuiUpdateType;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "vuiUpdateType"    # Lcom/xiaopeng/vui/commons/VuiUpdateType;

    .line 20
    sget-object v0, Lcom/xiaopeng/vui/commons/VuiUpdateType;->UPDATE_VIEW:Lcom/xiaopeng/vui/commons/VuiUpdateType;

    invoke-virtual {v0, p2}, Lcom/xiaopeng/vui/commons/VuiUpdateType;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 21
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/listenner/VuiElementChangedListener;->mSceneId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/vui/commons/IVuiEngine;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lcom/xiaopeng/vui/commons/IVuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/vui/listenner/VuiElementChangedListener;->mSceneId:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/xiaopeng/vui/commons/IVuiEngine;->updateElementAttribute(Ljava/lang/String;Landroid/view/View;)V

    .line 25
    :goto_0
    return-void
.end method
