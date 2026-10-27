.class public Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;
.super Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;
.source "SocketCounter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter$Holder;
    }
.end annotation


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "data_traffic_socket"

.field private static final MOLE_TRAFFIC_SOCKET_BUTTON_ID:Ljava/lang/String; = "B002"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    const-string v0, "data_traffic_socket"

    const-string v1, "B002"

    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    const-string v0, "net_socket_failed"

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->sKeyFailed:Ljava/lang/String;

    .line 14
    const-string v0, "net_socket_succeed"

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->sKeySucceed:Ljava/lang/String;

    .line 15
    const-string v0, "net_socket_request"

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->sKeyRequest:Ljava/lang/String;

    .line 16
    const-string v0, "net_socket_rx"

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->sKeyTrafficRx:Ljava/lang/String;

    .line 17
    const-string v0, "net_socket_tx"

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->sKeyTrafficTx:Ljava/lang/String;

    .line 18
    const-string v0, "net_socket_details"

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->sKeyDetails:Ljava/lang/String;

    .line 19
    const-string v0, "net_socket_date"

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->sKeyLastDate:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;
    .locals 1

    .line 23
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter$Holder;->access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    move-result-object v0

    return-object v0
.end method
