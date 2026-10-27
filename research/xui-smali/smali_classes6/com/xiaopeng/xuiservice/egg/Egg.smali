.class public Lcom/xiaopeng/xuiservice/egg/Egg;
.super Ljava/lang/Object;
.source "Egg.java"


# instance fields
.field private displayName:Ljava/lang/String;

.field private eggDir:Ljava/lang/String;

.field private expireTime:J

.field private id:Ljava/lang/String;

.field private image:Ljava/lang/String;

.field private resourceId:Ljava/lang/String;

.field public rules:[Lcom/xiaopeng/xuiservice/egg/Rule;

.field private startTime:J

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 97
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 98
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 99
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/xuiservice/egg/Egg;

    .line 100
    .local v0, "egg":Lcom/xiaopeng/xuiservice/egg/Egg;
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->id:Ljava/lang/String;

    iget-object v2, v0, Lcom/xiaopeng/xuiservice/egg/Egg;->id:Ljava/lang/String;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 98
    .end local v0    # "egg":Lcom/xiaopeng/xuiservice/egg/Egg;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->displayName:Ljava/lang/String;

    return-object v0
.end method

.method public getEggDir()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->eggDir:Ljava/lang/String;

    return-object v0
.end method

.method public getExpireTime()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->expireTime:J

    return-wide v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->id:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->image:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->startTime:J

    return-wide v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->version:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 105
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->id:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 0
    .param p1, "displayName"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->displayName:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setEggDir(Ljava/lang/String;)V
    .locals 0
    .param p1, "eggDir"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->eggDir:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setExpireTime(J)V
    .locals 0
    .param p1, "expireTime"    # J

    .line 84
    iput-wide p1, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->expireTime:J

    .line 85
    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .param p1, "id"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->id:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setImage(Ljava/lang/String;)V
    .locals 0
    .param p1, "image"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->image:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0
    .param p1, "resourceId"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->resourceId:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setStartTime(J)V
    .locals 0
    .param p1, "startTime"    # J

    .line 76
    iput-wide p1, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->startTime:J

    .line 77
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->version:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Egg{id=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", resourceId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->resourceId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", version=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->version:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", displayName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", image=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->image:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", startTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->startTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 117
    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", expireTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->FULL_DATE_TIME_FORMAT:Ljava/text/SimpleDateFormat;

    new-instance v3, Ljava/util/Date;

    iget-wide v4, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->expireTime:J

    invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V

    .line 118
    invoke-static {v2, v3}, Lcom/xiaopeng/xuiservice/utils/DateTimeFormatUtil;->format(Ljava/text/DateFormat;Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rules="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->rules:[Lcom/xiaopeng/xuiservice/egg/Rule;

    .line 119
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", eggDir=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/egg/Egg;->eggDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 111
    return-object v0
.end method
