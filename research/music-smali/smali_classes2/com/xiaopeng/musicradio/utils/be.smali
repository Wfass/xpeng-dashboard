.class public Lcom/xiaopeng/musicradio/utils/be;
.super Ljava/lang/Object;
.source "ReadingUtils.java"


# direct methods
.method public static a(Landroid/content/Context;D)Ljava/lang/String;
    .locals 10

    const-wide v0, 0x40c3880000000000L    # 10000.0

    cmpg-double p0, p1, v0

    if-gez p0, :cond_0

    .line 16
    invoke-static {p1, p2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    double-to-long v2, p1

    const-wide/16 v4, 0x2710

    .line 18
    rem-long/2addr v2, v4

    div-double/2addr p1, v0

    cmpl-double p0, p1, v0

    const-wide/16 v6, 0x3e8

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ltz p0, :cond_2

    double-to-long v2, p1

    .line 21
    rem-long/2addr v2, v4

    div-double/2addr p1, v0

    cmp-long p0, v2, v6

    if-ltz p0, :cond_1

    .line 24
    new-array p0, v9, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p0, v8

    const-string p1, "%.1f\u4ebf"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 26
    :cond_1
    new-array p0, v9, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p0, v8

    const-string p1, "%.0f\u4ebf"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_2
    cmp-long p0, v2, v6

    if-ltz p0, :cond_3

    .line 29
    new-array p0, v9, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p0, v8

    const-string p1, "%.1f\u4e07"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 31
    :cond_3
    new-array p0, v9, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    aput-object p1, p0, v8

    const-string p1, "%.0f\u4e07"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method
