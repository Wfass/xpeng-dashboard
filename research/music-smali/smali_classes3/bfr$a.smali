.class Lbfr$a;
.super Ljava/lang/Object;
.source "MainDataOperation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbfr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/bean/music/ConResult;

.field private b:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lbfr$1;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Lbfr$a;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaopeng/musicradio/bean/music/ConResult;
    .locals 4

    .line 179
    iget-object v0, p0, Lbfr$a;->a:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lbfr$a;->b:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lbfr$a;->a:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    .line 182
    :cond_0
    iget-object v0, p0, Lbfr$a;->a:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    return-object v0
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/music/ConResult;)V
    .locals 2

    .line 186
    iput-object p1, p0, Lbfr$a;->a:Lcom/xiaopeng/musicradio/bean/music/ConResult;

    .line 187
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lbfr$a;->b:J

    return-void
.end method
