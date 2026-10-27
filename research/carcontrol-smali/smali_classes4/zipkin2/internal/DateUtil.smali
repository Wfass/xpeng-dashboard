.class public final Lzipkin2/internal/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field static final UTC:Ljava/util/TimeZone;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTC"

    .line 24
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
    .locals 5
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

    const-wide/16 v2, 0x0

    cmp-long v4, p2, v2

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    move-wide p2, p0

    :goto_0
    sub-long/2addr p0, p2

    cmp-long p2, p0, v2

    if-gtz p2, :cond_1

    goto :goto_1

    .line 40
    :cond_1
    invoke-static {p0, p1}, Lzipkin2/internal/DateUtil;->midnightUTC(J)J

    move-result-wide v2

    .line 42
    :goto_1
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :goto_2
    cmp-long p1, v2, v0

    if-gtz p1, :cond_2

    .line 44
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    sget-object p1, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 p2, 0x1

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    add-long/2addr v2, p1

    goto :goto_2

    :cond_2
    return-object p0
.end method

.method public static midnightUTC(J)J
    .locals 1

    .line 28
    sget-object v0, Lzipkin2/internal/DateUtil;->UTC:Ljava/util/TimeZone;

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 29
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xe

    const/4 p1, 0x0

    .line 30
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 31
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 32
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xb

    .line 33
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 34
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method
