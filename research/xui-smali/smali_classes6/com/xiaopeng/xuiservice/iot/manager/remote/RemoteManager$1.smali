.class Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$1;
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

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 56
    const-string v0, "00"

    const-string/jumbo v1, "version"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    const-string v0, "01"

    const-string v1, "low_battery"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-string v0, "02"

    const-string v1, "battery"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    const-string v0, "03"

    const-string v1, "sleep_time"

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/xuiservice/iot/manager/remote/RemoteManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    return-void
.end method
