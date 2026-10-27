.class public Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;
.super Ljava/lang/Object;
.source "DateTimeFormatUtil.java"


# static fields
.field public static final DATE_FORMAT:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

.field public static final FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field

.field public static final TIME_FORMAT:Ljava/text/SimpleDateFormat;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 13
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy.MM.dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 16
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy.MM.dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->DATE_FORMAT:Ljava/text/SimpleDateFormat;

    .line 19
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;
    .locals 1
    .param p0, "format"    # Ljava/text/DateFormat;
    .param p1, "date"    # Ljava/util/Date;

    .line 34
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 35
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static parse(Ljava/text/DateFormat;Ljava/lang/String;)Ljava/util/Date;
    .locals 2
    .param p0, "format"    # Ljava/text/DateFormat;
    .param p1, "text"    # Ljava/lang/String;

    .line 22
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    if-nez p0, :cond_0

    goto :goto_0

    .line 26
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 27
    :catch_0
    move-exception v1

    .line 30
    return-object v0

    .line 23
    :cond_1
    :goto_0
    return-object v0
.end method
