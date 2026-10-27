.class public Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;
.super Ljava/lang/Object;
.source "ResourceBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCreateTime:Ljava/lang/String;

.field private mDes:Ljava/lang/String;

.field private mDownloadUrl:Ljava/lang/String;

.field private mExpandContent:Ljava/lang/String;

.field private mExpandInstalledContent:Ljava/lang/String;

.field private mPrice:Ljava/lang/String;

.field private mRscIcon:Ljava/lang/String;

.field private mRscId:Ljava/lang/String;

.field private mRscName:Ljava/lang/String;

.field private mSource:I

.field private mStatus:I

.field private mType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 21
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mStatus:I

    .line 98
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mStatus:I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mDownloadUrl:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mRscId:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mRscName:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mRscIcon:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mExpandContent:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mDes:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mPrice:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mStatus:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mCreateTime:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mType:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mExpandInstalledContent:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mSource:I

    .line 113
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mCreateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDes()Ljava/lang/String;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mDes:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExpandContent()Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mExpandContent:Ljava/lang/String;

    return-object v0
.end method

.method public getExpandInstalledContent()Ljava/lang/String;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mExpandInstalledContent:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getRscIcon()Ljava/lang/String;
    .locals 1

    .line 296
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mRscIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getRscId()Ljava/lang/String;
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mRscId:Ljava/lang/String;

    return-object v0
.end method

.method public getRscName()Ljava/lang/String;
    .locals 1

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mRscName:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()I
    .locals 1

    .line 120
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mSource:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 320
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mStatus:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "createTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "createTime"
        }
    .end annotation

    .line 352
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mCreateTime:Ljava/lang/String;

    .line 353
    return-void
.end method

.method public setDes(Ljava/lang/String;)V
    .locals 0
    .param p1, "des"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "des"
        }
    .end annotation

    .line 185
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mDes:Ljava/lang/String;

    .line 186
    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0
    .param p1, "downloadUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadUrl"
        }
    .end annotation

    .line 256
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mDownloadUrl:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setExpandContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "expandContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expandContent"
        }
    .end annotation

    .line 160
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mExpandContent:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setExpandInstalledContent(Ljava/lang/String;)V
    .locals 0
    .param p1, "expandInstalledContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "expandInstalledContent"
        }
    .end annotation

    .line 144
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mExpandInstalledContent:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0
    .param p1, "price"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "price"
        }
    .end annotation

    .line 201
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mPrice:Ljava/lang/String;

    .line 202
    return-void
.end method

.method public setRscIcon(Ljava/lang/String;)V
    .locals 0
    .param p1, "rscIcon"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rscIcon"
        }
    .end annotation

    .line 304
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mRscIcon:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public setRscId(Ljava/lang/String;)V
    .locals 0
    .param p1, "rscId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rscId"
        }
    .end annotation

    .line 272
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mRscId:Ljava/lang/String;

    .line 273
    return-void
.end method

.method public setRscName(Ljava/lang/String;)V
    .locals 0
    .param p1, "rscName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rscName"
        }
    .end annotation

    .line 288
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mRscName:Ljava/lang/String;

    .line 289
    return-void
.end method

.method public setSource(I)V
    .locals 0
    .param p1, "source"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    .line 128
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mSource:I

    .line 129
    return-void
.end method

.method public setStatus(I)V
    .locals 0
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    .line 336
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mStatus:I

    .line 337
    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 218
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mType:Ljava/lang/String;

    .line 219
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResourceBean{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "mDownloadUrl=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 363
    const-string v2, ", mRscId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mRscId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 364
    const-string v2, ", mRscName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mRscName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 365
    const-string v2, ", mRscIcon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mRscIcon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    const-string v2, ", mStatus="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mStatus:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 367
    const-string v2, ", mExpandContent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mExpandContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    const-string v2, ", mExpandInstalledContent="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mExpandInstalledContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    const-string v2, ", mCreateTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mCreateTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 370
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I
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

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 230
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mRscId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 231
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mRscName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mRscIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mExpandContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mDes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mPrice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 236
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mCreateTime:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mExpandInstalledContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 240
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/store/bean/ResourceBean;->mSource:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 241
    return-void
.end method
