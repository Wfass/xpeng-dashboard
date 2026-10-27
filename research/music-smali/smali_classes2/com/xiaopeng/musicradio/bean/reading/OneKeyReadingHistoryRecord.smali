.class public Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;
.super Ljava/lang/Object;
.source "OneKeyReadingHistoryRecord.java"


# instance fields
.field private albumId:J

.field private order:Ljava/lang/String;

.field private seek:J

.field private title:Ljava/lang/String;

.field private trackId:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumId()J
    .locals 2

    .line 12
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->albumId:J

    return-wide v0
.end method

.method public getOrder()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->order:Ljava/lang/String;

    return-object v0
.end method

.method public getSeek()J
    .locals 2

    .line 44
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->seek:J

    return-wide v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()J
    .locals 2

    .line 20
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->trackId:J

    return-wide v0
.end method

.method public setAlbumId(J)V
    .locals 0

    .line 16
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->albumId:J

    return-void
.end method

.method public setOrder(Ljava/lang/String;)V
    .locals 0

    .line 40
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->order:Ljava/lang/String;

    return-void
.end method

.method public setSeek(J)V
    .locals 0

    .line 48
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->seek:J

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->title:Ljava/lang/String;

    return-void
.end method

.method public setTrackId(J)V
    .locals 0

    .line 24
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->trackId:J

    return-void
.end method
