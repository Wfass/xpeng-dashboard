.class final Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$Holder;
.super Ljava/lang/Object;
.source "TimeoutDns.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 281
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$1;)V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 280
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;
    .locals 1

    .line 280
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/http/xmart/TimeoutDns;

    return-object v0
.end method
