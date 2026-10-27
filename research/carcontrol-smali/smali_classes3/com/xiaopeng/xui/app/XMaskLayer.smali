.class public Lcom/xiaopeng/xui/app/XMaskLayer;
.super Ljava/lang/Object;
.source "XMaskLayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xui/app/XMaskLayer$MaskLayerInterface;,
        Lcom/xiaopeng/xui/app/XMaskLayer$BackgroundLayout;,
        Lcom/xiaopeng/xui/app/XMaskLayer$TN;,
        Lcom/xiaopeng/xui/app/XMaskLayer$XMaskLayerBuilder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "XMaskLayer"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mTN:Lcom/xiaopeng/xui/app/XMaskLayer$TN;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XMaskLayer$TN;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/xiaopeng/xui/app/XMaskLayer;->mContext:Landroid/content/Context;

    .line 36
    iput-object p2, p0, Lcom/xiaopeng/xui/app/XMaskLayer;->mTN:Lcom/xiaopeng/xui/app/XMaskLayer$TN;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XMaskLayer$TN;Lcom/xiaopeng/xui/app/XMaskLayer$1;)V
    .locals 0

    .line 29
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/app/XMaskLayer;-><init>(Landroid/content/Context;Lcom/xiaopeng/xui/app/XMaskLayer$TN;)V

    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 0

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer;->mTN:Lcom/xiaopeng/xui/app/XMaskLayer$TN;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->getWindowState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;->get()Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XMaskLayer;->mTN:Lcom/xiaopeng/xui/app/XMaskLayer$TN;

    invoke-static {v1}, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->access$000(Lcom/xiaopeng/xui/app/XMaskLayer$TN;)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;->notifyDismiss(Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener;I)Z

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/xui/app/XMaskLayer;->mTN:Lcom/xiaopeng/xui/app/XMaskLayer$TN;

    invoke-virtual {v0}, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->dismissMaskLayer()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 4

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestShow: mTN = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XMaskLayer;->mTN:Lcom/xiaopeng/xui/app/XMaskLayer$TN;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mScreenId"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XMaskLayer;->mTN:Lcom/xiaopeng/xui/app/XMaskLayer$TN;

    invoke-static {v1}, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->access$000(Lcom/xiaopeng/xui/app/XMaskLayer$TN;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XMaskLayer"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {}, Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;->get()Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xui/app/XMaskLayer;->mTN:Lcom/xiaopeng/xui/app/XMaskLayer$TN;

    invoke-static {v1}, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->access$100(Lcom/xiaopeng/xui/app/XMaskLayer$TN;)Z

    move-result v2

    iget-object v3, p0, Lcom/xiaopeng/xui/app/XMaskLayer;->mTN:Lcom/xiaopeng/xui/app/XMaskLayer$TN;

    invoke-static {v3}, Lcom/xiaopeng/xui/app/XMaskLayer$TN;->access$000(Lcom/xiaopeng/xui/app/XMaskLayer$TN;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/xuimanager/systemui/masklayer/MaskLayerManager;->requestShow(Lcom/xiaopeng/xuimanager/systemui/masklayer/IMaskLayerListener;ZI)Z

    return-void
.end method
