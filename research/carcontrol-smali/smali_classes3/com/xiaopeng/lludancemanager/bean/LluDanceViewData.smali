.class public Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;
.super Ljava/lang/Object;
.source "LluDanceViewData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;",
            ">;"
        }
    .end annotation
.end field

.field private static final THUMB_NAIL_POSTFIX:Ljava/lang/String; = "?x-oss-process=image/resize,h_160"


# instance fields
.field private mAuthor:Ljava/lang/String;

.field private mDownloadUrl:Ljava/lang/String;

.field private mDownloadedPercentage:D

.field private mDuration:J

.field private mEffectName:Ljava/lang/String;

.field private mGson:Lcom/google/gson/Gson;

.field private mId:Ljava/lang/String;

.field private mImgUrl:Ljava/lang/String;

.field private mResource:Lcom/xiaopeng/xuimanager/operation/OperationResource;

.field private mResourceFrom:Ljava/lang/String;

.field private mState:I

.field private mTitle:Ljava/lang/String;

.field private mUpdateTime:J

.field private mVideoPath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 234
    new-instance v0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData$1;

    invoke-direct {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mGson:Lcom/google/gson/Gson;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mTitle:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mAuthor:Ljava/lang/String;

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mImgUrl:Ljava/lang/String;

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mId:Ljava/lang/String;

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mDownloadUrl:Ljava/lang/String;

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mVideoPath:Ljava/lang/String;

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mState:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mDuration:J

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mDownloadedPercentage:D

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mEffectName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resource"
        }
    .end annotation

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mGson:Lcom/google/gson/Gson;

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mResource:Lcom/xiaopeng/xuimanager/operation/OperationResource;

    .line 39
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mId:Ljava/lang/String;

    .line 41
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->refresh(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V

    .line 43
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getUpdateTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mUpdateTime:J

    .line 44
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceFrom()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mResourceFrom:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJDLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "title",
            "author",
            "imgUrl",
            "id",
            "downloadUrl",
            "state",
            "duration",
            "downloadedPercentage",
            "effectName",
            "videoPath"
        }
    .end annotation

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mGson:Lcom/google/gson/Gson;

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mTitle:Ljava/lang/String;

    .line 50
    iput-object p2, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mAuthor:Ljava/lang/String;

    .line 51
    iput-object p3, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mImgUrl:Ljava/lang/String;

    .line 52
    iput-object p4, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mId:Ljava/lang/String;

    .line 53
    iput-object p5, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mDownloadUrl:Ljava/lang/String;

    .line 54
    iput p6, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mState:I

    .line 55
    iput-wide p7, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mDuration:J

    .line 56
    iput-wide p9, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mDownloadedPercentage:D

    .line 57
    iput-object p11, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mEffectName:Ljava/lang/String;

    .line 58
    iput-object p12, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mVideoPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAuthor()Ljava/lang/String;
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mAuthor:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadedPercentage()D
    .locals 2

    .line 188
    iget-wide v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mDownloadedPercentage:D

    return-wide v0
.end method

.method public getDuration()J
    .locals 2

    .line 180
    iget-wide v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mDuration:J

    return-wide v0
.end method

.method public getEffectName()Ljava/lang/String;
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mEffectName:Ljava/lang/String;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public getImageThumbnailUrl()Ljava/lang/String;
    .locals 2

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mImgUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "?x-oss-process=image/resize,h_160"

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getImgUrl()Ljava/lang/String;
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mImgUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getOperationResource()Lcom/xiaopeng/xuimanager/operation/OperationResource;
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mResource:Lcom/xiaopeng/xuimanager/operation/OperationResource;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .line 147
    iget v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mState:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 111
    iget-wide v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mUpdateTime:J

    return-wide v0
.end method

.method public getVideoPath()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mVideoPath:Ljava/lang/String;

    return-object v0
.end method

.method public refresh(Lcom/xiaopeng/xuimanager/operation/OperationResource;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resource"
        }
    .end annotation

    .line 62
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 63
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mTitle:Ljava/lang/String;

    .line 65
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceFrom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "preset_resource"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExtraData()Ljava/lang/String;

    move-result-object v1

    const-class v2, [Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataForPreset;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataForPreset;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_a

    .line 68
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataForPreset;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 69
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataForPreset;->getAuthor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mAuthor:Ljava/lang/String;

    .line 71
    :cond_1
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataForPreset;->getDuration()I

    move-result v1

    if-lez v1, :cond_2

    .line 72
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataForPreset;->getDuration()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mDuration:J

    .line 74
    :cond_2
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataForPreset;->getRscImage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 75
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataForPreset;->getRscImage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mImgUrl:Ljava/lang/String;

    .line 77
    :cond_3
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataForPreset;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 78
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataForPreset;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mVideoPath:Ljava/lang/String;

    .line 80
    :cond_4
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataForPreset;->getEffectName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 81
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraDataForPreset;->getEffectName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mEffectName:Ljava/lang/String;

    goto :goto_0

    .line 85
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mGson:Lcom/google/gson/Gson;

    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getExtraData()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraData;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraData;

    if-eqz v0, :cond_a

    .line 87
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraData;->getAuthor()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 88
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraData;->getAuthor()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mAuthor:Ljava/lang/String;

    .line 90
    :cond_6
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraData;->getDuration()I

    move-result v1

    if-lez v1, :cond_7

    .line 91
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraData;->getDuration()I

    move-result v1

    int-to-long v1, v1

    iput-wide v1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mDuration:J

    .line 93
    :cond_7
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceIcon()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 94
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getResourceIcon()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mImgUrl:Ljava/lang/String;

    .line 96
    :cond_8
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraData;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 97
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraData;->getVideoPath()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mVideoPath:Ljava/lang/String;

    .line 99
    :cond_9
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraData;->getEffectName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    .line 100
    invoke-virtual {v0}, Lcom/xiaopeng/lludancemanager/bean/LluDanceExtraData;->getEffectName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mEffectName:Ljava/lang/String;

    .line 105
    :cond_a
    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 106
    invoke-virtual {p1}, Lcom/xiaopeng/xuimanager/operation/OperationResource;->getDownloadUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mDownloadUrl:Ljava/lang/String;

    :cond_b
    return-void
.end method

.method public setAuthor(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "author"
        }
    .end annotation

    .line 143
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mAuthor:Ljava/lang/String;

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadUrl"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mDownloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setDownloadedPercentage(D)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadedPercentage"
        }
    .end annotation

    .line 192
    iput-wide p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mDownloadedPercentage:D

    return-void
.end method

.method public setDuration(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duration"
        }
    .end annotation

    .line 184
    iput-wide p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mDuration:J

    return-void
.end method

.method public setEffectName(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "effectname"
        }
    .end annotation

    .line 127
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mEffectName:Ljava/lang/String;

    return-void
.end method

.method public setId(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    .line 176
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mId:Ljava/lang/String;

    return-void
.end method

.method public setImgUrl(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "imgUrl"
        }
    .end annotation

    .line 168
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mImgUrl:Ljava/lang/String;

    return-void
.end method

.method public setState(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 151
    iput p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mState:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "title"
        }
    .end annotation

    .line 159
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "videoPath"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mVideoPath:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LluDanceViewData{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mTitle=\'"

    .line 249
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mAuthor=\'"

    .line 250
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mAuthor:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mImgUrl=\'"

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mImgUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mId=\'"

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mDownloadUrl=\'"

    .line 253
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mState="

    .line 254
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mDuration="

    .line 255
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mDuration:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", mDownloadedPercentage="

    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mDownloadedPercentage:D

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", mVideoPath="

    .line 257
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mVideoPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mEffectName="

    .line 258
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mEffectName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mUpdateTime="

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mUpdateTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 260
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dest",
            "flags"
        }
    .end annotation

    .line 217
    iget-object p2, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 218
    iget-object p2, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mAuthor:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 219
    iget-object p2, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mImgUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 220
    iget-object p2, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 221
    iget-object p2, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 222
    iget-object p2, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mVideoPath:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 223
    iget p2, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mState:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 224
    iget-wide v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 225
    iget-wide v0, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mDownloadedPercentage:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 226
    iget-object p2, p0, Lcom/xiaopeng/lludancemanager/bean/LluDanceViewData;->mEffectName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    return-void
.end method
