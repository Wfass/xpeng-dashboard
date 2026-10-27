.class public Lcom/xiaopeng/lib/utils/a;
.super Ljava/lang/Object;
.source "DateUtils.java"


# static fields
.field private static VY:Ljava/text/SimpleDateFormat;

.field private static VZ:Ljava/text/SimpleDateFormat;

.field private static Wa:Ljava/text/SimpleDateFormat;

.field private static Wb:Ljava/text/SimpleDateFormat;

.field private static Wc:Ljava/text/SimpleDateFormat;

.field private static Wd:Ljava/text/SimpleDateFormat;

.field private static We:Ljava/text/SimpleDateFormat;

.field private static Wf:Ljava/text/SimpleDateFormat;

.field private static Wg:Ljava/text/SimpleDateFormat;

.field private static Wh:Ljava/text/SimpleDateFormat;

.field private static Wi:Ljava/text/SimpleDateFormat;

.field private static Wj:Ljava/text/SimpleDateFormat;

.field private static Wk:Ljava/text/SimpleDateFormat;

.field private static Wl:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 11
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM.dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/a;->VY:Ljava/text/SimpleDateFormat;

    .line 12
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/a;->VZ:Ljava/text/SimpleDateFormat;

    .line 13
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM.dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/a;->Wa:Ljava/text/SimpleDateFormat;

    .line 14
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM\u6708dd\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/a;->Wb:Ljava/text/SimpleDateFormat;

    .line 15
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/a;->Wc:Ljava/text/SimpleDateFormat;

    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy.MM.dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/a;->Wd:Ljava/text/SimpleDateFormat;

    .line 17
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/a;->We:Ljava/text/SimpleDateFormat;

    .line 18
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/a;->Wf:Ljava/text/SimpleDateFormat;

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/a;->Wg:Ljava/text/SimpleDateFormat;

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/a;->Wh:Ljava/text/SimpleDateFormat;

    .line 21
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy/MM/dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/a;->Wi:Ljava/text/SimpleDateFormat;

    .line 22
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/a;->Wj:Ljava/text/SimpleDateFormat;

    .line 23
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd  HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/a;->Wk:Ljava/text/SimpleDateFormat;

    .line 24
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd_HHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/lib/utils/a;->Wl:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static declared-synchronized dI(Ljava/lang/String;)J
    .locals 5

    const-class v0, Lcom/xiaopeng/lib/utils/a;

    monitor-enter v0

    .line 79
    const-wide/16 v1, 0x0

    .line 80
    nop

    .line 82
    :try_start_0
    sget-object v3, Lcom/xiaopeng/lib/utils/a;->Wl:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object p0

    .line 83
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v3
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    nop

    .line 87
    move-wide v1, v3

    goto :goto_0

    .line 78
    :catchall_0
    move-exception p0

    goto :goto_1

    .line 84
    :catch_0
    move-exception p0

    .line 85
    :try_start_1
    invoke-virtual {p0}, Ljava/text/ParseException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 87
    :goto_0
    monitor-exit v0

    return-wide v1

    .line 78
    :goto_1
    monitor-exit v0

    throw p0
.end method

.method public static isToday(J)Z
    .locals 2

    .line 145
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 146
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 147
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 148
    const/4 p1, 0x6

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

    .line 147
    :goto_0
    return p0
.end method

.method public static declared-synchronized l(J)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/utils/a;

    monitor-enter v0

    .line 41
    :try_start_0
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/a;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    const-string p0, "\u4eca\u5929"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 43
    :cond_0
    :try_start_1
    invoke-static {p0, p1}, Lcom/xiaopeng/lib/utils/a;->q(J)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 44
    const-string p0, "\u6628\u5929"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    .line 47
    :cond_1
    :try_start_2
    sget-object v1, Lcom/xiaopeng/lib/utils/a;->Wc:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-object p0

    .line 40
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized m(J)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/utils/a;

    monitor-enter v0

    .line 59
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/a;->Wh:Ljava/text/SimpleDateFormat;

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

.method public static declared-synchronized n(J)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/utils/a;

    monitor-enter v0

    .line 63
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/a;->Wi:Ljava/text/SimpleDateFormat;

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

.method public static declared-synchronized o(J)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/utils/a;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/a;->Wj:Ljava/text/SimpleDateFormat;

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

.method public static declared-synchronized p(J)Ljava/lang/String;
    .locals 2

    const-class v0, Lcom/xiaopeng/lib/utils/a;

    monitor-enter v0

    .line 75
    :try_start_0
    sget-object v1, Lcom/xiaopeng/lib/utils/a;->Wl:Ljava/text/SimpleDateFormat;

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

.method public static q(J)Z
    .locals 2

    .line 152
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Calendar;

    .line 153
    invoke-virtual {v0, p0, p1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 154
    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 155
    const/4 p1, 0x6

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

    .line 154
    :goto_0
    return p0
.end method
