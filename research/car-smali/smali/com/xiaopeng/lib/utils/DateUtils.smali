.class public Lcom/xiaopeng/lib/utils/DateUtils;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static sBirthdaySimpleFormat:Ljava/text/SimpleDateFormat;

.field private static sDailySimpleFormat:Ljava/text/SimpleDateFormat;

.field private static sMonthlySimpleFormat:Ljava/text/SimpleDateFormat;

.field private static sSimpleFormat1:Ljava/text/SimpleDateFormat;

.field private static sSimpleFormat10:Ljava/text/SimpleDateFormat;

.field private static sSimpleFormat11:Ljava/text/SimpleDateFormat;

.field private static sSimpleFormat12:Ljava/text/SimpleDateFormat;

.field private static sSimpleFormat13:Ljava/text/SimpleDateFormat;

.field private static sSimpleFormat14:Ljava/text/SimpleDateFormat;

.field private static sSimpleFormat15:Ljava/text/SimpleDateFormat;

.field private static sSimpleFormat16:Ljava/text/SimpleDateFormat;

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

    .line 12
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM.dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sDailySimpleFormat:Ljava/text/SimpleDateFormat;

    .line 13
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sMonthlySimpleFormat:Ljava/text/SimpleDateFormat;

    .line 14
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM.dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat1:Ljava/text/SimpleDateFormat;

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM\u6708dd\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat2:Ljava/text/SimpleDateFormat;

    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat3:Ljava/text/SimpleDateFormat;

    .line 17
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat4:Ljava/text/SimpleDateFormat;

    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat5:Ljava/text/SimpleDateFormat;

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sTimeSimpleFormat:Ljava/text/SimpleDateFormat;

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sBirthdaySimpleFormat:Ljava/text/SimpleDateFormat;

    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat6:Ljava/text/SimpleDateFormat;

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat7:Ljava/text/SimpleDateFormat;

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat8:Ljava/text/SimpleDateFormat;

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd  HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat9:Ljava/text/SimpleDateFormat;

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat10:Ljava/text/SimpleDateFormat;

    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat11:Ljava/text/SimpleDateFormat;

    .line 28
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MMM yyyy"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat12:Ljava/text/SimpleDateFormat;

    .line 30
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd MMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat13:Ljava/text/SimpleDateFormat;

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "dd.MMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat14:Ljava/text/SimpleDateFormat;

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "E,dd MMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat15:Ljava/text/SimpleDateFormat;

    .line 34
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "E,dd.MMM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat16:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dateInterval(JJ)I
    .locals 18
    .param p0, "date1"    # J
    .param p2, "date2"    # J

    .line 295
    cmp-long v4, p2, p0

    if-lez v4, :cond_0

    .line 296
    add-long v2, p2, p0

    .line 297
    .end local p2    # "date2":J
    .local v2, "date2":J
    sub-long v0, v2, p0

    .line 298
    .end local p0    # "date1":J
    .local v0, "date1":J
    sub-long/2addr v2, v0

    goto :goto_0

    .line 307
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

    .line 308
    .local v4, "calendar1":Ljava/util/Calendar;
    invoke-virtual {v4, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 310
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 311
    .local v11, "calendar2":Ljava/util/Calendar;
    invoke-virtual {v11, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 313
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v12

    .line 314
    .local v12, "y1":I
    invoke-virtual {v11, v5}, Ljava/util/Calendar;->get(I)I

    move-result v13

    .line 316
    .local v13, "y2":I
    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v14

    .line 317
    .local v14, "d1":I
    invoke-virtual {v11, v5}, Ljava/util/Calendar;->get(I)I

    move-result v15

    .line 318
    .local v15, "d2":I
    const/16 v16, 0x0

    .line 319
    .local v16, "maxDays":I
    const/16 v17, 0x0

    .line 320
    .local v17, "day":I
    sub-int v5, v12, v13

    if-lez v5, :cond_1

    .line 321
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

    .line 323
    .end local v5    # "day":I
    .restart local v17    # "day":I
    :cond_1
    sub-int v5, v14, v15

    goto :goto_1

    .line 325
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

    .line 91
    const-wide/16 v1, 0x0

    .line 92
    .local v1, "stamp":J
    const/4 v3, 0x0

    .line 94
    .local v3, "date":Ljava/util/Date;
    :try_start_0
    sget-object v4, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat10:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    move-object v3, v4

    .line 95
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v4
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-wide v1, v4

    .line 98
    goto :goto_0

    .line 90
    .end local v1    # "stamp":J
    .end local v3    # "date":Ljava/util/Date;
    .end local p0    # "dateStr":Ljava/lang/String;
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 96
    .restart local v1    # "stamp":J
    .restart local v3    # "date":Ljava/util/Date;
    .restart local p0    # "dateStr":Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 97
    .local v4, "e":Ljava/text/ParseException;
    :try_start_1
    invoke-virtual {v4}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    .end local v4    # "e":Ljava/text/ParseException;
    :goto_0
    monitor-exit v0

    return-wide v1

    .line 90
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

    .line 39
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

    .line 87
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

    .line 43
    :try_start_0
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 44
    const-string v1, "\u4eca\u5929"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 45
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/DateUtils;->isYesterday(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 46
    const-string v1, "\u6628\u5929"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 49
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

    .line 42
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

    .line 53
    :try_start_0
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    const-string v1, "\u4eca\u5929"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 55
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/DateUtils;->isYesterday(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    const-string v1, "\u6628\u5929"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 59
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

    .line 52
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

    .line 63
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

    .line 67
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

    .line 71
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

    .line 75
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

    .line 79
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

    .line 83
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

    .line 248
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 249
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 250
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 251
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 252
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 253
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 254
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getAccuracyToHour(J)J
    .locals 3
    .param p0, "collectTime"    # J

    .line 239
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 240
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 241
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 242
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 243
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 244
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

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 275
    .local v0, "dateList":Ljava/util/List;, "Ljava/util/List<Ljava/util/Date;>;"
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 276
    .local v1, "calendar":Ljava/util/Calendar;
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 277
    const/16 v2, 0xc

    const/16 v3, -0x1e

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 278
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    .line 279
    .local v3, "startDate":Ljava/util/Date;
    const/16 v4, 0x3c

    invoke-virtual {v1, v2, v4}, Ljava/util/Calendar;->add(II)V

    .line 280
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    .line 281
    .local v2, "endDate":Ljava/util/Date;
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    return-object v0
.end method

.method public static declared-synchronized getBirthdayFormatString(J)Ljava/lang/String;
    .locals 3
    .param p0, "calendar"    # J

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 139
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

    .line 144
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sBirthdaySimpleFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 143
    .end local p0    # "calendar":Ljava/lang/String;
    :catchall_0
    move-exception p0

    goto :goto_0

    .line 145
    .restart local p0    # "calendar":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 146
    .local v1, "e":Ljava/text/ParseException;
    :try_start_1
    invoke-virtual {v1}, Ljava/text/ParseException;->printStackTrace()V

    .line 148
    .end local v1    # "e":Ljava/text/ParseException;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object v1

    .line 143
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

    .line 131
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

    .line 135
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

    .line 103
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 104
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 106
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    .line 109
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getEndOfDay(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 122
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 123
    .local v0, "end":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 124
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 125
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 126
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 127
    return-object v0
.end method

.method public static getEndOfMonth(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 220
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 221
    .local v0, "end":Ljava/util/Calendar;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 222
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 223
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 224
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 225
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 226
    return-object v0
.end method

.method public static getMondayOfWeek(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 4
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 171
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 172
    .local v0, "monday":Ljava/util/Calendar;
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 173
    .local v1, "day_of_week":I
    if-nez v1, :cond_0

    .line 174
    const/4 v1, 0x7

    .line 176
    :cond_0
    const/4 v2, 0x5

    neg-int v3, v1

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 177
    const/16 v2, 0xb

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 178
    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 179
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 180
    const/16 v2, 0xe

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 181
    return-object v0
.end method

.method public static getMonthAndDayFormatString(Ljava/util/Locale;J)Ljava/lang/String;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "data"    # J

    .line 404
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x833

    if-eq v1, v2, :cond_1

    const/16 v2, 0x881

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "DE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "AT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 409
    sget-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat13:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 407
    :pswitch_0
    sget-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat14:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getMonthlyFormatString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4
    .param p0, "calendar"    # Ljava/util/Calendar;

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 230
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

    .line 268
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 269
    .local v0, "end":Ljava/util/Calendar;
    const/16 v1, 0xc

    invoke-virtual {v0, v1, p1}, Ljava/util/Calendar;->add(II)V

    .line 270
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    return-object v1
.end method

.method public static getSomeMinuteAgo(Ljava/util/Calendar;I)J
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;
    .param p1, "minute"    # I

    .line 262
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 263
    .local v0, "end":Ljava/util/Calendar;
    const/4 v1, -0x1

    mul-int/2addr v1, p1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->add(II)V

    .line 264
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    return-wide v1
.end method

.method public static getStartOfDay(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 113
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 114
    .local v0, "start":Ljava/util/Calendar;
    const/16 v1, 0xb

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 115
    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 116
    const/16 v1, 0xd

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 117
    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 118
    return-object v0
.end method

.method public static getStartOfMonth(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 210
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 211
    .local v0, "begin":Ljava/util/Calendar;
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 212
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 213
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 214
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 215
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 216
    return-object v0
.end method

.method public static getSundayOfWeek(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 5
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 185
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 186
    .local v0, "sunday":Ljava/util/Calendar;
    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 187
    .local v2, "day_of_week":I
    if-nez v2, :cond_0

    .line 188
    const/4 v2, 0x7

    .line 190
    :cond_0
    const/4 v3, 0x5

    neg-int v4, v2

    add-int/2addr v4, v1

    invoke-virtual {v0, v3, v4}, Ljava/util/Calendar;->add(II)V

    .line 191
    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 192
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 193
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 194
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    invoke-virtual {v0, v1, v3}, Ljava/util/Calendar;->set(II)V

    .line 195
    return-object v0
.end method

.method public static declared-synchronized getTimeFormatString(J)Ljava/lang/String;
    .locals 3
    .param p0, "time"    # J

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 258
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

.method public static getWeekAndMonthAndDayFormatString(Ljava/util/Locale;J)Ljava/lang/String;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "data"    # J

    .line 422
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x833

    if-eq v1, v2, :cond_1

    const/16 v2, 0x881

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "DE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "AT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 427
    sget-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat15:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 425
    :pswitch_0
    sget-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat16:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static declared-synchronized getWeeklyFormatString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 7
    .param p0, "calendar"    # Ljava/util/Calendar;

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 199
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/DateUtils;->getMondayOfWeek(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 200
    .local v1, "monday":Ljava/util/Calendar;
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/DateUtils;->getSundayOfWeek(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v2

    .line 201
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

    .line 198
    .end local v1    # "monday":Ljava/util/Calendar;
    .end local v2    # "sunday":Ljava/util/Calendar;
    .end local p0    # "calendar":Ljava/util/Calendar;
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getYearMonthAndDayFormatString(Ljava/util/Locale;J)Ljava/lang/String;
    .locals 3
    .param p0, "locale"    # Ljava/util/Locale;
    .param p1, "data"    # J

    .line 386
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/16 v2, 0x833

    if-eq v1, v2, :cond_1

    const/16 v2, 0x881

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "DE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v1, "AT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    .line 391
    sget-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat11:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 389
    :pswitch_0
    sget-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat12:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isThisMonth(Ljava/util/Calendar;)Z
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 234
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    .line 235
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

    .line 234
    :goto_0
    return v2
.end method

.method public static isThisWeek(Ljava/util/Calendar;)Z
    .locals 3
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 205
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v1, v0, :cond_0

    .line 206
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

    .line 205
    :goto_0
    return v2
.end method

.method public static isToday(J)Z
    .locals 5
    .param p0, "timeInMillis"    # J

    .line 157
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 158
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 159
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 160
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

    .line 159
    :goto_0
    return v1
.end method

.method public static isToday(Ljava/util/Calendar;)Z
    .locals 4
    .param p0, "calendar"    # Ljava/util/Calendar;

    .line 152
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 153
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

    .line 152
    :goto_0
    return v0
.end method

.method public static isYesterday(J)Z
    .locals 5
    .param p0, "timeInMillis"    # J

    .line 164
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 165
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 166
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_0

    .line 167
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

    .line 166
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

    .line 344
    sub-int v0, p1, p2

    .line 345
    .local v0, "day":I
    sub-int v1, p3, p4

    .line 346
    .local v1, "betweenYears":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 348
    .local v2, "d366":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v3, 0x6

    invoke-virtual {p5, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v4

    const/16 v5, 0x16e

    if-ne v4, v5, :cond_0

    .line 350
    add-int/lit8 v0, v0, 0x1

    .line 353
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

    .line 355
    invoke-virtual {p5, v7}, Ljava/util/Calendar;->get(I)I

    move-result v8

    add-int/2addr v8, v7

    invoke-virtual {p5, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 356
    invoke-virtual {p5, v3}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 358
    if-eq v0, v5, :cond_1

    .line 359
    add-int/2addr v6, v0

    goto :goto_1

    .line 361
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    :goto_1
    add-int/lit8 v8, v1, -0x1

    if-ne p0, v8, :cond_2

    if-le v1, v7, :cond_2

    if-ne v0, v5, :cond_2

    .line 365
    add-int/lit8 v6, v6, -0x1

    .line 353
    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 368
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

    .line 370
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lt v3, v7, :cond_4

    .line 371
    invoke-interface {v2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/2addr v6, v3

    .line 368
    :cond_4
    add-int/lit8 v4, p0, 0x1

    .end local p0    # "i":I
    .restart local v4    # "i":I
    goto :goto_2

    .line 374
    .end local v4    # "i":I
    :cond_5
    return v6
.end method
