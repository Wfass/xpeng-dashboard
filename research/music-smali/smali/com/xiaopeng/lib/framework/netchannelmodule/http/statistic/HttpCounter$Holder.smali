.class final Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter$Holder;
.super Ljava/lang/Object;
.source "HttpCounter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "Holder"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    new-instance v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;
    .locals 1

    .line 18
    sget-object v0, Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter$Holder;->INSTANCE:Lcom/xiaopeng/lib/framework/netchannelmodule/http/statistic/HttpCounter;

    return-object v0
.end method
