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
    .locals 3

    .line 12
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM.dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sDailySimpleFormat:Ljava/text/SimpleDateFormat;

    .line 13
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy.MM"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/DateUtils;->sMonthlySimpleFormat:Ljava/text/SimpleDateFormat;

    .line 14
    new-instance v0, Ljava/text/SimpleDateFormat;

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
    .locals 7

    cmp-long v0, p2, p0

    if-lez v0, :cond_0

    add-long/2addr p2, p0

    sub-long p0, p2, p0

    sub-long/2addr p2, p0

    .line 307
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 308
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 310
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 311
    invoke-virtual {v6, p2, p3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x1

    .line 313
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 314
    invoke-virtual {v6, p0}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 p0, 0x6

    .line 316
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 317
    invoke-virtual {v6, p0}, Ljava/util/Calendar;->get(I)I

    move-result v3

    const/4 v1, 0x0

    sub-int p0, v4, v5

    if-lez p0, :cond_1

    .line 321
    invoke-static/range {v1 .. v6}, Lcom/xiaopeng/lib/utils/DateUtils;->numerical(IIIIILjava/util/Calendar;)I

    move-result p0

    goto :goto_0

    :cond_1
    sub-int p0, v2, v3

    :goto_0
    return p0
.end method

.method public static declared-synchronized dateToStamp(Ljava/lang/String;)J
    .locals 4

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    const-wide/16 v1, 0x0

    .line 94
    :try_start_0
    sget-object v3, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat10:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v1
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 97
    :try_start_1
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :goto_0
    monitor-exit v0

    return-wide v1

    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized formatDate1(J)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 39
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat1:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized formatDate10(J)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 87
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat10:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized formatDate2(J)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 43
    :try_start_0
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "\u4eca\u5929"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    monitor-exit v0

    return-object p0

    .line 45
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/DateUtils;->isYesterday(J)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "\u6628\u5929"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 46
    monitor-exit v0

    return-object p0

    .line 49
    :cond_1
    :try_start_2
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat2:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized formatDate3(J)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 53
    :try_start_0
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p0, "\u4eca\u5929"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    monitor-exit v0

    return-object p0

    .line 55
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/DateUtils;->isYesterday(J)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p0, "\u6628\u5929"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    monitor-exit v0

    return-object p0

    .line 59
    :cond_1
    :try_start_2
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat3:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized formatDate4(J)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sBirthdaySimpleFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized formatDate5(J)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat5:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized formatDate6(J)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 71
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat6:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized formatDate7(J)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat7:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized formatDate8(J)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 79
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat8:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized formatDate9(J)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat9:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getAccuracyToDay(J)J
    .locals 1

    .line 248
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 249
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xe

    .line 250
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result p1

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 251
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result p1

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 252
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result p1

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xb

    .line 253
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result p1

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 254
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getAccuracyToHour(J)J
    .locals 1

    .line 239
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 240
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/16 p0, 0xe

    .line 241
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result p1

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xd

    .line 242
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result p1

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    const/16 p0, 0xc

    .line 243
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result p1

    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->set(II)V

    .line 244
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getBeforeAndAfterHalfHour(Ljava/util/Date;)Ljava/util/List;
    .locals 4
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
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 276
    invoke-virtual {v1, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p0, 0xc

    const/16 v2, -0x1e

    .line 277
    invoke-virtual {v1, p0, v2}, Ljava/util/Calendar;->add(II)V

    .line 278
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    const/16 v3, 0x3c

    .line 279
    invoke-virtual {v1, p0, v3}, Ljava/util/Calendar;->add(II)V

    .line 280
    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    .line 281
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 282
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static declared-synchronized getBirthdayFormatString(J)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 139
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sBirthdaySimpleFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getBirthdayParseString(Ljava/lang/String;)Ljava/util/Date;
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 144
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sBirthdaySimpleFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 146
    :try_start_1
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V

    .line 148
    new-instance p0, Ljava/util/Date;

    invoke-direct {p0}, Ljava/util/Date;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :goto_0
    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDailyFormatString(J)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 131
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sDailySimpleFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized getDailyFormatString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 135
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sDailySimpleFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getDayBeginTimeInMillis(J)J
    .locals 1

    .line 103
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 104
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 105
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/16 p1, 0xb

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    .line 106
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/16 p1, 0xc

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    .line 107
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/16 p1, 0xd

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    .line 108
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/16 p1, 0xe

    invoke-virtual {p0, p1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result p0

    invoke-virtual {v0, p1, p0}, Ljava/util/Calendar;->set(II)V

    .line 109
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getEndOfDay(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    .line 122
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/16 v1, 0xb

    .line 123
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 124
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 125
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 126
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public static getEndOfMonth(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    .line 220
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/4 v0, 0x5

    .line 221
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xb

    .line 222
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 223
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 224
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 225
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    return-object p0
.end method

.method public static getMondayOfWeek(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    .line 171
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/4 v0, 0x7

    .line 172
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v1, 0x5

    neg-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 176
    invoke-virtual {p0, v1, v0}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0xb

    .line 177
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 178
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 179
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 180
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    return-object p0
.end method

.method public static getMonthAndDayFormatString(Ljava/util/Locale;J)Ljava/lang/String;
    .locals 3

    .line 404
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x833

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x881

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_1
    const-string v0, "AT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v2, :cond_3

    .line 409
    sget-object p0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat13:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 407
    :cond_3
    sget-object p0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat14:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getMonthlyFormatString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 230
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sMonthlySimpleFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getSomeMinuteAfter(Ljava/util/Calendar;I)Ljava/util/Date;
    .locals 1

    .line 268
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/16 v0, 0xc

    .line 269
    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->add(II)V

    .line 270
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    return-object p0
.end method

.method public static getSomeMinuteAgo(Ljava/util/Calendar;I)J
    .locals 1

    .line 262
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    mul-int/lit8 p1, p1, -0x1

    const/16 v0, 0xc

    .line 263
    invoke-virtual {p0, v0, p1}, Ljava/util/Calendar;->add(II)V

    .line 264
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide p0

    return-wide p0
.end method

.method public static getStartOfDay(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    .line 113
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    const/16 v1, 0xb

    .line 114
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 115
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 116
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 117
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result p0

    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    return-object v0
.end method

.method public static getStartOfMonth(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 2

    .line 210
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/4 v0, 0x5

    .line 211
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xb

    .line 212
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 213
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 214
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 215
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    return-object p0
.end method

.method public static getSundayOfWeek(Ljava/util/Calendar;)Ljava/util/Calendar;
    .locals 3

    .line 185
    invoke-virtual {p0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Calendar;

    const/4 v0, 0x7

    .line 186
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-nez v1, :cond_0

    move v1, v0

    :cond_0
    const/4 v2, 0x5

    neg-int v1, v1

    add-int/2addr v1, v0

    .line 190
    invoke-virtual {p0, v2, v1}, Ljava/util/Calendar;->add(II)V

    const/16 v0, 0xb

    .line 191
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 192
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 193
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xe

    .line 194
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Calendar;->set(II)V

    return-object p0
.end method

.method public static declared-synchronized getTimeFormatString(J)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 258
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sTimeSimpleFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getWeekAndMonthAndDayFormatString(Ljava/util/Locale;J)Ljava/lang/String;
    .locals 3

    .line 422
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x833

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x881

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_1
    const-string v0, "AT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v2, :cond_3

    .line 427
    sget-object p0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat15:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 425
    :cond_3
    sget-object p0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat16:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized getWeeklyFormatString(Ljava/util/Calendar;)Ljava/lang/String;
    .locals 6

    const-class v0, Lcom/xiaopeng/lib/utils/DateUtils;

    monitor-enter v0

    .line 199
    :try_start_0
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/DateUtils;->getMondayOfWeek(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object v1

    .line 200
    invoke-static {p0}, Lcom/xiaopeng/lib/utils/DateUtils;->getSundayOfWeek(Ljava/util/Calendar;)Ljava/util/Calendar;

    move-result-object p0

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/xiaopeng/lib/utils/DateUtils;->sDailySimpleFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/lib/utils/DateUtils;->sDailySimpleFormat:Ljava/text/SimpleDateFormat;

    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getYearMonthAndDayFormatString(Ljava/util/Locale;J)Ljava/lang/String;
    .locals 3

    .line 386
    invoke-virtual {p0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x833

    const/4 v2, 0x1

    if-eq v0, v1, :cond_1

    const/16 v1, 0x881

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "DE"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    move p0, v2

    goto :goto_1

    :cond_1
    const-string v0, "AT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p0, -0x1

    :goto_1
    if-eqz p0, :cond_3

    if-eq p0, v2, :cond_3

    .line 391
    sget-object p0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat11:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 389
    :cond_3
    sget-object p0, Lcom/xiaopeng/lib/utils/DateUtils;->sSimpleFormat12:Ljava/text/SimpleDateFormat;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isThisMonth(Ljava/util/Calendar;)Z
    .locals 3

    const/4 v0, 0x2

    .line 234
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

    move-result p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static isThisWeek(Ljava/util/Calendar;)Z
    .locals 3

    const/4 v0, 0x3

    .line 205
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

    move-result p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static isToday(J)Z
    .locals 2

    .line 157
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 158
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x1

    .line 159
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x6

    .line 160
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isToday(Ljava/util/Calendar;)Z
    .locals 3

    const/4 v0, 0x1

    .line 152
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v1, 0x6

    .line 153
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result p0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isYesterday(J)Z
    .locals 2

    .line 164
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 165
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    const/4 p0, 0x1

    .line 166
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x6

    .line 167
    invoke-virtual {v0, p1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/Calendar;->get(I)I

    move-result p1

    sub-int/2addr p1, p0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static numerical(IIIIILjava/util/Calendar;)I
    .locals 5

    sub-int/2addr p1, p2

    sub-int/2addr p3, p4

    .line 346
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x6

    .line 348
    invoke-virtual {p5, p2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result p4

    const/16 v0, 0x16e

    if-ne p4, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    :cond_0
    const/4 p4, 0x0

    move v1, p1

    move p1, p4

    :goto_0
    const/4 v2, 0x1

    if-ge p1, p3, :cond_3

    .line 355
    invoke-virtual {p5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p5, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 356
    invoke-virtual {p5, p2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v3

    if-eq v3, v0, :cond_1

    add-int/2addr v1, v3

    goto :goto_1

    .line 361
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v4, p3, -0x1

    if-ne p1, v4, :cond_2

    if-le p3, v2, :cond_2

    if-ne v3, v0, :cond_2

    add-int/lit8 v1, v1, -0x1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 368
    :cond_3
    :goto_2
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-ge p4, p1, :cond_5

    .line 370
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lt p1, v2, :cond_4

    .line 371
    invoke-interface {p0, p4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/2addr v1, p1

    :cond_4
    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    :cond_5
    return v1
.end method
