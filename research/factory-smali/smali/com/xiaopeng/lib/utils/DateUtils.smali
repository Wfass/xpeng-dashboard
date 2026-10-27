.class public Lcom/xiaopeng/lib/utils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static sBirthdaySimpleFormat:Ljava/text/SimpleDateFormat;

.field private static sDailySimpleFormat:Ljava/text/SimpleDateFormat;

.field private static sMonthlySimpleFormat:Ljava/text/SimpleDateFormat;

.field private static sSimpleFormat1:Ljava/text/SimpleDateFormat;

.field private static sSimpleFormat10:Ljava/text/SimpleDateFormat;

.field private static sSimpleFormat2:Ljava/text/SimpleDateFormat;

.field private static sSimpleFormat3:Ljava/text/SimpleDateFormat;

.field private static sSimpleFormat4:Ljava/text/SimpleDateFormat;

.field private static sSimpleFormat5:Ljava/text/SimpleDateFormat;

.field private static sSimpleFormat6:Ljava/text/SimpleDateFormat;

.field private static sSimpleFormat7:Ljava/text/SimpleDateFormat;

.field private static sSimpleFormat8:Ljava/text/SimpleDateFormat;

.field private static sSimpleFormat9:Ljava/text/SimpleDateFormat;

.field private static sTimeSimpleFormat:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM.dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sDailySimpleFormat:Ljava/text/SimpleDateFormat;

    .line 12
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sMonthlySimpleFormat:Ljava/text/SimpleDateFormat;

    .line 13
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM.dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat1:Ljava/text/SimpleDateFormat;

    .line 14
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM\u6708dd\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat2:Ljava/text/SimpleDateFormat;

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat3:Ljava/text/SimpleDateFormat;

    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat4:Ljava/text/SimpleDateFormat;

    .line 17
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat5:Ljava/text/SimpleDateFormat;

    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sTimeSimpleFormat:Ljava/text/SimpleDateFormat;

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sBirthdaySimpleFormat:Ljava/text/SimpleDateFormat;

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat6:Ljava/text/SimpleDateFormat;

    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat7:Ljava/text/SimpleDateFormat;

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat8:Ljava/text/SimpleDateFormat;

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd  HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat9:Ljava/text/SimpleDateFormat;

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat10:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dateInterval(JJ)I
    .locals 18
    .param p0, "date1"    # J
    .param p2, "date2"    # J

    .line 283
    cmp-long v4, p2, p0

    if-lez v4, :cond_0

    .line 284
    add-long v2, p2, p0

    .line 285
    .end local p2    # "date2":J
    .local v2, "date2":J
    sub-long v0, v2, p0

    .line 286
    .end local p0    # "date1":J
    .local v0, "date1":J
    sub-long/2addr v2, v0

    goto :goto_0

    .line 295
    .end local v0    # "date1":J
    .end local v2    # "date2":J
    .restart local p0    # "date1":J
    .restart local p2    # "date2":J
    :cond_0
    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    .end local p0    # "date1":J
    .end local p2    # "date2":J
    .restart local v0    # "date1":J
    .restart local v2    # "date2":J
    :goto_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    .line 296
    .local v4, "calendar1":Ljava/util/Calendar;
    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 298
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 299
    .local v11, "calendar2":Ljava/util/Calendar;
    invoke-virtual {v11, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 301
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 302
    .local v12, "y1":I
    invoke-virtual {v11, v5}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 304
    .local v13, "y2":I
    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 305
    .local v14, "d1":I
    invoke-virtual {v11, v5}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 306
    .local v15, "d2":I
    const/16 v16, 0x0

    .line 307
    .local v16, "maxDays":I
    const/16 v17, 0x0

    .line 308
    .local v17, "day":I
    sub-int v5, v12, v13

    if-lez v5, :cond_1

    .line 309
    move/from16 v5, v16

    move v6, v14

    move v7, v15

    move v8, v12

    move v9, v13

    move-object v10, v11

    invoke-static/range {v5 .. v10}, Lcom/xiaopeng/lib/utils/DateUtils;->numerical(IIIIILjava/util/Calendar;)I

    move-result v5

    .end local v17    # "day":I
    .local v5, "day":I
    :goto_1
    goto :goto_2

    .line 311
    .end local v5    # "day":I
    .restart local v17    # "day":I
    :cond_1
    sub-int v5, v14, v15

    goto :goto_1

    .line 313
    .end local v17    # "day":I
    .restart local v5    # "day":I
    :goto_2
    return v5
.end method

.method public static declared-synchronized dateToStamp(Ljava/lang/String;)J
    .locals 6
    .param p0, "dateStr"    # Ljava/lang/String;

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 79
    const-wide/16 v1, 0x0

    .line 80
    .local v1, "stamp":J
    const/4 v3, 0x0

    .line 82
    .local v3, "date":Ljava/util/Date;
    :try_start_0
    sget-object v4, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat10:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    move-object v3, v4

    .line 83
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v1, v4

    .line 86
    goto :goto_0

    .line 78
    .end local v1    # "stamp":J
    .end local v3    # "date":Ljava/util/Date;
    .end local p0    # "dateStr":Ljava/lang/String;
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 84
    .restart local v1    # "stamp":J
    .restart local v3    # "date":Ljava/util/Date;
    .restart local p0    # "dateStr":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 85
    .local v4, "e":Ljava/text/ParseException;
    :try_start_1
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    .end local v4    # "e":Ljava/text/ParseException;
    :goto_0
    monitor-exit v0

    return-wide v1

    .line 78
    .end local v1    # "stamp":J
    .end local v3    # "date":Ljava/util/Date;
    .end local p0    # "dateStr":Ljava/lang/String;
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized formatDate1(J)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # J

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 27
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat1:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .end local p0    # "date":J
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized formatDate10(J)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # J

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat10:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .end local p0    # "date":J
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized formatDate2(J)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # J

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 31
    :try_start_0
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 32
    const-string v1, "\u4eca\u5929"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 33
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/DateUtils;->isYesterday(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 34
    const-string v1, "\u6628\u5929"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 37
    :cond_1
    :try_start_2
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat2:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 30
    .end local p0    # "date":J
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized formatDate3(J)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # J

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 41
    :try_start_0
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const-string v1, "\u4eca\u5929"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 43
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/DateUtils;->isYesterday(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    const-string v1, "\u6628\u5929"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 47
    :cond_1
    :try_start_2
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat3:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object v1

    .line 40
    .end local p0    # "date":J
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized formatDate4(J)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # J

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 51
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sBirthdaySimpleFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .end local p0    # "date":J
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized formatDate5(J)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # J

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 55
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat5:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .end local p0    # "date":J
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized formatDate6(J)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # J

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat6:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .end local p0    # "date":J
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized formatDate7(J)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # J

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat7:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .end local p0    # "date":J
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized formatDate8(J)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # J

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat8:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .end local p0    # "date":J
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized formatDate9(J)Ljava/lang/String;
    .locals 3
    .param p0, "date"    # J

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat9:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .end local p0    # "date":J
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getAccuracyToDay(J)J
    .locals 3
    .param p0, "collectTime"    # J

    .line 236
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 237
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 238
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 239
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 240
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 241
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 242
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getAccuracyToHour(J)J
    .locals 3
    .param p0, "collectTime"    # J

    .line 227
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 228
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 229
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 230
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 231
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 232
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getBeforeAndAfterHalfHour(Ljava/util/Date;)Ljava/util/List;
    .locals 5
    .param p0, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List<",
            "Ljava/util/Date;",
            ">;"
        }
    .end annotation

    .line 262
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 263
    .local v0, "dateList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 264
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 265
    const/16 v2, 0xc

    const/16 v3, -0x1e

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 266
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 267
    .local v3, "startDate":Ljava/util/Date;
    const/16 v4, 0x3c

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 268
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 269
    .local v2, "endDate":Ljava/util/Date;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    return-object v0
.end method

.method public static declared-synchronized getBirthdayFormatString(J)Ljava/lang/String;
    .locals 3
    .param p0, "calendar"    # J

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 127
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sBirthdaySimpleFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .end local p0    # "calendar":J
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getBirthdayParseString(Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "calendar"    # Ljava/lang/String;

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 132
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sBirthdaySimpleFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 131
    .end local p0    # "calendar":Ljava/lang/String;
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 133
    .restart local p0    # "calendar":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 134
    .local v1, "e":Ljava/text/ParseException;
    :try_start_1
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 136
    .end local v1    # "e":Ljava/text/ParseException;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 131
    .end local p0    # "calendar":Ljava/lang/String;
    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDailyFormatString(J)Ljava/lang/String;
    .locals 3
    .param p0, "calendar"    # J

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 119
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sDailySimpleFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .end local p0    # "calendar":J
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDailyFormatString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .param p0, "calendar"    # Ljava/util/Calendar;

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 123
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sDailySimpleFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .end local p0    # "calendar":Ljava/util/Calendar;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getDayBeginTimeInMillis(J)J
    .locals 3
    .param p0, "timeInMillis"    # J

    .line 91
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 92
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 93
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 94
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 95
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 96
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 97
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getEndOfDay(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 110
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 111
    .local v0, "end":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 112
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 113
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 114
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 115
    return-object v0
.end method

.method public static getEndOfMonth(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 208
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 209
    .local v0, "end":Ljava/util/Calendar;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 210
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 211
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 212
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 213
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 214
    return-object v0
.end method

.method public static getMondayOfWeek(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 4
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 159
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 160
    .local v0, "monday":Ljava/util/Calendar;
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 161
    .local v1, "day_of_week":I
    if-nez v1, :cond_0

    .line 162
    const/4 v1, 0x7

    .line 164
    :cond_0
    const/4 v2, 0x5

    neg-int v3, v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 165
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 166
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 167
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 168
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 169
    return-object v0
.end method

.method public static declared-synchronized getMonthlyFormatString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .param p0, "calendar"    # Ljava/util/Calendar;

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 218
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sMonthlySimpleFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .end local p0    # "calendar":Ljava/util/Calendar;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getSomeMinuteAfter(Ljava/util/Calendar;I)Ljava/util/Date;
    .locals 2
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "minute"    # I

    .line 256
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 257
    .local v0, "end":Ljava/util/Calendar;
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 258
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getSomeMinuteAgo(Ljava/util/Calendar;I)J
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "minute"    # I

    .line 250
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 251
    .local v0, "end":Ljava/util/Calendar;
    const/4 v1, -0x1

    mul-int/2addr v1, p1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 252
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getStartOfDay(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 101
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 102
    .local v0, "start":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 103
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 104
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 105
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 106
    return-object v0
.end method

.method public static getStartOfMonth(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 198
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 199
    .local v0, "begin":Ljava/util/Calendar;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 200
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 201
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 202
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 203
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 204
    return-object v0
.end method

.method public static getSundayOfWeek(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 5
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 173
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 174
    .local v0, "sunday":Ljava/util/Calendar;
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 175
    .local v2, "day_of_week":I
    if-nez v2, :cond_0

    .line 176
    const/4 v2, 0x7

    .line 178
    :cond_0
    const/4 v3, 0x5

    neg-int v4, v2

    add-int/2addr v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 179
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 180
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 181
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 182
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 183
    return-object v0
.end method

.method public static declared-synchronized getTimeFormatString(J)Ljava/lang/String;
    .locals 3
    .param p0, "time"    # J

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 246
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sTimeSimpleFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .end local p0    # "time":J
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getWeeklyFormatString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 7
    .param p0, "calendar"    # Ljava/util/Calendar;

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 187
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/DateUtils;->getMondayOfWeek(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 188
    .local v1, "monday":Ljava/util/Calendar;
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/DateUtils;->getSundayOfWeek(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    .line 189
    .local v2, "sunday":Ljava/util/Calendar;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/xiaopeng/lib/utils/DateUtils;->sDailySimpleFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/xiaopeng/lib/utils/DateUtils;->sDailySimpleFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v3

    .line 186
    .end local v1    # "monday":Ljava/util/Calendar;
    .end local v2    # "sunday":Ljava/util/Calendar;
    .end local p0    # "calendar":Ljava/util/Calendar;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static isThisMonth(Ljava/util/Calendar;)Z
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 222
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    .line 223
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 222
    :goto_0
    return v2
.end method

.method public static isThisWeek(Ljava/util/Calendar;)Z
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 193
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    .line 194
    invoke-virtual {p0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 193
    :goto_0
    return v2
.end method

.method public static isToday(J)Z
    .locals 5
    .param p0, "timeInMillis"    # J

    .line 145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 146
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 147
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 148
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 147
    :goto_0
    return v1
.end method

.method public static isToday(Ljava/util/Calendar;)Z
    .locals 4
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 140
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 141
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 140
    :goto_0
    return v0
.end method

.method public static isYesterday(J)Z
    .locals 5
    .param p0, "timeInMillis"    # J

    .line 152
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 153
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 154
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 155
    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    sub-int/2addr v2, v1

    if-ne v3, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 154
    :goto_0
    return v1
.end method

.method public static numerical(IIIIILjava/util/Calendar;)I
    .locals 9
    .param p0, "maxDays"    # I
    .param p1, "d1"    # I
    .param p2, "d2"    # I
    .param p3, "y1"    # I
    .param p4, "y2"    # I
    .param p5, "calendar"    # Ljava/util/Calendar;

    .line 332
    sub-int v0, p1, p2

    .line 333
    .local v0, "day":I
    sub-int v1, p3, p4

    .line 334
    .local v1, "betweenYears":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 336
    .local v2, "d366":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x6

    invoke-virtual {p5, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    const/16 v5, 0x16e

    if-ne v4, v5, :cond_0

    .line 338
    add-int/lit8 v0, v0, 0x1

    .line 341
    :cond_0
    const/4 v4, 0x0

    move v6, v0

    move v0, p0

    move p0, v4

    .local v0, "maxDays":I
    .local v6, "day":I
    .local p0, "i":I
    :goto_0
    const/4 v7, 0x1

    if-ge p0, v1, :cond_3

    .line 343
    invoke-virtual {p5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {p5, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 344
    invoke-virtual {p5, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 346
    if-eq v0, v5, :cond_1

    .line 347
    add-int/2addr v6, v0

    goto :goto_1

    .line 349
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    :goto_1
    add-int/lit8 v8, v1, -0x1

    if-ne p0, v8, :cond_2

    if-le v1, v7, :cond_2

    if-ne v0, v5, :cond_2

    .line 353
    add-int/lit8 v6, v6, -0x1

    .line 341
    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 356
    .end local p0    # "i":I
    :cond_3
    nop

    .local v4, "i":I
    :goto_2
    move p0, v4

    .end local v4    # "i":I
    .restart local p0    # "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge p0, v3, :cond_5

    .line 358
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v7, :cond_4

    .line 359
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v6, v3

    .line 356
    :cond_4
    add-int/lit8 v4, p0, 0x1

    .end local p0    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 362
    .end local v4    # "i":I
    :cond_5
    return v6
.end method
