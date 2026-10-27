.class Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$5;
.super Ljava/util/HashMap;
.source "RemoteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->initStatus(Lcom/xiaopeng/xuimanager/iot/devices/RemoteDevice;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

.field final synthetic val$hasConnected:Z


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Z)V
    .locals 2
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    .line 200
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$5;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    iput-boolean p2, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$5;->val$hasConnected:Z

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 201
    const-string p2, "device_status"

    iget-boolean v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$5;->val$hasConnected:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    invoke-virtual {p0, p2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    const-string/jumbo p2, "version"

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$5;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    const-string v1, "RemoteVersion"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$700(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    const-string p2, "low_battery"

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$5;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    const-string v1, "RemoteLowBattery"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$700(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    const-string p2, "battery"

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$5;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    const-string v1, "RemoteBattery"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$700(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 205
    const-string p2, "sleep_time"

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$5;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    const-string v1, "RemoteSleepTime"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;->access$700(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$5;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    return-void
.end method
