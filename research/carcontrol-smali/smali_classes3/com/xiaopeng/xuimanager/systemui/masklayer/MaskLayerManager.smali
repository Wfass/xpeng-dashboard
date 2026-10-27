.class public Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;
.super Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;
.source "MaskLayerManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager$Holder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/SystemUIManager;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;-><init>()V

    return-void
.end method

.method public static get()Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;
    .locals 1

    .line 60
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager$Holder;->access$100()Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected logTag()Ljava/lang/String;
    .locals 1

    const-string v0, "MaskLayer"

    return-object v0
.end method

.method public notifyDismiss(Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener;I)Z
    .locals 2

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 39
    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->dismissMaskLayer(Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener;I)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move v1, p2

    :cond_0
    return v1

    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_1
    return v1
.end method

.method public requestShow(Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener;ZI)Z
    .locals 2

    .line 17
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;->mService:Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 20
    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/xiaopeng/xuimanager/systemui/ISystemUIService;->showMaskLayer(Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener;ZI)I

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    move v1, p2

    :cond_0
    return v1

    :catch_0
    move-exception p1

    .line 23
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const/16 p2, 0x847

    .line 27
    :try_start_1
    invoke-interface {p1, p2}, Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener;->showMaskLayer(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    .line 29
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return v1
.end method
