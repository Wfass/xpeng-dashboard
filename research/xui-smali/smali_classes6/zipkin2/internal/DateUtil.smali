.class public final Lzipkin2/internal/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field static final UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 24
    const-string v0, "UTC"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lzipkin2/internal/DateUtil;->UTC:Ljava/util/TimeZone;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDays(JJ)Ljava/util/List;
    .locals 12
    .param p0, "endTs"    # J
    .param p2, "lookback"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ)",
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-static {p0, p1}, Lzipkin2/internal/DateUtil;->midnightUTC(J)J

    move-result-wide v0

    .line 39
    .local v0, "to":J
    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-eqz v4, :cond_0

    move-wide v4, p2

    goto :goto_0

    :cond_0
    move-wide v4, p0

    :goto_0
    sub-long v4, p0, v4

    .line 40
    .local v4, "startMillis":J
    cmp-long v6, v4, v2

    if-gtz v6, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v4, v5}, Lzipkin2/internal/DateUtil;->midnightUTC(J)J

    move-result-wide v2

    .line 42
    .local v2, "from":J
    :goto_1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .local v6, "days":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    move-wide v7, v2

    .local v7, "time":J
    :goto_2
    cmp-long v9, v7, v0

    if-gtz v9, :cond_2

    .line 44
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v7, v8}, Ljava/util/Date;-><init>(J)V

    invoke-interface {v6, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object v9, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v10, 0x1

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    add-long/2addr v7, v9

    goto :goto_2

    .line 46
    .end local v7    # "time":J
    :cond_2
    return-object v6
.end method

.method public static midnightUTC(J)J
    .locals 3
    .param p0, "epochMillis"    # J

    .line 28
    sget-object v0, Lzipkin2/internal/DateUtil;->UTC:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 29
    .local v0, "day":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 30
    const/4 v1, 0x0

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 31
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 32
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 33
    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 34
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method
