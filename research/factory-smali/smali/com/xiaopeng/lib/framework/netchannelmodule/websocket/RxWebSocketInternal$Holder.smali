.class final Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$Holder;
.super Ljava/lang/Object;
.source "RxWebSocketInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 89
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$1;)V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;
    .locals 1

    .line 88
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/websocket/RxWebSocketInternal;

    return-object v0
.end method
