.class public Lcom/xiaopeng/factory/utils/TimeUtil;
.super Ljava/lang/Object;
.source "TimeUtil.java"


# static fields
.field public static final DATE_FORMAT_YYYYMMDDHHMMSS:Ljava/lang/String; = "yyyyMMddHHmmss"

.field public static final DATE_FORMAT_YYYYMMDDHHMMSS_2:Ljava/lang/String; = "yyyy-MM-dd HH.mm.ss"

.field public static final DATE_FORMAT_YYYYMMDDHHMMSS_WITH_SEPARATOR:Ljava/lang/String; = "yyyy-MM-dd HH:mm:ss"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDate()Ljava/lang/String;
    .locals 3

    .line 13
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 14
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 15
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 16
    .local v2, "time":Ljava/lang/String;
    return-object v2
.end method

.method public static getDate(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "dateformat"    # Ljava/lang/String;

    .line 20
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-direct {v0, p0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 21
    .local v0, "format":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 22
    .local v1, "date":Ljava/util/Date;
    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 23
    .local v2, "time":Ljava/lang/String;
    return-object v2
.end method
