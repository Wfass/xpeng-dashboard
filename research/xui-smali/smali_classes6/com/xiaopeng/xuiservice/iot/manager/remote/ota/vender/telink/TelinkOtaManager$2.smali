.class Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$2;
.super Ljava/lang/Object;
.source "TelinkOtaManager.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController$GattOtaCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;-><init>()V
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

    .line 87
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOtaProgressUpdate(ILcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V
    .locals 4
    .param p1, "progress"    # I
    .param p2, "connection"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;
    .param p3, "controller"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    .line 110
    const-string v0, "TelinkOtaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOtaProgress "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    sget-object v1, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;->PROGRESS:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3, p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;ZLjava/lang/String;I)V

    .line 113
    return-void
.end method

.method public onOtaStatusChanged(ILjava/lang/String;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;)V
    .locals 5
    .param p1, "code"    # I
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "connection"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;
    .param p4, "controller"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaController;

    .line 92
    const-string v0, "TelinkOtaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOtaStatusChanged, code="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", info="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 95
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    invoke-static {v2, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->access$402(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;Z)Z

    .line 96
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/32 v3, 0x186a0

    invoke-virtual {v1, v2, v3, v4}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 97
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    sget-object v2, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;->START:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;ZLjava/lang/String;I)V

    goto :goto_0

    .line 98
    :cond_0
    invoke-static {p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaStatusCode;->isComplete(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 99
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    invoke-static {v2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->access$402(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;Z)Z

    .line 100
    invoke-static {}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->getInstance()Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    invoke-static {v3}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->access$500(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/xuiservice/utils/XuiWorkHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 101
    iget-object v2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    sget-object v3, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;->STOP:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;

    invoke-static {p1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/OtaStatusCode;->isFailed(I)Z

    move-result v4

    xor-int/2addr v4, v1

    invoke-static {v2, v3, v4, p2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->access$300(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$Action;ZLjava/lang/String;I)V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;->access$600(Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/TelinkOtaManager;)Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/ota/vender/telink/GattConnection;->clearAll(Z)V

    .line 104
    :cond_1
    :goto_0
    return-void
.end method
