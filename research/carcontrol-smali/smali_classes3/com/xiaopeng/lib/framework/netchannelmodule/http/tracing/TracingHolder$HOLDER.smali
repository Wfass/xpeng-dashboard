.class final Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder$HOLDER;
.super Ljava/lang/Object;
.source "TracingHolder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "HOLDER"
.end annotation


# static fields
.field private static INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 27
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;-><init>(Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder$1;)V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder$HOLDER;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100()Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;
    .locals 1

    .line 26
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder$HOLDER;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/http/tracing/TracingHolder;

    return-object v0
.end method
