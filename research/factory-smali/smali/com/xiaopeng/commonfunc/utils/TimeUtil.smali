.class public Lcom/xiaopeng/commonfunc/utils/TimeUtil;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# static fields
.field public static final DATE_FORMAT_DAY:Ljava/lang/String; = "dd"

.field public static final DATE_FORMAT_ENGLISH_FULL_TIME:Ljava/lang/String; = "EEE MMM dd HH:mm:ss.SSS aa yyyy"

.field public static final DATE_FORMAT_HOUR:Ljava/lang/String; = "HH"

.field public static final DATE_FORMAT_MIN:Ljava/lang/String; = "mm"

.field public static final DATE_FORMAT_MONTH:Ljava/lang/String; = "MM"

.field public static final DATE_FORMAT_YEAR:Ljava/lang/String; = "yyyy"

.field public static final DATE_FORMAT_YYYYMMDDHHMM:Ljava/lang/String; = "yyyy-MM-dd HH:mm"

.field public static final DATE_FORMAT_YYYYMMDDHHMMSS:Ljava/lang/String; = "yyyyMMddHHmmss"

.field public static final DATE_FORMAT_YYYYMMDDHHMMSSMMM:Ljava/lang/String; = "YYYY-MM-DD hh:mm:ss.mmm"

.field public static final DATE_FORMAT_YYYYMMDDHHMMSS_2:Ljava/lang/String; = "yyyy-MM-dd HH.mm.ss"

.field public static final DATE_FORMAT_YYYYMMDDHHMMSS_WITH_SEPARATOR:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static date2TimeStamp(Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .param p0, "date_str"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;

    .line 71
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 72
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 73
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v0

    .line 74
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 76
    .end local v0    # "e":Ljava/lang/Exception;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static date2TimeStampMills(Ljava/lang/String;Ljava/lang/String;)J
    .locals 3
    .param p0, "date_str"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/lang/String;

    .line 88
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 89
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 90
    .end local v0    # "sdf":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v0

    .line 91
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static getDate()Ljava/lang/String;
    .locals 3

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 24
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 25
    .local v2, "time":Ljava/lang/String;
    return-object v2
.end method

.method public static getDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "dateformat"    # Ljava/lang/String;

    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 30
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 31
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 32
    .local v2, "time":Ljava/lang/String;
    return-object v2
.end method

.method public static getEnglishDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "dateformat"    # Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-direct {v0, p0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 37
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 38
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 39
    .local v2, "time":Ljava/lang/String;
    return-object v2
.end method

.method public static getTimeStampSeconds()D
    .locals 4

    .line 43
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    long-to-double v0, v0

    const-wide v2, 0x412e848000000000L    # 1000000.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public static timeStamp2Date(JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "seconds"    # J
    .param p2, "format"    # Ljava/lang/String;

    .line 55
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 56
    :cond_0
    const-string p2, "yyyy-MM-dd HH:mm:ss"

    .line 58
    :cond_1
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    const-wide/16 v2, 0x3e8

    mul-long/2addr v2, p0

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
