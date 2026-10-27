.class public Lbrz;
.super Ljava/lang/Object;
.source "StatSessionUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbrz$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    invoke-direct {p0}, Lbrz;->d()V

    return-void
.end method

.method public static a()Lbrz;
    .locals 1

    .line 24
    sget-object v0, Lbrz$a;->a:Lbrz;

    return-object v0
.end method

.method private d()V
    .locals 7

    const-wide/16 v0, 0x0

    const-string v2, "SP_STAT_SESSION_TIME"

    .line 33
    invoke-static {v2, v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v0, v3, v0

    const-string v1, "SP_STAT_SESSION_COUNT"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v0, :cond_0

    .line 34
    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/DateUtils;->isToday(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 35
    invoke-static {v1, v5}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    add-int/2addr v0, v6

    .line 37
    iput v5, p0, Lbrz;->b:I

    goto :goto_0

    :cond_0
    move v0, v6

    .line 39
    :goto_0
    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    const-string v4, "session%d"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lbrz;->a:Ljava/lang/String;

    .line 40
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    .line 41
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v2, v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lbrz;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "session_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p0}, Lbrz;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "step_id"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lbrz;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 3

    .line 50
    iget v0, p0, Lbrz;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lbrz;->b:I

    .line 51
    new-array v0, v1, [Ljava/lang/Object;

    iget v1, p0, Lbrz;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "step%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
