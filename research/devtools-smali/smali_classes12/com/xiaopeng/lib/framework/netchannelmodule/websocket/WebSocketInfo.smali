.class public Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;
.super Ljava/lang/Object;
.source "WebSocketInfo.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo$ClosedReason;
    }
.end annotation


# static fields
.field private static final EMPTY_REASON_STRING:Ljava/lang/String; = ""


# instance fields
.field private mByteStringMessage:Lokio/ByteString;

.field private mClosedReason:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo$ClosedReason;

.field private mOnReconnect:Z

.field private mState:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo$STATE;

.field private mStringMessage:Ljava/lang/String;

.field private mWebSocket:Lokhttp3/WebSocket;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    return-void
.end method

.method constructor <init>(Lokhttp3/WebSocket;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo$STATE;)V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->mWebSocket:Lokhttp3/WebSocket;

    .line 51
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->mState:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo$STATE;

    .line 52
    return-void
.end method

.method constructor <init>(Lokhttp3/WebSocket;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->mWebSocket:Lokhttp3/WebSocket;

    .line 56
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->mStringMessage:Ljava/lang/String;

    .line 57
    return-void
.end method

.method constructor <init>(Lokhttp3/WebSocket;Lokio/ByteString;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->mWebSocket:Lokhttp3/WebSocket;

    .line 61
    iput-object p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->mByteStringMessage:Lokio/ByteString;

    .line 62
    return-void
.end method

.method static createReconnect()Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo;
    .locals 2

    .line 65
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;-><init>()V

    .line 66
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->mOnReconnect:Z

    .line 67
    return-object v0
.end method


# virtual methods
.method public byteStringMessage()Lokio/ByteString;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->mByteStringMessage:Lokio/ByteString;

    return-object v0
.end method

.method public byteStringMessage(Lokio/ByteString;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->mByteStringMessage:Lokio/ByteString;

    .line 100
    return-void
.end method

.method public closedReason()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->mClosedReason:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo$ClosedReason;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->mClosedReason:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo$ClosedReason;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo$ClosedReason;->reason()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->mClosedReason:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo$ClosedReason;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo$ClosedReason;->reason()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 129
    :cond_1
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public closedReasonCode()I
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->mClosedReason:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo$ClosedReason;

    if-nez v0, :cond_0

    .line 120
    const/4 v0, 0x0

    return v0

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->mClosedReason:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo$ClosedReason;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo$ClosedReason;->code()I

    move-result v0

    return v0
.end method

.method public getWebSocket()Lokhttp3/WebSocket;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->mWebSocket:Lokhttp3/WebSocket;

    return-object v0
.end method

.method public isClosed()Z
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->mState:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo$STATE;

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo$STATE;->CLOSED:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnOpen()Z
    .locals 2

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->mState:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo$STATE;

    sget-object v1, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo$STATE;->OPEN:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/websocket/IWebSocketInfo$STATE;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isOnReconnect()Z
    .locals 1

    .line 114
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->mOnReconnect:Z

    return v0
.end method

.method public setClosedReason(ILjava/lang/String;)V
    .locals 1

    .line 79
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo$ClosedReason;

    invoke-direct {v0, p0, p1, p2}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo$ClosedReason;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;ILjava/lang/String;)V

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->mClosedReason:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo$ClosedReason;

    .line 80
    return-void
.end method

.method public setWebSocket(Lokhttp3/WebSocket;)V
    .locals 0

    .line 75
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->mWebSocket:Lokhttp3/WebSocket;

    .line 76
    return-void
.end method

.method public stringMessage()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->mStringMessage:Ljava/lang/String;

    return-object v0
.end method

.method public stringMessage(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;->mStringMessage:Ljava/lang/String;

    .line 90
    return-void
.end method
