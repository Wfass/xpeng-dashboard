.class public Lcom/android/car/utils/DateUtil;
.super Ljava/lang/Object;
.source "DateUtil.java"


# static fields
.field public static final SIMPLE_DATE_FORMAT_HH_MM:Ljava/lang/String; = "HH:mm"

.field public static final SIMPLE_DATE_FORMAT_yyyyMMddHHmmss:Ljava/lang/String; = "yyyy\u5e74MM\u6708dd\u65e5 HH:mm:ss"

.field private static final TAG:Ljava/lang/String; = "DateUtil"

.field public static sFormat_HHmm:Ljava/text/SimpleDateFormat;

.field public static sFormat_yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/car/utils/DateUtil;->sFormat_yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/car/utils/DateUtil;->sFormat_HHmm:Ljava/text/SimpleDateFormat;

    .line 26
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calcHHmmString(JJ)Ljava/lang/String;
    .locals 3
    .param p0, "timestamp"    # J
    .param p2, "ms"    # J

    .line 83
    new-instance v0, Ljava/util/Date;

    add-long v1, p0, p2

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-static {v0}, Lcom/android/car/utils/DateUtil;->parseDateHHmmString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static calcHHmmString(Ljava/lang/String;J)Ljava/lang/String;
    .locals 3
    .param p0, "HHmm"    # Ljava/lang/String;
    .param p1, "ms"    # J

    .line 77
    invoke-static {p0, p1, p2}, Lcom/android/car/utils/DateUtil;->calcHHmmTimestamp(Ljava/lang/String;J)J

    move-result-wide v0

    .line 78
    .local v0, "timestamp":J
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-static {v2}, Lcom/android/car/utils/DateUtil;->parseDateHHmmString(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static calcHHmmTimestamp(JJ)J
    .locals 3
    .param p0, "timestamp"    # J
    .param p2, "ms"    # J

    .line 97
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 98
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 99
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    add-long/2addr v1, p2

    return-wide v1
.end method

.method public static calcHHmmTimestamp(Ljava/lang/String;J)J
    .locals 3
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "ms"    # J

    .line 88
    invoke-static {p0}, Lcom/android/car/utils/DateUtil;->parseHHmmToCalendar(Ljava/lang/String;)Ljava/util/Calendar;

    move-result-object v0

    .line 89
    .local v0, "calendar":Ljava/util/Calendar;
    if-nez v0, :cond_0

    .line 90
    const-wide/16 v1, -0x1

    return-wide v1

    .line 92
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    add-long/2addr v1, p1

    return-wide v1
.end method

.method public static formatDateHHmm(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .line 131
    sget-object v0, Lcom/android/car/utils/DateUtil;->sFormat_HHmm:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static formatDateYMDMHS(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .line 127
    sget-object v0, Lcom/android/car/utils/DateUtil;->sFormat_yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAlarmTimeYMDMHS(JI)Ljava/lang/String;
    .locals 4
    .param p0, "timestamp"    # J
    .param p2, "whenWeek"    # I

    .line 120
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 121
    .local v0, "when":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 122
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 123
    sget-object v1, Lcom/android/car/utils/DateUtil;->sFormat_yyyyMMddHHmmss:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getAlarmTimestamp(JI)J
    .locals 3
    .param p0, "timestamp"    # J
    .param p2, "whenWeek"    # I

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 109
    .local v0, "when":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 110
    const/4 v1, 0x7

    invoke-virtual {v0, v1, p2}, Ljava/util/Calendar;->set(II)V

    .line 111
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getBitValue(II)I
    .locals 2
    .param p0, "value"    # I
    .param p1, "pos"    # I

    .line 136
    const/4 v0, 0x1

    shl-int v1, v0, p1

    and-int/2addr v1, p0

    if-nez v1, :cond_0

    .line 137
    const/4 v0, 0x0

    return v0

    .line 139
    :cond_0
    return v0
.end method

.method public static getNowTime()Ljava/lang/String;
    .locals 7

    .line 34
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 35
    .local v0, "timeOld":J
    const-wide/32 v2, 0xea60

    div-long/2addr v0, v2

    .line 36
    const-wide/16 v2, 0x3c

    rem-long v4, v0, v2

    long-to-int v4, v4

    .line 37
    .local v4, "min":I
    div-long/2addr v0, v2

    .line 38
    const-wide/16 v2, 0x8

    add-long/2addr v2, v0

    const-wide/16 v5, 0x18

    rem-long/2addr v2, v5

    long-to-int v2, v2

    .line 39
    .local v2, "hour":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static parseDateHHmmString(Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # Ljava/util/Date;

    .line 57
    sget-object v0, Lcom/android/car/utils/DateUtil;->sFormat_HHmm:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static parseHHmmToCalendar(Ljava/lang/String;)Ljava/util/Calendar;
    .locals 4
    .param p0, "HHmm"    # Ljava/lang/String;

    .line 63
    :try_start_0
    sget-object v0, Lcom/android/car/utils/DateUtil;->sFormat_HHmm:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 64
    .local v0, "date":Ljava/util/Date;
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 65
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 66
    const/16 v2, 0xb

    invoke-virtual {v0}, Ljava/util/Date;->getHours()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 67
    const/16 v2, 0xc

    invoke-virtual {v0}, Ljava/util/Date;->getMinutes()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    return-object v1

    .line 69
    .end local v0    # "date":Ljava/util/Date;
    .end local v1    # "calendar":Ljava/util/Calendar;
    :catch_0
    move-exception v0

    .line 70
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 72
    .end local v0    # "e":Ljava/text/ParseException;
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parseTimeToDate(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "time"    # Ljava/lang/String;
    .param p1, "pattern"    # Ljava/lang/String;

    .line 46
    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 47
    .local v0, "format":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 48
    .end local v0    # "format":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/text/ParseException;
    invoke-virtual {v0}, Ljava/text/ParseException;->printStackTrace()V

    .line 51
    .end local v0    # "e":Ljava/text/ParseException;
    const/4 v0, 0x0

    return-object v0
.end method
