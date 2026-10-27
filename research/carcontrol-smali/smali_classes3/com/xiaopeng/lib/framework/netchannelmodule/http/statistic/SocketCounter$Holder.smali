.class final Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter$Holder;
.super Ljava/lang/Object;
.source "SocketCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/SocketCounter;

    return-object v0
.end method
