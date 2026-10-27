.class public Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;
.super Ljava/lang/Object;
.source "ReadingInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/bean/db/ReadingInfo$SORT;
    }
.end annotation


# instance fields
.field private albumId:J

.field private sort:Ljava/lang/String;

.field private updateTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->albumId:J

    const-string v0, "timeAsc"

    .line 23
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->sort:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->albumId:J

    const-string v0, "timeAsc"

    .line 23
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->sort:Ljava/lang/String;

    .line 31
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->albumId:J

    .line 32
    iput-object p3, p0, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->sort:Ljava/lang/String;

    .line 33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->updateTime:J

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;J)V
    .locals 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->albumId:J

    const-string v0, "timeAsc"

    .line 23
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->sort:Ljava/lang/String;

    .line 38
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->albumId:J

    .line 39
    iput-object p3, p0, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->sort:Ljava/lang/String;

    .line 40
    iput-wide p4, p0, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->updateTime:J

    return-void
.end method


# virtual methods
.method public getAlbumId()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->albumId:J

    return-wide v0
.end method

.method public getSort()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->sort:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 60
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->updateTime:J

    return-wide v0
.end method

.method public setAlbumId(J)V
    .locals 0

    .line 48
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->albumId:J

    return-void
.end method

.method public setSort(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lcom/xiaopeng/musicradio/bean/db/ReadingInfo$SORT;
        .end annotation
    .end param

    .line 56
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->sort:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 64
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->updateTime:J

    return-void
.end method
