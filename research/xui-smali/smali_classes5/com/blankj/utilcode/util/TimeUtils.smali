.class public final Lcom/blankj/utilcode/util/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final CHINESE_ZODIAC:[Ljava/lang/String;

.field private static final SDF_THREAD_LOCAL:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/text/SimpleDateFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final ZODIAC:[Ljava/lang/String;

.field private static final ZODIAC_FLAGS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 29
    new-instance v0, Lcom/blankj/utilcode/util/TimeUtils$1;

    invoke-direct {v0}, Lcom/blankj/utilcode/util/TimeUtils$1;-><init>()V

    sput-object v0, Lcom/blankj/utilcode/util/TimeUtils;->SDF_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    .line 1469
    const-string v1, "\u7334"

    const-string v2, "\u9e21"

    const-string v3, "\u72d7"

    const-string v4, "\u732a"

    const-string v5, "\u9f20"

    const-string v6, "\u725b"

    const-string v7, "\u864e"

    const-string v8, "\u5154"

    const-string v9, "\u9f99"

    const-string v10, "\u86c7"

    const-string v11, "\u9a6c"

    const-string v12, "\u7f8a"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blankj/utilcode/util/TimeUtils;->CHINESE_ZODIAC:[Ljava/lang/String;

    .line 1526
    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/blankj/utilcode/util/TimeUtils;->ZODIAC_FLAGS:[I

    .line 1527
    const-string v1, "\u6c34\u74f6\u5ea7"

    const-string v2, "\u53cc\u9c7c\u5ea7"

    const-string v3, "\u767d\u7f8a\u5ea7"

    const-string v4, "\u91d1\u725b\u5ea7"

    const-string v5, "\u53cc\u5b50\u5ea7"

    const-string v6, "\u5de8\u87f9\u5ea7"

    const-string v7, "\u72ee\u5b50\u5ea7"

    const-string v8, "\u5904\u5973\u5ea7"

    const-string v9, "\u5929\u79e4\u5ea7"

    const-string v10, "\u5929\u874e\u5ea7"

    const-string v11, "\u5c04\u624b\u5ea7"

    const-string v12, "\u6469\u7faf\u5ea7"

    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/blankj/utilcode/util/TimeUtils;->ZODIAC:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0x14
        0x13
        0x15
        0x15
        0x15
        0x16
        0x17
        0x17
        0x17
        0x18
        0x17
        0x16
    .end array-data
.end method

.method private constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "u can\'t instantiate me..."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static date2Millis(Ljava/util/Date;)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .line 206
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public static date2String(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .line 174
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->date2String(Ljava/util/Date;Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static date2String(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "pattern"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 184
    if-eqz p1, :cond_0

    .line 185
    invoke-static {p1}, Lcom/blankj/utilcode/util/TimeUtils;->getSafeDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pattern\' of type String (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static date2String(Ljava/util/Date;Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 195
    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 195
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getChineseWeek(J)Ljava/lang/String;
    .locals 1
    .param p0, "millis"    # J

    .line 1221
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/TimeUtils;->getChineseWeek(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChineseWeek(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "time"    # Ljava/lang/String;

    .line 1190
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/TimeUtils;->getChineseWeek(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChineseWeek(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1200
    if-eqz p1, :cond_0

    .line 1201
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/TimeUtils;->getChineseWeek(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1200
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getChineseWeek(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .line 1211
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "E"

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChineseZodiac(I)Ljava/lang/String;
    .locals 2
    .param p0, "year"    # I

    .line 1523
    sget-object v0, Lcom/blankj/utilcode/util/TimeUtils;->CHINESE_ZODIAC:[Ljava/lang/String;

    rem-int/lit8 v1, p0, 0xc

    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getChineseZodiac(J)Ljava/lang/String;
    .locals 1
    .param p0, "millis"    # J

    .line 1513
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->millis2Date(J)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/TimeUtils;->getChineseZodiac(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChineseZodiac(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "time"    # Ljava/lang/String;

    .line 1480
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/TimeUtils;->getChineseZodiac(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getChineseZodiac(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1490
    if-eqz p1, :cond_0

    .line 1491
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/TimeUtils;->getChineseZodiac(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1490
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getChineseZodiac(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .line 1501
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1502
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1503
    sget-object v1, Lcom/blankj/utilcode/util/TimeUtils;->CHINESE_ZODIAC:[Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0xc

    aget-object v1, v1, v2

    return-object v1
.end method

.method public static getDate(JJI)Ljava/util/Date;
    .locals 2
    .param p0, "millis"    # J
    .param p2, "timeSpan"    # J
    .param p4, "unit"    # I

    .line 939
    invoke-static {p2, p3, p4}, Lcom/blankj/utilcode/util/TimeUtils;->timeSpan2Millis(JI)J

    move-result-wide v0

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/TimeUtils;->millis2Date(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getDate(Ljava/lang/String;JI)Ljava/util/Date;
    .locals 1
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "timeSpan"    # J
    .param p3, "unit"    # I

    .line 961
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/TimeUtils;->getDate(Ljava/lang/String;Ljava/text/DateFormat;JI)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getDate(Ljava/lang/String;Ljava/text/DateFormat;JI)Ljava/util/Date;
    .locals 4
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "timeSpan"    # J
    .param p4, "unit"    # I

    .line 981
    if-eqz p1, :cond_0

    .line 984
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v0

    invoke-static {p2, p3, p4}, Lcom/blankj/utilcode/util/TimeUtils;->timeSpan2Millis(JI)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/TimeUtils;->millis2Date(J)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 981
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getDate(Ljava/util/Date;JI)Ljava/util/Date;
    .locals 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "timeSpan"    # J
    .param p3, "unit"    # I

    .line 1005
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->date2Millis(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p1, p2, p3}, Lcom/blankj/utilcode/util/TimeUtils;->timeSpan2Millis(JI)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/TimeUtils;->millis2Date(J)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static getDateByNow(JI)Ljava/util/Date;
    .locals 2
    .param p0, "timeSpan"    # J
    .param p2, "unit"    # I

    .line 1081
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getNowMills()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->getDate(JJI)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method private static getDefaultFormat()Ljava/text/SimpleDateFormat;
    .locals 1

    .line 38
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-static {v0}, Lcom/blankj/utilcode/util/TimeUtils;->getSafeDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    return-object v0
.end method

.method public static getFitTimeSpan(JJI)Ljava/lang/String;
    .locals 2
    .param p0, "millis1"    # J
    .param p2, "millis2"    # J
    .param p4, "precision"    # I

    .line 394
    sub-long v0, p0, p2

    invoke-static {v0, v1, p4}, Lcom/blankj/utilcode/util/TimeUtils;->millis2FitTimeSpan(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFitTimeSpan(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 4
    .param p0, "time1"    # Ljava/lang/String;
    .param p1, "time2"    # Ljava/lang/String;
    .param p2, "precision"    # I

    .line 326
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v0

    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 327
    .local v0, "delta":J
    invoke-static {v0, v1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->millis2FitTimeSpan(JI)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getFitTimeSpan(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;I)Ljava/lang/String;
    .locals 4
    .param p0, "time1"    # Ljava/lang/String;
    .param p1, "time2"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "precision"    # I

    .line 349
    if-eqz p2, :cond_0

    .line 351
    invoke-static {p0, p2}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v0

    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    .line 352
    .local v0, "delta":J
    invoke-static {v0, v1, p3}, Lcom/blankj/utilcode/util/TimeUtils;->millis2FitTimeSpan(JI)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 349
    .end local v0    # "delta":J
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#2 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFitTimeSpan(Ljava/util/Date;Ljava/util/Date;I)Ljava/lang/String;
    .locals 4
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;
    .param p2, "precision"    # I

    .line 372
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->date2Millis(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/blankj/utilcode/util/TimeUtils;->date2Millis(Ljava/util/Date;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->millis2FitTimeSpan(JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFitTimeSpanByNow(JI)Ljava/lang/String;
    .locals 2
    .param p0, "millis"    # J
    .param p2, "precision"    # I

    .line 588
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->getFitTimeSpan(JJI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFitTimeSpanByNow(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "precision"    # I

    .line 528
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getNowString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lcom/blankj/utilcode/util/TimeUtils;->getFitTimeSpan(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFitTimeSpanByNow(Ljava/lang/String;Ljava/text/DateFormat;I)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "precision"    # I

    .line 548
    if-eqz p1, :cond_0

    .line 550
    invoke-static {p1}, Lcom/blankj/utilcode/util/TimeUtils;->getNowString(Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->getFitTimeSpan(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 548
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFitTimeSpanByNow(Ljava/util/Date;I)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "precision"    # I

    .line 569
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getNowDate()Ljava/util/Date;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->getFitTimeSpan(Ljava/util/Date;Ljava/util/Date;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFriendlyTimeSpanByNow(J)Ljava/lang/String;
    .locals 11
    .param p0, "millis"    # J

    .line 667
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 668
    .local v0, "now":J
    sub-long v2, v0, p0

    .line 669
    .local v2, "span":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-gez v4, :cond_0

    .line 671
    const-string v4, "%tc"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 672
    :cond_0
    const-wide/16 v7, 0x3e8

    cmp-long v4, v2, v7

    if-gez v4, :cond_1

    .line 673
    const-string v4, "\u521a\u521a"

    return-object v4

    .line 674
    :cond_1
    const-wide/32 v9, 0xea60

    cmp-long v4, v2, v9

    if-gez v4, :cond_2

    .line 675
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v9, "%d\u79d2\u524d"

    new-array v6, v6, [Ljava/lang/Object;

    div-long v7, v2, v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-static {v4, v9, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 676
    :cond_2
    const-wide/32 v7, 0x36ee80

    cmp-long v4, v2, v7

    if-gez v4, :cond_3

    .line 677
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v7, "%d\u5206\u949f\u524d"

    new-array v6, v6, [Ljava/lang/Object;

    div-long v8, v2, v9

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v5

    invoke-static {v4, v7, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 680
    :cond_3
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getWeeOfToday()J

    move-result-wide v7

    .line 681
    .local v7, "wee":J
    cmp-long v4, p0, v7

    if-ltz v4, :cond_4

    .line 682
    const-string v4, "\u4eca\u5929%tR"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v5

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 683
    :cond_4
    const-wide/32 v9, 0x5265c00

    sub-long v9, v7, v9

    cmp-long v4, p0, v9

    if-ltz v4, :cond_5

    .line 684
    const-string v4, "\u6628\u5929%tR"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v5

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 686
    :cond_5
    const-string v4, "%tF"

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v6, v5

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getFriendlyTimeSpanByNow(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "time"    # Ljava/lang/String;

    .line 608
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->getFriendlyTimeSpanByNow(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getFriendlyTimeSpanByNow(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 628
    if-eqz p1, :cond_0

    .line 629
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/TimeUtils;->getFriendlyTimeSpanByNow(J)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 628
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getFriendlyTimeSpanByNow(Ljava/util/Date;)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .line 648
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/TimeUtils;->getFriendlyTimeSpanByNow(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMillis(JJI)J
    .locals 2
    .param p0, "millis"    # J
    .param p2, "timeSpan"    # J
    .param p4, "unit"    # I

    .line 717
    invoke-static {p2, p3, p4}, Lcom/blankj/utilcode/util/TimeUtils;->timeSpan2Millis(JI)J

    move-result-wide v0

    add-long/2addr v0, p0

    return-wide v0
.end method

.method public static getMillis(Ljava/lang/String;JI)J
    .locals 2
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "timeSpan"    # J
    .param p3, "unit"    # I

    .line 739
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/TimeUtils;->getMillis(Ljava/lang/String;Ljava/text/DateFormat;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getMillis(Ljava/lang/String;Ljava/text/DateFormat;JI)J
    .locals 4
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "timeSpan"    # J
    .param p4, "unit"    # I

    .line 759
    if-eqz p1, :cond_0

    .line 762
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v0

    invoke-static {p2, p3, p4}, Lcom/blankj/utilcode/util/TimeUtils;->timeSpan2Millis(JI)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0

    .line 759
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getMillis(Ljava/util/Date;JI)J
    .locals 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "timeSpan"    # J
    .param p3, "unit"    # I

    .line 783
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->date2Millis(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p1, p2, p3}, Lcom/blankj/utilcode/util/TimeUtils;->timeSpan2Millis(JI)J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public static getMillisByNow(JI)J
    .locals 2
    .param p0, "timeSpan"    # J
    .param p2, "unit"    # I

    .line 1023
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getNowMills()J

    move-result-wide v0

    invoke-static {v0, v1, p0, p1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->getMillis(JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNowDate()Ljava/util/Date;
    .locals 1

    .line 432
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    return-object v0
.end method

.method public static getNowMills()J
    .locals 2

    .line 403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getNowString()Ljava/lang/String;
    .locals 3

    .line 413
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/blankj/utilcode/util/TimeUtils;->millis2String(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNowString(Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 2
    .param p0, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 422
    if-eqz p0, :cond_0

    .line 423
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1, p0}, Lcom/blankj/utilcode/util/TimeUtils;->millis2String(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 422
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSafeDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;
    .locals 3
    .param p0, "pattern"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    .line 43
    sget-object v0, Lcom/blankj/utilcode/util/TimeUtils;->SDF_THREAD_LOCAL:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 45
    .local v0, "sdfMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/text/SimpleDateFormat;>;"
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/text/SimpleDateFormat;

    .line 46
    .local v1, "simpleDateFormat":Ljava/text/SimpleDateFormat;
    if-nez v1, :cond_0

    .line 47
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-direct {v2, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 48
    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    :cond_0
    return-object v1
.end method

.method public static getString(JJI)Ljava/lang/String;
    .locals 6
    .param p0, "millis"    # J
    .param p2, "timeSpan"    # J
    .param p4, "unit"    # I

    .line 805
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v2

    move-wide v0, p0

    move-wide v3, p2

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/TimeUtils;->getString(JLjava/text/DateFormat;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(JLjava/text/DateFormat;JI)Ljava/lang/String;
    .locals 2
    .param p0, "millis"    # J
    .param p2, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "timeSpan"    # J
    .param p5, "unit"    # I

    .line 825
    if-eqz p2, :cond_0

    .line 828
    invoke-static {p3, p4, p5}, Lcom/blankj/utilcode/util/TimeUtils;->timeSpan2Millis(JI)J

    move-result-wide v0

    add-long/2addr v0, p0

    invoke-static {v0, v1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->millis2String(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 825
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getString(Ljava/lang/String;JI)Ljava/lang/String;
    .locals 1
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "timeSpan"    # J
    .param p3, "unit"    # I

    .line 850
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/TimeUtils;->getString(Ljava/lang/String;Ljava/text/DateFormat;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/lang/String;Ljava/text/DateFormat;JI)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "timeSpan"    # J
    .param p4, "unit"    # I

    .line 870
    if-eqz p1, :cond_0

    .line 873
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v0

    invoke-static {p2, p3, p4}, Lcom/blankj/utilcode/util/TimeUtils;->timeSpan2Millis(JI)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Lcom/blankj/utilcode/util/TimeUtils;->millis2String(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 870
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getString(Ljava/util/Date;JI)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "timeSpan"    # J
    .param p3, "unit"    # I

    .line 895
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, v0, p1, p2, p3}, Lcom/blankj/utilcode/util/TimeUtils;->getString(Ljava/util/Date;Ljava/text/DateFormat;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getString(Ljava/util/Date;Ljava/text/DateFormat;JI)Ljava/lang/String;
    .locals 4
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "timeSpan"    # J
    .param p4, "unit"    # I

    .line 915
    if-eqz p1, :cond_0

    .line 918
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->date2Millis(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p2, p3, p4}, Lcom/blankj/utilcode/util/TimeUtils;->timeSpan2Millis(JI)J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Lcom/blankj/utilcode/util/TimeUtils;->millis2String(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 915
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#1 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getStringByNow(JI)Ljava/lang/String;
    .locals 1
    .param p0, "timeSpan"    # J
    .param p2, "unit"    # I

    .line 1042
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/TimeUtils;->getStringByNow(JLjava/text/DateFormat;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringByNow(JLjava/text/DateFormat;I)Ljava/lang/String;
    .locals 6
    .param p0, "timeSpan"    # J
    .param p2, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "unit"    # I

    .line 1061
    if-eqz p2, :cond_0

    .line 1063
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getNowMills()J

    move-result-wide v0

    move-object v2, p2

    move-wide v3, p0

    move v5, p3

    invoke-static/range {v0 .. v5}, Lcom/blankj/utilcode/util/TimeUtils;->getString(JLjava/text/DateFormat;JI)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1061
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTimeSpan(JJI)J
    .locals 2
    .param p0, "millis1"    # J
    .param p2, "millis2"    # J
    .param p4, "unit"    # I

    .line 303
    sub-long v0, p0, p2

    invoke-static {v0, v1, p4}, Lcom/blankj/utilcode/util/TimeUtils;->millis2TimeSpan(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimeSpan(Ljava/lang/String;Ljava/lang/String;I)J
    .locals 2
    .param p0, "time1"    # Ljava/lang/String;
    .param p1, "time2"    # Ljava/lang/String;
    .param p2, "unit"    # I

    .line 238
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lcom/blankj/utilcode/util/TimeUtils;->getTimeSpan(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimeSpan(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;I)J
    .locals 4
    .param p0, "time1"    # Ljava/lang/String;
    .param p1, "time2"    # Ljava/lang/String;
    .param p2, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "unit"    # I

    .line 259
    if-eqz p2, :cond_0

    .line 261
    invoke-static {p0, p2}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v0

    invoke-static {p1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p3}, Lcom/blankj/utilcode/util/TimeUtils;->millis2TimeSpan(JI)J

    move-result-wide v0

    return-wide v0

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#2 out of 4, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTimeSpan(Ljava/util/Date;Ljava/util/Date;I)J
    .locals 4
    .param p0, "date1"    # Ljava/util/Date;
    .param p1, "date2"    # Ljava/util/Date;
    .param p2, "unit"    # I

    .line 282
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->date2Millis(Ljava/util/Date;)J

    move-result-wide v0

    invoke-static {p1}, Lcom/blankj/utilcode/util/TimeUtils;->date2Millis(Ljava/util/Date;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->millis2TimeSpan(JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimeSpanByNow(JI)J
    .locals 2
    .param p0, "millis"    # J
    .param p2, "unit"    # I

    .line 508
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p0, p1, v0, v1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->getTimeSpan(JJI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimeSpanByNow(Ljava/lang/String;I)J
    .locals 2
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "unit"    # I

    .line 451
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getNowString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v1

    invoke-static {p0, v0, v1, p1}, Lcom/blankj/utilcode/util/TimeUtils;->getTimeSpan(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTimeSpanByNow(Ljava/lang/String;Ljava/text/DateFormat;I)J
    .locals 2
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "unit"    # I

    .line 470
    if-eqz p1, :cond_0

    .line 472
    invoke-static {p1}, Lcom/blankj/utilcode/util/TimeUtils;->getNowString(Ljava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1, p2}, Lcom/blankj/utilcode/util/TimeUtils;->getTimeSpan(Ljava/lang/String;Ljava/lang/String;Ljava/text/DateFormat;I)J

    move-result-wide v0

    return-wide v0

    .line 470
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getTimeSpanByNow(Ljava/util/Date;I)J
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "unit"    # I

    .line 490
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-static {p0, v0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->getTimeSpan(Ljava/util/Date;Ljava/util/Date;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getUSWeek(J)Ljava/lang/String;
    .locals 1
    .param p0, "millis"    # J

    .line 1263
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/blankj/utilcode/util/TimeUtils;->getUSWeek(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUSWeek(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "time"    # Ljava/lang/String;

    .line 1232
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/TimeUtils;->getUSWeek(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUSWeek(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1242
    if-eqz p1, :cond_0

    .line 1243
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/TimeUtils;->getUSWeek(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1242
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getUSWeek(Ljava/util/Date;)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .line 1253
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "EEEE"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getValueByCalendarField(I)I
    .locals 2
    .param p0, "field"    # I

    .line 1385
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1386
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getValueByCalendarField(JI)I
    .locals 2
    .param p0, "millis"    # J
    .param p2, "field"    # I

    .line 1464
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1465
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1466
    invoke-virtual {v0, p2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method public static getValueByCalendarField(Ljava/lang/String;I)I
    .locals 1
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "field"    # I

    .line 1405
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->getValueByCalendarField(Ljava/util/Date;I)I

    move-result v0

    return v0
.end method

.method public static getValueByCalendarField(Ljava/lang/String;Ljava/text/DateFormat;I)I
    .locals 2
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "field"    # I

    .line 1424
    if-eqz p1, :cond_0

    .line 1426
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/blankj/utilcode/util/TimeUtils;->getValueByCalendarField(Ljava/util/Date;I)I

    move-result v0

    return v0

    .line 1424
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getValueByCalendarField(Ljava/util/Date;I)I
    .locals 2
    .param p0, "date"    # Ljava/util/Date;
    .param p1, "field"    # I

    .line 1444
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1445
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1446
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    return v1
.end method

.method private static getWeeOfToday()J
    .locals 3

    .line 691
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 692
    .local v0, "cal":Ljava/util/Calendar;
    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 693
    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 694
    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 695
    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 696
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getZodiac(II)Ljava/lang/String;
    .locals 3
    .param p0, "month"    # I
    .param p1, "day"    # I

    .line 1586
    sget-object v0, Lcom/blankj/utilcode/util/TimeUtils;->ZODIAC:[Ljava/lang/String;

    sget-object v1, Lcom/blankj/utilcode/util/TimeUtils;->ZODIAC_FLAGS:[I

    add-int/lit8 v2, p0, -0x1

    aget v1, v1, v2

    if-lt p1, v1, :cond_0

    add-int/lit8 v1, p0, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v1, p0, 0xa

    rem-int/lit8 v1, v1, 0xc

    :goto_0
    aget-object v0, v0, v1

    return-object v0
.end method

.method public static getZodiac(J)Ljava/lang/String;
    .locals 1
    .param p0, "millis"    # J

    .line 1575
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->millis2Date(J)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/TimeUtils;->getZodiac(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getZodiac(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "time"    # Ljava/lang/String;

    .line 1540
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/TimeUtils;->getZodiac(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getZodiac(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1550
    if-eqz p1, :cond_0

    .line 1551
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/TimeUtils;->getZodiac(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1550
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getZodiac(Ljava/util/Date;)Ljava/lang/String;
    .locals 4
    .param p0, "date"    # Ljava/util/Date;

    .line 1561
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1562
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1563
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 1564
    .local v1, "month":I
    const/4 v2, 0x5

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 1565
    .local v2, "day":I
    invoke-static {v1, v2}, Lcom/blankj/utilcode/util/TimeUtils;->getZodiac(II)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static isAm()Z
    .locals 2

    .line 1272
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1273
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static isAm(J)Z
    .locals 1
    .param p0, "millis"    # J

    .line 1316
    const/16 v0, 0x9

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/TimeUtils;->getValueByCalendarField(JI)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAm(Ljava/lang/String;)Z
    .locals 2
    .param p0, "time"    # Ljava/lang/String;

    .line 1284
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {p0, v0, v1}, Lcom/blankj/utilcode/util/TimeUtils;->getValueByCalendarField(Ljava/lang/String;Ljava/text/DateFormat;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isAm(Ljava/lang/String;Ljava/text/DateFormat;)Z
    .locals 2
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1295
    if-eqz p1, :cond_1

    .line 1296
    const/16 v0, 0x9

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/TimeUtils;->getValueByCalendarField(Ljava/lang/String;Ljava/text/DateFormat;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1295
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isAm(Ljava/util/Date;)Z
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .line 1306
    const/16 v0, 0x9

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->getValueByCalendarField(Ljava/util/Date;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLeapYear(I)Z
    .locals 1
    .param p0, "year"    # I

    .line 1179
    rem-int/lit8 v0, p0, 0x4

    if-nez v0, :cond_0

    rem-int/lit8 v0, p0, 0x64

    if-nez v0, :cond_1

    :cond_0
    rem-int/lit16 v0, p0, 0x190

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isLeapYear(J)Z
    .locals 1
    .param p0, "millis"    # J

    .line 1169
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->millis2Date(J)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/TimeUtils;->isLeapYear(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public static isLeapYear(Ljava/lang/String;)Z
    .locals 1
    .param p0, "time"    # Ljava/lang/String;

    .line 1135
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/TimeUtils;->isLeapYear(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public static isLeapYear(Ljava/lang/String;Ljava/text/DateFormat;)Z
    .locals 2
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1145
    if-eqz p1, :cond_0

    .line 1146
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v0

    invoke-static {v0}, Lcom/blankj/utilcode/util/TimeUtils;->isLeapYear(Ljava/util/Date;)Z

    move-result v0

    return v0

    .line 1145
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isLeapYear(Ljava/util/Date;)Z
    .locals 3
    .param p0, "date"    # Ljava/util/Date;

    .line 1156
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1157
    .local v0, "cal":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 1158
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1159
    .local v1, "year":I
    invoke-static {v1}, Lcom/blankj/utilcode/util/TimeUtils;->isLeapYear(I)Z

    move-result v2

    return v2
.end method

.method public static isPm()Z
    .locals 1

    .line 1325
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->isAm()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isPm(J)Z
    .locals 1
    .param p0, "millis"    # J

    .line 1368
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->isAm(J)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isPm(Ljava/lang/String;)Z
    .locals 1
    .param p0, "time"    # Ljava/lang/String;

    .line 1336
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->isAm(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isPm(Ljava/lang/String;Ljava/text/DateFormat;)Z
    .locals 2
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1347
    if-eqz p1, :cond_0

    .line 1348
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->isAm(Ljava/lang/String;Ljava/text/DateFormat;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 1347
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isPm(Ljava/util/Date;)Z
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .line 1358
    invoke-static {p0}, Lcom/blankj/utilcode/util/TimeUtils;->isAm(Ljava/util/Date;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isToday(J)Z
    .locals 4
    .param p0, "millis"    # J

    .line 1123
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getWeeOfToday()J

    move-result-wide v0

    .line 1124
    .local v0, "wee":J
    cmp-long v2, p0, v0

    if-ltz v2, :cond_0

    const-wide/32 v2, 0x5265c00

    add-long/2addr v2, v0

    cmp-long v2, p0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static isToday(Ljava/lang/String;)Z
    .locals 2
    .param p0, "time"    # Ljava/lang/String;

    .line 1092
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/TimeUtils;->isToday(J)Z

    move-result v0

    return v0
.end method

.method public static isToday(Ljava/lang/String;Ljava/text/DateFormat;)Z
    .locals 2
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1102
    if-eqz p1, :cond_0

    .line 1103
    invoke-static {p0, p1}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/TimeUtils;->isToday(J)Z

    move-result v0

    return v0

    .line 1102
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isToday(Ljava/util/Date;)Z
    .locals 2
    .param p0, "date"    # Ljava/util/Date;

    .line 1113
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/blankj/utilcode/util/TimeUtils;->isToday(J)Z

    move-result v0

    return v0
.end method

.method public static millis2Date(J)Ljava/util/Date;
    .locals 1
    .param p0, "millis"    # J

    .line 216
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method static millis2FitTimeSpan(JI)Ljava/lang/String;
    .locals 9
    .param p0, "millis"    # J
    .param p2, "precision"    # I

    .line 1600
    if-gtz p2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 1601
    :cond_0
    const/4 v0, 0x5

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1602
    const-string v1, "\u5929"

    const-string v2, "\u5c0f\u65f6"

    const-string v3, "\u5206\u949f"

    const-string v4, "\u79d2"

    const-string v5, "\u6beb\u79d2"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 1603
    .local v1, "units":[Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v4, p0, v2

    const/4 v5, 0x0

    if-nez v4, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v2, p2, -0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1604
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 1605
    .local v4, "sb":Ljava/lang/StringBuilder;
    cmp-long v2, p0, v2

    if-gez v2, :cond_2

    .line 1606
    const-string v2, "-"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1607
    neg-long p0, p0

    .line 1609
    :cond_2
    new-array v0, v0, [I

    fill-array-data v0, :array_0

    .line 1610
    .local v0, "unitLen":[I
    nop

    .local v5, "i":I
    :goto_0
    move v2, v5

    .end local v5    # "i":I
    .local v2, "i":I
    if-ge v2, p2, :cond_4

    .line 1611
    aget v3, v0, v2

    int-to-long v5, v3

    cmp-long v3, p0, v5

    if-ltz v3, :cond_3

    .line 1612
    aget v3, v0, v2

    int-to-long v5, v3

    div-long v5, p0, v5

    .line 1613
    .local v5, "mode":J
    aget v3, v0, v2

    int-to-long v7, v3

    mul-long/2addr v7, v5

    sub-long/2addr p0, v7

    .line 1614
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    aget-object v3, v1, v2

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1610
    .end local v5    # "mode":J
    :cond_3
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "i":I
    .local v5, "i":I
    goto :goto_0

    .line 1617
    .end local v5    # "i":I
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    nop

    :array_0
    .array-data 4
        0x5265c00
        0x36ee80
        0xea60
        0x3e8
        0x1
    .end array-data
.end method

.method public static millis2String(J)Ljava/lang/String;
    .locals 1
    .param p0, "millis"    # J

    .line 65
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/TimeUtils;->millis2String(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static millis2String(JLjava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "millis"    # J
    .param p2, "pattern"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 75
    if-eqz p2, :cond_0

    .line 76
    invoke-static {p2}, Lcom/blankj/utilcode/util/TimeUtils;->getSafeDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/blankj/utilcode/util/TimeUtils;->millis2String(JLjava/text/DateFormat;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pattern\' of type String (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static millis2String(JLjava/text/DateFormat;)Ljava/lang/String;
    .locals 2
    .param p0, "millis"    # J
    .param p2, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 86
    if-eqz p2, :cond_0

    .line 87
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p2, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static millis2TimeSpan(JI)J
    .locals 2
    .param p0, "millis"    # J
    .param p2, "unit"    # I

    .line 1596
    int-to-long v0, p2

    div-long v0, p0, v0

    return-wide v0
.end method

.method public static string2Date(Ljava/lang/String;)Ljava/util/Date;
    .locals 1
    .param p0, "time"    # Ljava/lang/String;

    .line 136
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public static string2Date(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 146
    if-eqz p1, :cond_0

    .line 147
    invoke-static {p1}, Lcom/blankj/utilcode/util/TimeUtils;->getSafeDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;

    move-result-object v0

    return-object v0

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pattern\' of type String (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static string2Date(Ljava/lang/String;Ljava/text/DateFormat;)Ljava/util/Date;
    .locals 2
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 157
    if-eqz p1, :cond_0

    .line 159
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 163
    .end local v0    # "e":Ljava/text/ParseException;
    const/4 v0, 0x0

    return-object v0

    .line 157
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static string2Millis(Ljava/lang/String;)J
    .locals 2
    .param p0, "time"    # Ljava/lang/String;

    .line 98
    invoke-static {}, Lcom/blankj/utilcode/util/TimeUtils;->getDefaultFormat()Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static string2Millis(Ljava/lang/String;Ljava/lang/String;)J
    .locals 2
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 108
    if-eqz p1, :cond_0

    .line 109
    invoke-static {p1}, Lcom/blankj/utilcode/util/TimeUtils;->getSafeDateFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/blankj/utilcode/util/TimeUtils;->string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J

    move-result-wide v0

    return-wide v0

    .line 108
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'pattern\' of type String (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static string2Millis(Ljava/lang/String;Ljava/text/DateFormat;)J
    .locals 2
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "format"    # Ljava/text/DateFormat;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 119
    if-eqz p1, :cond_0

    .line 121
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 125
    .end local v0    # "e":Ljava/text/ParseException;
    const-wide/16 v0, -0x1

    return-wide v0

    .line 119
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Argument \'format\' of type DateFormat (#1 out of 2, zero-based) is marked by @androidx.annotation.NonNull but got null for it"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static timeSpan2Millis(JI)J
    .locals 2
    .param p0, "timeSpan"    # J
    .param p2, "unit"    # I

    .line 1592
    int-to-long v0, p2

    mul-long/2addr v0, p0

    return-wide v0
.end method
