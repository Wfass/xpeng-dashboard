.class public Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;
.super Ljava/lang/Object;
.source "VuiFloatingLayerManager.java"


# static fields
.field private static mVuiFloatingLayer:Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static hide()V
    .locals 1

    .line 75
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->hide(I)V

    .line 76
    return-void
.end method

.method public static hide(I)V
    .locals 1
    .param p0, "type"    # I

    .line 79
    sget-object v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->mVuiFloatingLayer:Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;

    if-eqz v0, :cond_0

    .line 80
    sget-object v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->mVuiFloatingLayer:Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;->hideFloatingLayer(I)V

    .line 82
    :cond_0
    return-void
.end method

.method static synthetic lambda$show$0(Landroid/view/View;IIILandroid/view/View;)V
    .locals 1
    .param p0, "targetView"    # Landroid/view/View;
    .param p1, "type"    # I
    .param p2, "centerOffsetX"    # I
    .param p3, "centerOffsetY"    # I
    .param p4, "view"    # Landroid/view/View;

    .line 66
    sget-object v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->mVuiFloatingLayer:Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;->showFloatingLayer(Landroid/view/View;III)V

    .line 67
    return-void
.end method

.method public static show(Landroid/view/View;)V
    .locals 1
    .param p0, "targetView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 24
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;I)V

    .line 25
    return-void
.end method

.method public static show(Landroid/view/View;I)V
    .locals 1
    .param p0, "targetView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "type"    # I

    .line 32
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;III)V

    .line 33
    return-void
.end method

.method public static show(Landroid/view/View;II)V
    .locals 1
    .param p0, "targetView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "centerOffsetX"    # I
    .param p2, "centerOffsetY"    # I

    .line 36
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;III)V

    .line 37
    return-void
.end method

.method public static show(Landroid/view/View;III)V
    .locals 1
    .param p0, "targetView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "type"    # I
    .param p2, "centerOffsetX"    # I
    .param p3, "centerOffsetY"    # I

    .line 41
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;IIIZ)V

    .line 42
    return-void
.end method

.method public static show(Landroid/view/View;IIIZ)V
    .locals 4
    .param p0, "targetView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "type"    # I
    .param p2, "centerOffsetX"    # I
    .param p3, "centerOffsetY"    # I
    .param p4, "isCheckScroll"    # Z

    .line 46
    if-nez p1, :cond_0

    instance-of v0, p0, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz v0, :cond_0

    .line 48
    move-object v0, p0

    check-cast v0, Lcom/xiaopeng/xui/vui/VuiView;

    .line 50
    .local v0, "vuiView":Lcom/xiaopeng/xui/vui/VuiView;
    invoke-interface {v0}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiDisableHitEffect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    const-string v1, "VuiFloatingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DisableHitEffect type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " view "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    return-void

    .line 55
    .end local v0    # "vuiView":Lcom/xiaopeng/xui/vui/VuiView;
    :cond_0
    sget-object v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->mVuiFloatingLayer:Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;

    if-nez v0, :cond_1

    .line 56
    new-instance v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->mVuiFloatingLayer:Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;

    .line 58
    :cond_1
    const-string v0, "VuiFloatingManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show==   isCheckScroll : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " view : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " x : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " y : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    if-eqz p4, :cond_2

    .line 65
    new-instance v0, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayerManager$UreOefirr9dgokSDF5X4eo6PEbY;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayerManager$UreOefirr9dgokSDF5X4eo6PEbY;-><init>(Landroid/view/View;III)V

    invoke-static {p0, v0}, Lcom/xiaopeng/xui/utils/XViewLocationUtils;->scrollByLocation(Landroid/view/View;Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V

    goto :goto_0

    .line 69
    :cond_2
    sget-object v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->mVuiFloatingLayer:Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;->showFloatingLayer(Landroid/view/View;III)V

    .line 72
    :goto_0
    return-void
.end method

.method public static show(Landroid/view/View;Z)V
    .locals 1
    .param p0, "targetView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isCheckScroll"    # Z

    .line 28
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;IIIZ)V

    .line 29
    return-void
.end method
