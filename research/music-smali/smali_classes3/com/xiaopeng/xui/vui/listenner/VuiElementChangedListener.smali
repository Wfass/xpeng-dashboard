.class public Lcom/xiaopeng/xui/vui/listenner/VuiElementChangedListener;
.super Ljava/lang/Object;
.source "VuiElementChangedListener.java"

# interfaces
.implements Lbxs;


# instance fields
.field private mSceneId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/listenner/VuiElementChangedListener;->mSceneId:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onVuiElementChaned(Landroid/view/View;Lbyc;)V
    .locals 1

    .line 20
    sget-object v0, Lbyc;->UPDATE_VIEW:Lbyc;

    invoke-virtual {v0, p2}, Lbyc;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lbxu;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 21
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lbxu;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/VuiElementChangedListener;->mSceneId:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lbxu;->updateScene(Ljava/lang/String;Landroid/view/View;)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getVuiEngine()Lbxu;

    move-result-object p2

    iget-object v0, p0, Lcom/xiaopeng/xui/vui/listenner/VuiElementChangedListener;->mSceneId:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Lbxu;->updateElementAttribute(Ljava/lang/String;Landroid/view/View;)V

    :goto_0
    return-void
.end method
