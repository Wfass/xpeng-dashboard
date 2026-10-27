.class Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo$ClosedReason;
.super Ljava/lang/Object;
.source "WebSocketInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClosedReason"
.end annotation


# instance fields
.field private mCode:I

.field private mReason:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo$ClosedReason;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;ILjava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo$ClosedReason;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput p2, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo$ClosedReason;->mCode:I

    .line 31
    iput-object p3, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo$ClosedReason;->mReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public code()I
    .locals 1

    .line 38
    iget v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo$ClosedReason;->mCode:I

    return v0
.end method

.method public reason()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/WebSocketInfo$ClosedReason;->mReason:Ljava/lang/String;

    return-object v0
.end method
