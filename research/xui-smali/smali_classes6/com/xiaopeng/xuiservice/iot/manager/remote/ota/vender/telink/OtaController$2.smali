.class Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$2;
.super Ljava/lang/Object;
.source "OtaController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    .line 469
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 472
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    const-string v1, "OTA fail: firmware version request timeout"

    const/16 v2, 0x1c

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->onOtaFailure(ILjava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->access$600(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V

    .line 474
    return-void
.end method
