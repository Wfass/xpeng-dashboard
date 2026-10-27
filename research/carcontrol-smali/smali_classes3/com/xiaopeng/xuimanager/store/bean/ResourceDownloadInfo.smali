.class public Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;
.super Ljava/lang/Object;
.source "ResourceDownloadInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDownloadId:J

.field private mDownloadedBytes:J

.field private mExpandInstalledContent:Ljava/lang/String;

.field private mFileUri:Ljava/lang/String;

.field private mRscId:Ljava/lang/String;

.field private mSpeed:J

.field private mStatus:I

.field private mTitle:Ljava/lang/String;

.field private mTotalBytes:J

.field private mUrl:Ljava/lang/String;

.field private mVisibility:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 302
    new-instance v0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mStatus:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mStatus:I

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mDownloadId:J

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mRscId:Ljava/lang/String;

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mUrl:Ljava/lang/String;

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mTitle:Ljava/lang/String;

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mStatus:I

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mTotalBytes:J

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mDownloadedBytes:J

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mSpeed:J

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mVisibility:I

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mFileUri:Ljava/lang/String;

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mExpandInstalledContent:Ljava/lang/String;

    return-void
.end method

.method public static getCREATOR()Landroid/os/Parcelable$Creator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;",
            ">;"
        }
    .end annotation

    .line 123
    sget-object v0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDownloadId()J
    .locals 2

    .line 59
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mDownloadId:J

    return-wide v0
.end method

.method public getDownloadedBytes()J
    .locals 2

    .line 227
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mDownloadedBytes:J

    return-wide v0
.end method

.method public getExpandInstalledContent()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mExpandInstalledContent:Ljava/lang/String;

    return-object v0
.end method

.method public getFileUri()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mFileUri:Ljava/lang/String;

    return-object v0
.end method

.method public getRscId()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mRscId:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeed()J
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mSpeed:J

    return-wide v0
.end method

.method public getStatus()I
    .locals 1

    .line 187
    iget v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mStatus:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalBytes()J
    .locals 2

    .line 211
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mTotalBytes:J

    return-wide v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getVisibility()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mVisibility:I

    return v0
.end method

.method public setDownloadId(J)V
    .locals 0

    .line 67
    iput-wide p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mDownloadId:J

    return-void
.end method

.method public setDownloadedBytes(J)V
    .locals 0

    .line 235
    iput-wide p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mDownloadedBytes:J

    return-void
.end method

.method public setExpandInstalledContent(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mExpandInstalledContent:Ljava/lang/String;

    return-void
.end method

.method public setFileUri(Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mFileUri:Ljava/lang/String;

    return-void
.end method

.method public setRscId(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mRscId:Ljava/lang/String;

    return-void
.end method

.method public setSpeed(J)V
    .locals 0

    .line 99
    iput-wide p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mSpeed:J

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 203
    iput p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mStatus:I

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mTitle:Ljava/lang/String;

    return-void
.end method

.method public setTotalBytes(J)V
    .locals 0

    .line 219
    iput-wide p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mTotalBytes:J

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 171
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mUrl:Ljava/lang/String;

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 115
    iput p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mVisibility:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "download="

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mDownloadId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", resId=\'"

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mRscId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mTotalBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downloaded="

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mDownloadedBytes:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", speed="

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mSpeed:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 271
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mDownloadId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 272
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mRscId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 273
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    iget p2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mTotalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 277
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mDownloadedBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 278
    iget-wide v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mSpeed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 279
    iget p2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mVisibility:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mFileUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 281
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceDownloadInfo;->mExpandInstalledContent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
