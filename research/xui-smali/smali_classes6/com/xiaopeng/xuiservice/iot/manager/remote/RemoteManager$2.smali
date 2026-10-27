.class Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$2;
.super Ljava/util/HashMap;
.source "RemoteManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;
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


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;)V
    .locals 2
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$2;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 62
    const-string/jumbo v0, "version"

    const-string v1, "RemoteVersion"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    const-string v0, "low_battery"

    const-string v1, "RemoteLowBattery"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    const-string v0, "battery"

    const-string v1, "RemoteBattery"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    const-string v0, "sleep_time"

    const-string v1, "RemoteSleepTime"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$2;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    return-void
.end method
