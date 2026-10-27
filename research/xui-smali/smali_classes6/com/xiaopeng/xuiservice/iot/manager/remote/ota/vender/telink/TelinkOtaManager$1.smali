.class Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$1;
.super Ljava/lang/Object;
.source "TelinkOtaManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection$ConnectionCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectionStateChange(ILcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;I)V
    .locals 4
    .param p1, "state"    # I
    .param p2, "connection"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;
    .param p3, "statusCode"    # I

    .line 37
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    .line 38
    const-string v1, "TelinkOtaManager"

    const-string v2, "onConnected, startOta..."

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 41
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->access$100(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->startOta(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaSetting;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;->STOP:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;

    const-string v3, "startOta failed"

    invoke-static {v1, v2, v0, v3, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;ZLjava/lang/String;I)V

    .line 43
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->stopOta(Z)V

    .line 44
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->access$402(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;Z)Z

    goto :goto_0

    .line 46
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->access$400(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 47
    const-string v1, "TelinkOtaManager"

    const-string v2, "onDisconnected, stopOta"

    invoke-static {v1, v2}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 50
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;->STOP:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;

    const-string v3, "ble disconnect"

    invoke-static {v1, v2, v0, v3, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;ZLjava/lang/String;I)V

    .line 51
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    invoke-static {v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->stopOta(Z)V

    .line 52
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->access$402(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;Z)Z

    .line 54
    :cond_1
    :goto_0
    return-void
.end method

.method public onMtuChanged(ILcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;)V
    .locals 3
    .param p1, "mtu"    # I
    .param p2, "connected"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    .line 63
    const-string v0, "TelinkOtaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMtuChanged, mtu="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method public onNotify([BLjava/util/UUID;Ljava/util/UUID;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "serviceUUID"    # Ljava/util/UUID;
    .param p3, "chara"    # Ljava/util/UUID;
    .param p4, "connect"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->access$200(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;->pushNotification([B)V

    .line 59
    return-void
.end method
