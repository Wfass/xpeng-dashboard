.class public Lcom/xiaopeng/musicradio/utils/bs;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# static fields
.field public static final a:Ljava/text/SimpleDateFormat;

.field public static final b:Ljava/text/SimpleDateFormat;

.field public static final c:Ljava/text/SimpleDateFormat;

.field public static final d:Ljava/text/SimpleDateFormat;

.field public static final e:Ljava/text/SimpleDateFormat;

.field public static final f:Ljava/text/SimpleDateFormat;

.field public static final g:Ljava/text/SimpleDateFormat;

.field public static final h:Ljava/text/SimpleDateFormat;

.field public static final i:Ljava/text/SimpleDateFormat;

.field public static final j:Ljava/text/SimpleDateFormat;

.field public static final k:Ljava/text/SimpleDateFormat;

.field private static final l:Ljava/text/SimpleDateFormat;

.field private static m:Ljava/util/Date;

.field private static n:[Ljava/lang/String;

.field private static final o:Ljava/util/Calendar;

.field private static final p:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/bs;->a:Ljava/text/SimpleDateFormat;

    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/bs;->b:Ljava/text/SimpleDateFormat;

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/bs;->c:Ljava/text/SimpleDateFormat;

    .line 25
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/bs;->d:Ljava/text/SimpleDateFormat;

    .line 27
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/bs;->e:Ljava/text/SimpleDateFormat;

    .line 29
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/bs;->f:Ljava/text/SimpleDateFormat;

    .line 31
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/bs;->g:Ljava/text/SimpleDateFormat;

    .line 33
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "a h:mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/bs;->h:Ljava/text/SimpleDateFormat;

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss:SS"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/bs;->i:Ljava/text/SimpleDateFormat;

    .line 38
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd HH:mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/bs;->j:Ljava/text/SimpleDateFormat;

    .line 41
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy/MM/dd"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/bs;->k:Ljava/text/SimpleDateFormat;

    .line 44
    new-instance v0, Ljava/text/SimpleDateFormat;

    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/bs;->l:Ljava/text/SimpleDateFormat;

    .line 60
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/bs;->m:Ljava/util/Date;

    const-string v1, "JAN"

    const-string v2, "FEB"

    const-string v3, "MAR"

    const-string v4, "APR"

    const-string v5, "MAY"

    const-string v6, "JUN"

    const-string v7, "JUL"

    const-string v8, "AUG"

    const-string v9, "SEP"

    const-string v10, "OCT"

    const-string v11, "NOV"

    const-string v12, "DEC"

    .line 62
    filled-new-array/range {v1 .. v12}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/musicradio/utils/bs;->n:[Ljava/lang/String;

    .line 162
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/musicradio/utils/bs;->o:Ljava/util/Calendar;

    .line 163
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0}, Ljava/text/SimpleDateFormat;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/utils/bs;->p:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a(I)J
    .locals 3

    .line 358
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 359
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 360
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 v0, 0x0

    const/16 v2, 0xa

    .line 361
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    .line 362
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 363
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 364
    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    const/4 v0, 0x5

    .line 365
    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v2

    add-int/2addr v2, p0

    invoke-virtual {v1, v0, v2}, Ljava/util/Calendar;->set(II)V

    .line 366
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Ljava/util/Date;)J
    .locals 2

    const-string v0, "GMT+8"

    .line 510
    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    move-result-object v0

    .line 511
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x0

    const/16 v1, 0xb

    .line 512
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xc

    .line 513
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 514
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 515
    invoke-virtual {v0, v1, p0}, Ljava/util/Calendar;->set(II)V

    .line 516
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    .line 379
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    goto :goto_0

    :pswitch_0
    const-string v0, "6"

    goto :goto_0

    :pswitch_1
    const-string v0, "5"

    goto :goto_0

    :pswitch_2
    const-string v0, "4"

    goto :goto_0

    :pswitch_3
    const-string v0, "3"

    goto :goto_0

    :pswitch_4
    const-string v0, "2"

    goto :goto_0

    :pswitch_5
    const-string v0, "1"

    goto :goto_0

    :pswitch_6
    const-string v0, "7"

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static a(J)Ljava/lang/String;
    .locals 1

    .line 91
    sget-object v0, Lcom/xiaopeng/musicradio/utils/bs;->k:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1, v0}, Lcom/xiaopeng/musicradio/utils/bs;->a(JLjava/text/SimpleDateFormat;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(JLjava/text/SimpleDateFormat;)Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/xiaopeng/musicradio/utils/bs;->m:Ljava/util/Date;

    invoke-virtual {v0, p0, p1}, Ljava/util/Date;->setTime(J)V

    .line 72
    sget-object p0, Lcom/xiaopeng/musicradio/utils/bs;->m:Ljava/util/Date;

    invoke-virtual {p2, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/lang/String;)Ljava/util/Date;
    .locals 1

    .line 115
    :try_start_0
    sget-object v0, Lcom/xiaopeng/musicradio/utils/bs;->g:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static b(J)J
    .locals 4

    .line 166
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/bs;->c(J)J

    move-result-wide v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    sub-long/2addr p0, v0

    const-wide/16 v0, 0x3e8

    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static b()Ljava/lang/String;
    .locals 2

    .line 427
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-string v0, ""

    goto :goto_0

    :pswitch_0
    const-string v0, "5"

    goto :goto_0

    :pswitch_1
    const-string v0, "4"

    goto :goto_0

    :pswitch_2
    const-string v0, "3"

    goto :goto_0

    :pswitch_3
    const-string v0, "2"

    goto :goto_0

    :pswitch_4
    const-string v0, "1"

    goto :goto_0

    :pswitch_5
    const-string v0, "7"

    goto :goto_0

    :pswitch_6
    const-string v0, "6"

    :goto_0
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static c()J
    .locals 3

    .line 466
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    const/16 v1, 0xc

    const/16 v2, 0xa

    .line 467
    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x0

    .line 468
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xd

    .line 469
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v1, 0xe

    .line 470
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->set(II)V

    .line 471
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public static c(J)J
    .locals 2

    const-wide/32 v0, 0xea60

    .line 170
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static d(J)J
    .locals 2

    const-wide/32 v0, 0x36ee80

    .line 174
    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static e(J)J
    .locals 2

    .line 178
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/bs;->d(J)J

    move-result-wide p0

    const-wide/16 v0, 0x18

    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static f(J)J
    .locals 4

    .line 182
    invoke-static {p0, p1}, Lcom/xiaopeng/musicradio/utils/bs;->d(J)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x3c

    mul-long/2addr v0, v2

    mul-long/2addr v0, v2

    sub-long/2addr p0, v0

    const-wide/32 v0, 0xea60

    div-long/2addr p0, v0

    return-wide p0
.end method

.method public static g(J)J
    .locals 2

    const-wide/32 v0, 0x36ee80

    .line 186
    div-long/2addr p0, v0

    const-wide/16 v0, 0x8

    add-long/2addr p0, v0

    const-wide/16 v0, 0x18

    rem-long/2addr p0, v0

    return-wide p0
.end method

.method public static h(J)Ljava/lang/String;
    .locals 9

    .line 307
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, p0

    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const-string p0, "1\u5206\u949f\u524d"

    return-object p0

    :cond_0
    const-wide/32 v2, 0x36ee80

    cmp-long v2, v0, v2

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x0

    if-gez v2, :cond_2

    .line 312
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bs;->c(J)J

    move-result-wide p0

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long v1, p0, v5

    if-gtz v1, :cond_1

    move-wide p0, v3

    :cond_1
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "\u5206\u949f\u524d"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-wide/32 v7, 0x5265c00

    cmp-long v2, v0, v7

    if-gez v2, :cond_3

    .line 316
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bs;->c(J)J

    move-result-wide p0

    long-to-float p0, p0

    const/high16 p1, 0x42700000    # 60.0f

    div-float/2addr p0, p1

    float-to-double p0, p0

    .line 317
    invoke-static {p0, p1}, Ljava/lang/Math;->rint(D)D

    move-result-wide p0

    double-to-int p0, p0

    .line 318
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\u5c0f\u65f6\u524d"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const-wide/32 v7, 0x240c8400

    cmp-long v2, v0, v7

    if-gez v2, :cond_5

    .line 321
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bs;->e(J)J

    move-result-wide p0

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    cmp-long v1, p0, v5

    if-gtz v1, :cond_4

    move-wide p0, v3

    :cond_4
    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "\u5929\u524d"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 324
    :cond_5
    sget-object v0, Lcom/xiaopeng/musicradio/utils/bs;->d:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p0, p1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
