.class public final synthetic Lcom/xiaopeng/xuimanager/deviceshare/-$$Lambda$DeviceShareManager$1$cmg9kZYNNl6QRpy4xanLMtxRiRQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/-$$Lambda$DeviceShareManager$1$cmg9kZYNNl6QRpy4xanLMtxRiRQ;->f$0:Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/-$$Lambda$DeviceShareManager$1$cmg9kZYNNl6QRpy4xanLMtxRiRQ;->f$0:Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;

    check-cast p1, Lcom/xiaopeng/xuimanager/deviceshare/IDeviceShareListener;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuimanager/deviceshare/DeviceShareManager$1;->lambda$onBusStatusChanged$0(Lcom/xiaopeng/xuimanager/deviceshare/data/ShareDevice;Lcom/xiaopeng/xuimanager/deviceshare/IDeviceShareListener;)V

    return-void
.end method
