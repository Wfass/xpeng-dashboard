.class Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$1;
.super Ljava/lang/Object;
.source "OtaController.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command$Callback;


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

    .line 412
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public error(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;Ljava/lang/String;)V
    .locals 3
    .param p1, "peripheral"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;
    .param p2, "command"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
    .param p3, "errorMsg"    # Ljava/lang/String;

    .line 440
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 442
    :cond_0
    const-string v0, "TelinkOtaManager.OtaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error packet : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->tag:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " errorMsg : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->tag:Ljava/lang/Object;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 445
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;Z)V

    goto :goto_0

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    const/16 v1, 0x14

    const-string v2, "OTA fail: packet sent err"

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->onOtaFailure(ILjava/lang/String;)V

    .line 448
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->access$600(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V

    .line 450
    :goto_0
    return-void
.end method

.method public success(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;Ljava/lang/Object;)V
    .locals 3
    .param p1, "peripheral"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;
    .param p2, "command"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;
    .param p3, "obj"    # Ljava/lang/Object;

    .line 415
    const-string v0, "TelinkOtaManager.OtaController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "success: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->tag:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", otaRunning="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 419
    :cond_0
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->tag:Ljava/lang/Object;

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 420
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V

    goto/16 :goto_0

    .line 421
    :cond_1
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->tag:Ljava/lang/Object;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V

    goto :goto_0

    .line 423
    :cond_2
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->tag:Ljava/lang/Object;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V

    goto :goto_0

    .line 425
    :cond_3
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->tag:Ljava/lang/Object;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    .line 426
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;Z)V

    goto :goto_0

    .line 427
    :cond_4
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->tag:Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 428
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V

    goto :goto_0

    .line 429
    :cond_5
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->tag:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 430
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 431
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V

    goto :goto_0

    .line 433
    :cond_6
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->tag:Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 434
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V

    .line 436
    :cond_7
    :goto_0
    return-void
.end method

.method public timeout(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;)Z
    .locals 5
    .param p1, "peripheral"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Peripheral;
    .param p2, "command"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;

    .line 454
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 456
    :cond_0
    const-string v0, "TelinkOtaManager.OtaController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "timeout : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->data:[B

    const-string v4, ":"

    invoke-static {v3, v4}, Lcom/xiaopeng/xuiservice/utils/CommonUtils;->bytesToHexString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 458
    iget-object v0, p2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/Command;->tag:Ljava/lang/Object;

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 459
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;Z)V

    goto :goto_0

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    const/16 v2, 0x15

    const-string v3, "OTA fail: packet sent timeout"

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->onOtaFailure(ILjava/lang/String;)V

    .line 462
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->access$600(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V

    .line 465
    :goto_0
    return v1
.end method
