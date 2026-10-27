.class public Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;
.super Ljava/lang/Object;
.source "ResourceDownloadInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;",
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

    .line 305
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mStatus:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 287
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mStatus:I

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mDownloadId:J

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mRscId:Ljava/lang/String;

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mUrl:Ljava/lang/String;

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mTitle:Ljava/lang/String;

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mStatus:I

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mTotalBytes:J

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mDownloadedBytes:J

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mSpeed:J

    .line 296
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mVisibility:I

    .line 297
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mFileUri:Ljava/lang/String;

    .line 298
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mExpandInstalledContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResInfo{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "download="

    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mDownloadId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", resId=\'"

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mRscId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", title=\'"

    .line 45
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", status="

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", total="

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mTotalBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", downloaded="

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mDownloadedBytes:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", speed="

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mSpeed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 53
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 274
    iget-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mDownloadId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 275
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mRscId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 276
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 278
    iget p2, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 279
    iget-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mTotalBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 280
    iget-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mDownloadedBytes:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 281
    iget-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mSpeed:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 282
    iget p2, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mVisibility:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 283
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mFileUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 284
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceDownloadInfo;->mExpandInstalledContent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
