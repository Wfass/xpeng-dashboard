.class public Lcom/xiaopeng/xuiservice/utils/TimeUtils;
.super Ljava/lang/Object;
.source "TimeUtils.java"


# static fields
.field private static final END_TIME_STRING:Ljava/lang/String; = "06:00"

.field private static final START_DATE_STRING:Ljava/lang/String; = "00:00"

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 16
    const-string v0, "TimeUtils"

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/TimeUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static belongCalendar(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)Z
    .locals 4
    .param p0, "nowTime"    # Ljava/util/Date;
    .param p1, "beginTime"    # Ljava/util/Date;
    .param p2, "endTime"    # Ljava/util/Date;

    .line 44
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 45
    .local v0, "date":Ljava/util/Calendar;
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 46
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 47
    .local v1, "begin":Ljava/util/Calendar;
    invoke-virtual {v1, p1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 48
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 49
    .local v2, "end":Ljava/util/Calendar;
    invoke-virtual {v2, p2}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 50
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public static isBelongFromZeroToSix()Z
    .locals 8

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, "df":Ljava/text/SimpleDateFormat;
    const/4 v1, 0x0

    .line 22
    .local v1, "now":Ljava/util/Date;
    const/4 v2, 0x0

    .line 23
    .local v2, "beginTime":Ljava/util/Date;
    const/4 v3, 0x0

    .line 25
    .local v3, "endTime":Ljava/util/Date;
    :try_start_0
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    move-object v1, v4

    .line 26
    const-string v4, "00:00"

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4

    move-object v2, v4

    .line 27
    const-string v4, "06:00"

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v4

    .line 30
    goto :goto_0

    .line 28
    :catch_0
    move-exception v4

    .line 29
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 31
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_0
    invoke-static {v1, v2, v3}, Lcom/xiaopeng/xuiservice/utils/TimeUtils;->belongCalendar(Ljava/util/Date;Ljava/util/Date;Ljava/util/Date;)Z

    move-result v4

    .line 32
    .local v4, "isBelong":Z
    sget-object v5, Lcom/xiaopeng/xuiservice/utils/TimeUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isBelong:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    return v4
.end method
