.class public Lcom/xiaopeng/xuiservice/bughunter/Bug;
.super Ljava/lang/Object;
.source "Bug.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/bughunter/Bug$LocalType;,
        Lcom/xiaopeng/xuiservice/bughunter/Bug$Src;,
        Lcom/xiaopeng/xuiservice/bughunter/Bug$Type;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "xpBugHunter"


# instance fields
.field public localType:I

.field public rawJson:Ljava/lang/String;

.field public src:I

.field public srcName:Ljava/lang/String;

.field public timestamp:J

.field public title:Ljava/lang/String;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaopeng/xuiservice/bughunter/Bug;->localType:I

    return-void
.end method

.method public static parse(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/bughunter/Bug;
    .locals 7
    .param p0, "json"    # Ljava/lang/String;

    .line 65
    :try_start_0
    const-string/jumbo v0, "xpBugHunter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "report bug json: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "jsonObject":Lorg/json/JSONObject;
    new-instance v1, Lcom/xiaopeng/xuiservice/bughunter/Bug;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/bughunter/Bug;-><init>()V

    .line 68
    .local v1, "bug":Lcom/xiaopeng/xuiservice/bughunter/Bug;
    const-string v2, "mType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->type:I

    .line 69
    const-string v2, "srcType"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->src:I

    .line 70
    const-string v2, "srcName"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->srcName:Ljava/lang/String;

    .line 71
    const-string v2, "mTitle"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->title:Ljava/lang/String;

    .line 72
    iput-object p0, v1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->rawJson:Ljava/lang/String;

    .line 73
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->timestamp:J

    .line 75
    iget v2, v1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->type:I

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 76
    iput v3, v1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->localType:I

    goto :goto_0

    .line 77
    :cond_0
    iget v2, v1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->type:I

    const/4 v5, 0x4

    const/4 v6, 0x2

    if-ne v2, v6, :cond_1

    .line 78
    iput v5, v1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->localType:I

    goto :goto_0

    .line 79
    :cond_1
    iget v2, v1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->type:I

    if-ne v2, v5, :cond_2

    .line 80
    iput v6, v1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->localType:I

    goto :goto_0

    .line 81
    :cond_2
    iget v2, v1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->type:I

    if-ne v2, v3, :cond_4

    .line 82
    const-string v2, "Native Process Crash"

    iget-object v3, v1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 83
    const/4 v2, 0x5

    iput v2, v1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->localType:I

    goto :goto_0

    .line 84
    :cond_3
    const-string v2, "systemServer error"

    iget-object v3, v1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 85
    iput v4, v1, Lcom/xiaopeng/xuiservice/bughunter/Bug;->localType:I

    .line 89
    :cond_4
    :goto_0
    const-string/jumbo v2, "xpBugHunter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 90
    return-object v1

    .line 91
    .end local v0    # "jsonObject":Lorg/json/JSONObject;
    .end local v1    # "bug":Lcom/xiaopeng/xuiservice/bughunter/Bug;
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "xpBugHunter"

    const-string v2, "parse bug info error"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bug{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/bughunter/Bug;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", localType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/bughunter/Bug;->localType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", src="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/xuiservice/bughunter/Bug;->src:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", srcName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/bughunter/Bug;->srcName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", timestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v2, Ljava/util/Date;

    iget-wide v3, p0, Lcom/xiaopeng/xuiservice/bughunter/Bug;->timestamp:J

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 119
    invoke-static {v1, v2}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 114
    return-object v0
.end method
