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

    const-string v0, "data_traffic_socket"

    const-string v1, "B002"

    .line 11
    invoke-direct {p0, v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/BaseHttpCounter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "net_socket_failed"

    .line 13
    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->sKeyFailed:Ljava/lang/String;

    const-string v0, "net_socket_succeed"

    .line 14
    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->sKeySucceed:Ljava/lang/String;

    const-string v0, "net_socket_request"

    .line 15
    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->sKeyRequest:Ljava/lang/String;

    const-string v0, "net_socket_rx"

    .line 16
    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->sKeyTrafficRx:Ljava/lang/String;

    const-string v0, "net_socket_tx"

    .line 17
    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->sKeyTrafficTx:Ljava/lang/String;

    const-string v0, "net_socket_details"

    .line 18
    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->sKeyDetails:Ljava/lang/String;

    const-string v0, "net_socket_date"

    .line 19
    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;->sKeyLastDate:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;
    .locals 1

    .line 23
    invoke-static {}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter$Holder;->access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    move-result-object v0

    return-object v0
.end method
