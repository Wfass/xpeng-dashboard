.class public Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;
.super Ljava/lang/Object;
.source "MediaInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field private static final AMBIENTLIGHT_DEFAULT_COLOR:I = 0x5

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final FAVOR_NOT_SET:I = 0x0

.field public static final FAVOR_NOT_SUPPORT:I = -0x1

.field public static final FAVOR_SET:I = 0x1

.field public static final MEDIA_SOURCE_BT:I = 0x3

.field public static final MEDIA_SOURCE_DOLBY:I = 0x6

.field public static final MEDIA_SOURCE_FM:I = 0x1

.field public static final MEDIA_SOURCE_MUSIC:I = 0x0

.field public static final MEDIA_SOURCE_MUSIC_KUGOU:I = 0x9

.field public static final MEDIA_SOURCE_MUSIC_NETEASE:I = 0x8

.field public static final MEDIA_SOURCE_MUSIC_QQ:I = 0x7

.field public static final MEDIA_SOURCE_READING:I = 0x2

.field public static final MEDIA_SOURCE_SHOWMODE:I = 0x4

.field public static final MEDIA_SOURCE_USB:I = 0x5

.field public static final MEDIA_STYLE_CLASSIC:I = 0x5

.field public static final MEDIA_STYLE_DANCE:I = 0xb

.field public static final MEDIA_STYLE_DEFAULT:I = -0x1

.field public static final MEDIA_STYLE_FOLK:I = 0x8

.field public static final MEDIA_STYLE_JAZZ:I = 0x2

.field public static final MEDIA_STYLE_LIGHT:I = 0x4

.field public static final MEDIA_STYLE_MOVIE:I = 0x7

.field public static final MEDIA_STYLE_OPERA:I = 0x6

.field public static final MEDIA_STYLE_OST:I = 0xa

.field public static final MEDIA_STYLE_POP:I = 0x1

.field public static final MEDIA_STYLE_RAP:I = 0x9

.field public static final MEDIA_STYLE_ROCK:I = 0x3

.field private static final STYLECOLOR:[I

.field public static final TAG:Ljava/lang/String; = "MediaInfo"


# instance fields
.field private mAlbum:Ljava/lang/String;

.field private mAlbumBmp:Landroid/graphics/Bitmap;

.field private mAlbumUri:Ljava/lang/String;

.field private mArtist:Ljava/lang/String;

.field private mExtras:Landroid/os/Bundle;

.field private mFavor:I

.field private mId:Ljava/lang/String;

.field private mIsAudition:Z

.field private mIsXpMusic:Z

.field private mPackageName:Ljava/lang/String;

.field private mQualityName:Ljava/lang/String;

.field private mSource:I

.field private mStyle:I

.field private mStyleColor:I

.field private mStyleName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 35
    fill-array-data v0, :array_0

    sput-object v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->STYLECOLOR:[I

    .line 75
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mStyle:I

    const/4 v1, 0x5

    .line 58
    iput v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mStyleColor:I

    const/4 v1, 0x0

    .line 59
    iput v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mSource:I

    .line 61
    iput v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mFavor:I

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 57
    iput v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mStyle:I

    const/4 v1, 0x5

    .line 58
    iput v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mStyleColor:I

    const/4 v1, 0x0

    .line 59
    iput v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mSource:I

    .line 61
    iput v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mFavor:I

    .line 97
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo$1;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private getBitmapByteCount()I
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mAlbumBmp:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 480
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private static getColor(I)I
    .locals 2

    if-ltz p0, :cond_0

    .line 425
    sget-object v0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->STYLECOLOR:[I

    array-length v1, v0

    if-ge p0, v1, :cond_0

    .line 426
    aget p0, v0, p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    :goto_0
    return p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAlbum()Ljava/lang/String;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mAlbum:Ljava/lang/String;

    return-object v0
.end method

.method public getAlbumBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mAlbumBmp:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getAlbumUri()Ljava/lang/String;
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mAlbumUri:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mArtist:Ljava/lang/String;

    return-object v0
.end method

.method public getFavor()I
    .locals 1

    .line 285
    iget v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mFavor:I

    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 383
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getQualityName()Ljava/lang/String;
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mQualityName:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()I
    .locals 1

    .line 253
    iget v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mSource:I

    return v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mExtras:Landroid/os/Bundle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 442
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getText(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 444
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    return-object v1
.end method

.method public getStyle()I
    .locals 1

    .line 236
    iget v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mStyle:I

    return v0
.end method

.method public getStyleColor()I
    .locals 1

    .line 415
    iget v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mStyleColor:I

    return v0
.end method

.method public getStyleName()Ljava/lang/String;
    .locals 1

    .line 351
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mStyleName:Ljava/lang/String;

    return-object v0
.end method

.method public getText(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    .line 460
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public isAudition()Z
    .locals 1

    .line 319
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mIsAudition:Z

    return v0
.end method

.method public isDefault()Z
    .locals 2

    const-string v0, "isDefault"

    .line 494
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 495
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 496
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isDefaultContent()Z
    .locals 2

    const-string v0, "isDefaultContent"

    .line 502
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 503
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 504
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isFavor()Z
    .locals 2

    .line 302
    iget v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mFavor:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isLive()Z
    .locals 2

    const-string v0, "isLive"

    .line 486
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 488
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isXpMusic()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mIsXpMusic:Z

    return v0
.end method

.method public putString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 470
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 471
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mExtras:Landroid/os/Bundle;

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    .line 474
    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mId:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mTitle:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mAlbum:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mArtist:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mStyle:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mStyleColor:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mSource:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mIsXpMusic:Z

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mFavor:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mIsAudition:Z

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mAlbumUri:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mStyleName:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mQualityName:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mPackageName:Ljava/lang/String;

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 160
    sget-object v0, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mAlbumBmp:Landroid/graphics/Bitmap;

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    .line 162
    iput-object v0, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mAlbumBmp:Landroid/graphics/Bitmap;

    .line 164
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/os/Bundle;->setDefusable(Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method public setAlbum(Ljava/lang/String;)V
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mAlbum:Ljava/lang/String;

    return-void
.end method

.method public setAlbumBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 407
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mAlbumBmp:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setAlbumUri(Ljava/lang/String;)V
    .locals 0

    .line 343
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mAlbumUri:Ljava/lang/String;

    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mArtist:Ljava/lang/String;

    return-void
.end method

.method public setAudition(Z)V
    .locals 0

    .line 327
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mIsAudition:Z

    return-void
.end method

.method public setFavor(I)V
    .locals 0

    .line 293
    iput p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mFavor:I

    return-void
.end method

.method public setFavor(Z)V
    .locals 0

    .line 311
    iput p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mFavor:I

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mId:Ljava/lang/String;

    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method public setQualityName(Ljava/lang/String;)V
    .locals 0

    .line 375
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mQualityName:Ljava/lang/String;

    return-void
.end method

.method public setSource(I)V
    .locals 0

    .line 261
    iput p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mSource:I

    return-void
.end method

.method public setStyle(I)V
    .locals 0

    .line 244
    iput p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mStyle:I

    .line 245
    invoke-static {p1}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mStyleColor:I

    return-void
.end method

.method public setStyleName(Ljava/lang/String;)V
    .locals 0

    .line 359
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mStyleName:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setXpMusic(Z)V
    .locals 0

    .line 277
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mIsXpMusic:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 511
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaInfo{mId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mTitle=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mAlbum=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mAlbum:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mArtist=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mArtist:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mStyle="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mStyle:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mStyleColor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mStyleColor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mSource="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mSource:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mIsXpMusic="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mIsXpMusic:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mFavor="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mFavor:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mIsAudition="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mIsAudition:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mAlbumUri=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mAlbumUri:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mStyleName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mStyleName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mQualityName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mQualityName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", mPackageName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAlbumBitmapSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 526
    invoke-direct {p0}, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->getBitmapByteCount()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 116
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 117
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 118
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mAlbum:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 119
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mArtist:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 120
    iget p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mStyle:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mStyleColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget-boolean p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mIsXpMusic:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mFavor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget-boolean p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mIsAudition:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mAlbumUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 127
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mStyleName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mQualityName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 129
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 130
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mAlbumBmp:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 131
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mAlbumBmp:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 134
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    :goto_0
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
