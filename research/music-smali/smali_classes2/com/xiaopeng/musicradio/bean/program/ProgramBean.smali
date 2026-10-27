.class public Lcom/xiaopeng/musicradio/bean/program/ProgramBean;
.super Lcom/xiaopeng/musicradio/bean/BaseInfo;
.source "ProgramBean.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlbumAuthorized:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "albumAuthorized"
    .end annotation
.end field

.field private mAlbumId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "albumId"
    .end annotation
.end field

.field private mAlbumLogo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "albumLogo"
    .end annotation
.end field

.field private mAlbumName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "albumName"
    .end annotation
.end field

.field private mAlbumPaymentType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "albumPaymentType"
    .end annotation
.end field

.field private mArtistId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "artistId"
    .end annotation
.end field

.field private mArtistName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "artistName"
    .end annotation
.end field

.field private mAuthorized:Z
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "authorized"
    .end annotation
.end field

.field private mCategoryName:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "categoryName"
    .end annotation
.end field

.field private mChannelId:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "channelId"
    .end annotation
.end field

.field private mCreateTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "createTime"
    .end annotation
.end field

.field private mDuration:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "duration"
    .end annotation
.end field

.field private mFromSource:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fromSource"
    .end annotation
.end field

.field private mIntro:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "intro"
    .end annotation
.end field

.field private mLargeLogo:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "largeLogo"
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

.field private mOriginalAlbumId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "originAlbumId"
    .end annotation
.end field

.field private mPaymentType:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "paymentType"
    .end annotation
.end field

.field private mPlayCount:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "playCount"
    .end annotation
.end field

.field private mPosition:I
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "position"
    .end annotation
.end field

.field private mShortIntro:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "shortIntro"
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

.field private mTrackId:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "trackId"
    .end annotation
.end field

.field private mType:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "type"
    .end annotation
.end field

.field private mUpdateTime:J
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "updateTime"
    .end annotation
.end field

.field private off:Z

.field private offMsg:Ljava/lang/String;

.field private offTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 496
    new-instance v0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 459
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/BaseInfo;-><init>()V

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mPosition:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 462
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/BaseInfo;-><init>()V

    const-string v0, ""

    .line 54
    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mType:Ljava/lang/String;

    const/4 v0, 0x0

    .line 59
    iput v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mPosition:I

    .line 463
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mTrackId:J

    .line 464
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mDuration:I

    .line 465
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mIntro:Ljava/lang/String;

    .line 466
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mListenUrl:Ljava/lang/String;

    .line 467
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mTitle:Ljava/lang/String;

    .line 468
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mArtistId:J

    .line 469
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mSmallLogo:Ljava/lang/String;

    .line 470
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mLargeLogo:Ljava/lang/String;

    .line 471
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mMediumLogo:Ljava/lang/String;

    .line 472
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mArtistName:Ljava/lang/String;

    .line 473
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumLogo:Ljava/lang/String;

    .line 474
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mUpdateTime:J

    .line 475
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mCreateTime:J

    .line 476
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumId:J

    .line 477
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumName:Ljava/lang/String;

    .line 478
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mOrderNum:I

    .line 479
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mShortIntro:Ljava/lang/String;

    .line 480
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mPlayCount:J

    .line 481
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mType:Ljava/lang/String;

    .line 482
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mFromSource:Ljava/lang/String;

    .line 483
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mPosition:I

    .line 484
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mCategoryName:Ljava/lang/String;

    .line 485
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mChannelId:I

    .line 486
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mOriginalAlbumId:J

    .line 487
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mPaymentType:I

    .line 488
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAuthorized:Z

    .line 489
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumPaymentType:I

    .line 490
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v0

    :goto_1
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumAuthorized:Z

    .line 491
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-eqz v1, :cond_2

    move v0, v2

    :cond_2
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->off:Z

    .line 492
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->offTime:J

    .line 493
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->offMsg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 337
    instance-of v2, p1, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    if-nez v2, :cond_1

    goto :goto_1

    .line 338
    :cond_1
    check-cast p1, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 339
    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mTrackId:J

    iget-wide v4, p1, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mTrackId:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumId:J

    iget-wide v4, p1, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumId:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getAlbumId()J
    .locals 2

    .line 243
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumId:J

    return-wide v0
.end method

.method public getAlbumLogo()Ljava/lang/String;
    .locals 1

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumName:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumPaymentType()I
    .locals 1

    .line 279
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumPaymentType:I

    return v0
.end method

.method public getArtistId()J
    .locals 2

    .line 183
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mArtistId:J

    return-wide v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mArtistName:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryName()Ljava/lang/String;
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getChannelId()I
    .locals 1

    .line 263
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mChannelId:I

    return v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 231
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mCreateTime:J

    return-wide v0
.end method

.method public getDuration()I
    .locals 1

    .line 151
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mDuration:I

    return v0
.end method

.method public getFromSource()Ljava/lang/String;
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mFromSource:Ljava/lang/String;

    return-object v0
.end method

.method public getIntro()Ljava/lang/String;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mIntro:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeLogo()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mLargeLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getListenUrl()Ljava/lang/String;
    .locals 1

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mListenUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMediumLogo()Ljava/lang/String;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mMediumLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getOffMsg()Ljava/lang/String;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->offMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getOffTime()J
    .locals 2

    .line 319
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->offTime:J

    return-wide v0
.end method

.method public getOrderNum()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mOrderNum:I

    return v0
.end method

.method public getOriginalAlbumId()J
    .locals 2

    .line 271
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mOriginalAlbumId:J

    return-wide v0
.end method

.method public getPaymentType()I
    .locals 1

    .line 299
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mPaymentType:I

    return v0
.end method

.method public getPlayCount()J
    .locals 2

    .line 127
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mPlayCount:J

    return-wide v0
.end method

.method public getPosition()I
    .locals 1

    .line 135
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mPosition:I

    return v0
.end method

.method public getShortIntro()Ljava/lang/String;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mShortIntro:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallLogo()Ljava/lang/String;
    .locals 1

    .line 191
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mSmallLogo:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackId()J
    .locals 2

    .line 143
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mTrackId:J

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 227
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mUpdateTime:J

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 344
    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mTrackId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isAlbumAuthorized()Z
    .locals 1

    .line 287
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumAuthorized:Z

    return v0
.end method

.method public isAuthorized()Z
    .locals 1

    .line 303
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAuthorized:Z

    return v0
.end method

.method public isOff()Z
    .locals 1

    .line 311
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->off:Z

    return v0
.end method

.method public setAlbumAuthorized(Z)V
    .locals 0

    .line 291
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumAuthorized:Z

    return-void
.end method

.method public setAlbumId(J)V
    .locals 0

    .line 239
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumId:J

    return-void
.end method

.method public setAlbumLogo(Ljava/lang/String;)V
    .locals 0

    .line 115
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumLogo:Ljava/lang/String;

    return-void
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumName:Ljava/lang/String;

    return-void
.end method

.method public setAlbumPaymentType(I)V
    .locals 0

    .line 283
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumPaymentType:I

    return-void
.end method

.method public setArtistId(J)V
    .locals 0

    .line 187
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mArtistId:J

    return-void
.end method

.method public setArtistName(Ljava/lang/String;)V
    .locals 0

    .line 203
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mArtistName:Ljava/lang/String;

    return-void
.end method

.method public setAuthorized(Z)V
    .locals 0

    .line 307
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAuthorized:Z

    return-void
.end method

.method public setCategoryName(Ljava/lang/String;)V
    .locals 0

    .line 107
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mCategoryName:Ljava/lang/String;

    return-void
.end method

.method public setChannelId(I)V
    .locals 0

    .line 267
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mChannelId:I

    return-void
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 235
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mCreateTime:J

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    .line 155
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mDuration:I

    return-void
.end method

.method public setFromSource(Ljava/lang/String;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mFromSource:Ljava/lang/String;

    return-void
.end method

.method public setIntro(Ljava/lang/String;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mIntro:Ljava/lang/String;

    return-void
.end method

.method public setLargeLogo(Ljava/lang/String;)V
    .locals 0

    .line 211
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mLargeLogo:Ljava/lang/String;

    return-void
.end method

.method public setListenUrl(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mListenUrl:Ljava/lang/String;

    return-void
.end method

.method public setMediumLogo(Ljava/lang/String;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mMediumLogo:Ljava/lang/String;

    return-void
.end method

.method public setOff(Z)V
    .locals 0

    .line 315
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->off:Z

    return-void
.end method

.method public setOffMsg(Ljava/lang/String;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->offMsg:Ljava/lang/String;

    return-void
.end method

.method public setOffTime(J)V
    .locals 0

    .line 323
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->offTime:J

    return-void
.end method

.method public setOrderNum(I)V
    .locals 0

    .line 259
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mOrderNum:I

    return-void
.end method

.method public setOriginalAlbumId(J)V
    .locals 0

    .line 275
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mOriginalAlbumId:J

    return-void
.end method

.method public setPaymentType(I)V
    .locals 0

    .line 295
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mPaymentType:I

    return-void
.end method

.method public setPlayCount(J)V
    .locals 0

    .line 131
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mPlayCount:J

    return-void
.end method

.method public setPosition(I)V
    .locals 0

    .line 139
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mPosition:I

    return-void
.end method

.method public setShortIntro(Ljava/lang/String;)V
    .locals 0

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mShortIntro:Ljava/lang/String;

    return-void
.end method

.method public setSmallLogo(Ljava/lang/String;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mSmallLogo:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 179
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTrackId(J)V
    .locals 0

    .line 147
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mTrackId:J

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mType:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 223
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mUpdateTime:J

    return-void
.end method

.method public toSimpleString()Ljava/lang/String;
    .locals 4

    .line 349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgramBean{"

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "trackId="

    .line 351
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mTrackId:J

    .line 352
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mDuration:I

    .line 354
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mIntro:Ljava/lang/String;

    .line 355
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    .line 356
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", artistId="

    .line 357
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mArtistId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", smallLogo=\'"

    .line 358
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mSmallLogo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", artistName=\'"

    .line 359
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mArtistName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", albumId="

    .line 360
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", albumName=\'"

    .line 361
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", channelId="

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mChannelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", originalAlbumId="

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mOriginalAlbumId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", paymentType="

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mPaymentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", authorized="

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAuthorized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ProgramBean{"

    .line 374
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "trackId="

    .line 375
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mTrackId:J

    .line 376
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    .line 377
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mDuration:I

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mIntro:Ljava/lang/String;

    .line 379
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", listenUrl=\'"

    .line 380
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mListenUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    .line 381
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", artistId="

    .line 382
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mArtistId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", smallLogo=\'"

    .line 383
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mSmallLogo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", largeLogo=\'"

    .line 384
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mLargeLogo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mediumLogo=\'"

    .line 385
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mMediumLogo:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", artistName=\'"

    .line 386
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mArtistName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", updateTime="

    .line 387
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mUpdateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", albumId="

    .line 388
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", albumName=\'"

    .line 389
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", fromSource="

    .line 390
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mFromSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", channelId="

    .line 391
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mChannelId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", originalAlbumId="

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mOriginalAlbumId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", paymentType="

    .line 393
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mPaymentType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", authorized="

    .line 394
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAuthorized:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", off="

    .line 395
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->off:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", offTime="

    .line 396
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->offTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 397
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 426
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mTrackId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 427
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mDuration:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 428
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mIntro:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 429
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mListenUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 430
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 431
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mArtistId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 432
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mSmallLogo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 433
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mLargeLogo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 434
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mMediumLogo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 435
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mArtistName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 436
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumLogo:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 437
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 438
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mCreateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 439
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 440
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 441
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mOrderNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 442
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mShortIntro:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 443
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mPlayCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 444
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 445
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mFromSource:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 446
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mPosition:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 447
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mCategoryName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 448
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mChannelId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 449
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mOriginalAlbumId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 450
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mPaymentType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 451
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAuthorized:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 452
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumPaymentType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 453
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->mAlbumAuthorized:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 454
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->off:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 455
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->offTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 456
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->offMsg:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
