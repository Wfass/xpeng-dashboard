.class public Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;
.super Ljava/lang/Object;
.source "VuiFloatingLayerManager.java"


# static fields
.field private static mScreenId:I

.field private static mVuiFloatingLayer:Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const/4 v0, 0x0

    sput v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->mScreenId:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    return-void
.end method

.method public static getScreenId()I
    .locals 1

    .line 30
    sget v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->mScreenId:I

    return v0
.end method

.method public static hide()V
    .locals 1

    .line 86
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->hide(I)V

    .line 87
    return-void
.end method

.method public static hide(I)V
    .locals 1
    .param p0, "type"    # I

    .line 90
    sget-object v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->mVuiFloatingLayer:Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;

    if-eqz v0, :cond_0

    .line 91
    sget-object v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->mVuiFloatingLayer:Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;

    invoke-interface {v0, p0}, Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;->hideFloatingLayer(I)V

    .line 93
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

    .line 77
    sget-object v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->mVuiFloatingLayer:Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;->showFloatingLayer(Landroid/view/View;III)V

    .line 78
    return-void
.end method

.method public static declared-synchronized setScreenId(I)V
    .locals 1
    .param p0, "screenId"    # I

    const-class v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;

    monitor-enter v0

    .line 26
    :try_start_0
    sput p0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->mScreenId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    monitor-exit v0

    return-void

    .line 25
    .end local p0    # "screenId":I
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static show(Landroid/view/View;)V
    .locals 1
    .param p0, "targetView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 34
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;I)V

    .line 35
    return-void
.end method

.method public static show(Landroid/view/View;I)V
    .locals 1
    .param p0, "targetView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "type"    # I

    .line 42
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;III)V

    .line 43
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

    .line 46
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, p2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;III)V

    .line 47
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

    .line 51
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, p3, v0}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;IIIZ)V

    .line 52
    return-void
.end method

.method public static declared-synchronized show(Landroid/view/View;IIIZ)V
    .locals 5
    .param p0, "targetView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "type"    # I
    .param p2, "centerOffsetX"    # I
    .param p3, "centerOffsetY"    # I
    .param p4, "isCheckScroll"    # Z

    const-class v0, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;

    monitor-enter v0

    .line 56
    if-nez p1, :cond_0

    :try_start_0
    instance-of v1, p0, Lcom/xiaopeng/xui/vui/VuiView;

    if-eqz v1, :cond_0

    .line 58
    move-object v1, p0

    check-cast v1, Lcom/xiaopeng/xui/vui/VuiView;

    .line 60
    .local v1, "vuiView":Lcom/xiaopeng/xui/vui/VuiView;
    invoke-interface {v1}, Lcom/xiaopeng/xui/vui/VuiView;->getVuiDisableHitEffect()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 61
    const-string v2, "VuiFloatingManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DisableHitEffect type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " view "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    monitor-exit v0

    return-void

    .line 55
    .end local v1    # "vuiView":Lcom/xiaopeng/xui/vui/VuiView;
    .end local p0    # "targetView":Landroid/view/View;
    .end local p1    # "type":I
    .end local p2    # "centerOffsetX":I
    .end local p3    # "centerOffsetY":I
    .end local p4    # "isCheckScroll":Z
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 65
    .restart local p0    # "targetView":Landroid/view/View;
    .restart local p1    # "type":I
    .restart local p2    # "centerOffsetX":I
    .restart local p3    # "centerOffsetY":I
    .restart local p4    # "isCheckScroll":Z
    :cond_0
    :try_start_1
    sget-object v1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->mVuiFloatingLayer:Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;

    if-nez v1, :cond_1

    .line 66
    new-instance v1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;

    invoke-static {}, Lcom/xiaopeng/xui/Xui;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayer;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->mVuiFloatingLayer:Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;

    .line 68
    :cond_1
    sget-object v1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->mVuiFloatingLayer:Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;

    sget v2, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->mScreenId:I

    invoke-interface {v1, v2}, Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;->setScreenId(I)V

    .line 69
    const-string v1, "VuiFloatingManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "show==   isCheckScroll : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " view : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " x : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " y : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/utils/XLogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    if-eqz p4, :cond_2

    .line 76
    new-instance v1, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayerManager$UreOefirr9dgokSDF5X4eo6PEbY;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/xiaopeng/xui/vui/floatinglayer/-$$Lambda$VuiFloatingLayerManager$UreOefirr9dgokSDF5X4eo6PEbY;-><init>(Landroid/view/View;III)V

    invoke-static {p0, v1}, Lcom/xiaopeng/xui/utils/XViewLocationUtils;->scrollByLocation(Landroid/view/View;Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V

    goto :goto_0

    .line 80
    :cond_2
    sget-object v1, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->mVuiFloatingLayer:Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;

    invoke-interface {v1, p0, p1, p2, p3}, Lcom/xiaopeng/xui/vui/floatinglayer/IVuiFloatingLayer;->showFloatingLayer(Landroid/view/View;III)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    :goto_0
    monitor-exit v0

    return-void

    .line 55
    .end local p0    # "targetView":Landroid/view/View;
    .end local p1    # "type":I
    .end local p2    # "centerOffsetX":I
    .end local p3    # "centerOffsetY":I
    .end local p4    # "isCheckScroll":Z
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static show(Landroid/view/View;Z)V
    .locals 1
    .param p0, "targetView"    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "isCheckScroll"    # Z

    .line 38
    const/4 v0, 0x0

    invoke-static {p0, v0, v0, v0, p1}, Lcom/xiaopeng/xui/vui/floatinglayer/VuiFloatingLayerManager;->show(Landroid/view/View;IIIZ)V

    .line 39
    return-void
.end method
