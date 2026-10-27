.class final Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$ConnectionTimeoutRunnable;
.super Ljava/lang/Object;
.source "Peripheral.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectionTimeoutRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;)V
    .locals 0

    .line 992
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$ConnectionTimeoutRunnable;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;
    .param p2, "x1"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$1;

    .line 992
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$ConnectionTimeoutRunnable;-><init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 995
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$ConnectionTimeoutRunnable;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->disconnect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 996
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral$ConnectionTimeoutRunnable;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;

    const/16 v1, 0xfe

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;->onDisconnect(I)V

    .line 998
    :cond_0
    return-void
.end method
