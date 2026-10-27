.class public Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;
.super Ljava/lang/Object;
.source "HeadSpeechHistoryRecord.java"


# instance fields
.field private mAlbumId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "albumId"
    .end annotation
.end field

.field private mChannelId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channelId"
    .end annotation
.end field

.field private mPage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "page"
    .end annotation
.end field

.field private mRelativeId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "relativeId"
    .end annotation
.end field

.field private mSseek:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "seek"
    .end annotation
.end field

.field private mTotalPage:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "totalPage"
    .end annotation
.end field

.field private mTrackId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackId"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumId()J
    .locals 2

    .line 32
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->mAlbumId:J

    return-wide v0
.end method

.method public getChannelId()I
    .locals 1

    .line 56
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->mChannelId:I

    return v0
.end method

.method public getPage()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->mPage:I

    return v0
.end method

.method public getRelativeId()J
    .locals 2

    .line 64
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->mRelativeId:J

    return-wide v0
.end method

.method public getSeek()J
    .locals 2

    .line 48
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->mSseek:J

    return-wide v0
.end method

.method public getTotalPage()I
    .locals 1

    .line 72
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->mTotalPage:I

    return v0
.end method

.method public getTrackId()J
    .locals 2

    .line 40
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->mTrackId:J

    return-wide v0
.end method

.method public setAlbumId(J)V
    .locals 0

    .line 36
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->mAlbumId:J

    return-void
.end method

.method public setChannelId(I)V
    .locals 0

    .line 60
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->mChannelId:I

    return-void
.end method

.method public setPage(I)V
    .locals 0

    .line 84
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->mPage:I

    return-void
.end method

.method public setRelativeId(J)V
    .locals 0

    .line 68
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->mRelativeId:J

    return-void
.end method

.method public setSeek(J)V
    .locals 0

    .line 52
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->mSseek:J

    return-void
.end method

.method public setTotalPage(I)V
    .locals 0

    .line 76
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->mTotalPage:I

    return-void
.end method

.method public setTrackId(J)V
    .locals 0

    .line 44
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->mTrackId:J

    return-void
.end method
