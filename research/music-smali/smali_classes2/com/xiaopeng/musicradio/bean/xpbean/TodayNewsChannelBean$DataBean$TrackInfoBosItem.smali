.class public Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;
.super Ljava/lang/Object;
.source "TodayNewsChannelBean.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TrackInfoBosItem"
.end annotation


# instance fields
.field private mAlbumId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "albumId"
    .end annotation
.end field

.field private mArtist:Lcom/xiaopeng/musicradio/bean/xpbean/ReadingArtist;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "artist"
    .end annotation
.end field

.field private mCanDownload:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "canDownload"
    .end annotation
.end field

.field private mDuration:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private mFree:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "free"
    .end annotation
.end field

.field private mId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "id"
    .end annotation
.end field

.field private mIsNew:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "isNew"
    .end annotation
.end field

.field private mLargeLogo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "largeLogo"
    .end annotation
.end field

.field private mListenFileSize:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "listenFileSize"
    .end annotation
.end field

.field private mListenUrl:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "listenUrl"
    .end annotation
.end field

.field private mMediumLogo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mediumLogo"
    .end annotation
.end field

.field private mOrderNum:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "orderNum"
    .end annotation
.end field

.field private mOriginAlbumId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "originAlbumId"
    .end annotation
.end field

.field private mSmallLogo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "smallLogo"
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "title"
    .end annotation
.end field

.field private mUpdateTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updateTime"
    .end annotation
.end field

.field private mVipFirstStatus:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "vipFirstStatus"
    .end annotation
.end field

.field final synthetic this$0:Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;)V
    .locals 0

    .line 148
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->this$0:Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbumId()I
    .locals 1

    .line 210
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->mAlbumId:I

    return v0
.end method

.method public getArtist()Lcom/xiaopeng/musicradio/bean/xpbean/ReadingArtist;
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->mArtist:Lcom/xiaopeng/musicradio/bean/xpbean/ReadingArtist;

    return-object v0
.end method

.method public getDuration()I
    .locals 1

    .line 242
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->mDuration:I

    return v0
.end method

.method public getId()I
    .locals 1

    .line 262
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->mId:I

    return v0
.end method

.method public getLargeLogo()Ljava/lang/String;
    .locals 1

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->mLargeLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getListenFileSize()I
    .locals 1

    .line 202
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->mListenFileSize:I

    return v0
.end method

.method public getListenUrl()Ljava/lang/String;
    .locals 1

    .line 246
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->mListenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMediumLogo()Ljava/lang/String;
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->mMediumLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNum()I
    .locals 1

    .line 214
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->mOrderNum:I

    return v0
.end method

.method public getOriginAlbumId()I
    .locals 1

    .line 238
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->mOriginAlbumId:I

    return v0
.end method

.method public getSmallLogo()Ljava/lang/String;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->mSmallLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 222
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->mUpdateTime:J

    return-wide v0
.end method

.method public getVipFirstStatus()I
    .locals 1

    .line 258
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->mVipFirstStatus:I

    return v0
.end method

.method public isCanDownload()Z
    .locals 1

    .line 254
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->mCanDownload:Z

    return v0
.end method

.method public isFree()Z
    .locals 1

    .line 266
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->mFree:Z

    return v0
.end method

.method public isIsNew()Z
    .locals 1

    .line 230
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->mIsNew:Z

    return v0
.end method
