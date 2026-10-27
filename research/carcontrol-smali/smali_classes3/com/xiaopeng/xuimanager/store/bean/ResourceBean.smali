.class public Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;
.super Ljava/lang/Object;
.source "ResourceBean.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;",
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

    .line 16
    new-instance v0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 58
    iput v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mStatus:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 58
    iput v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mStatus:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mDownloadUrl:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mRscId:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mRscName:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mRscIcon:Ljava/lang/String;

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mExpandContent:Ljava/lang/String;

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mDes:Ljava/lang/String;

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mPrice:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mStatus:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mCreateTime:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mType:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mExpandInstalledContent:Ljava/lang/String;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mSource:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCreateTime()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mCreateTime:Ljava/lang/String;

    return-object v0
.end method

.method public getDes()Ljava/lang/String;
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mDes:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExpandContent()Ljava/lang/String;
    .locals 1

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mExpandContent:Ljava/lang/String;

    return-object v0
.end method

.method public getExpandInstalledContent()Ljava/lang/String;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mExpandInstalledContent:Ljava/lang/String;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 188
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getRscIcon()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mRscIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getRscId()Ljava/lang/String;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mRscId:Ljava/lang/String;

    return-object v0
.end method

.method public getRscName()Ljava/lang/String;
    .locals 1

    .line 275
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mRscName:Ljava/lang/String;

    return-object v0
.end method

.method public getSource()I
    .locals 1

    .line 115
    iget v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mSource:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 315
    iget v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mStatus:I

    return v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mType:Ljava/lang/String;

    return-object v0
.end method

.method public setCreateTime(Ljava/lang/String;)V
    .locals 0

    .line 347
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mCreateTime:Ljava/lang/String;

    return-void
.end method

.method public setDes(Ljava/lang/String;)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mDes:Ljava/lang/String;

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 251
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mDownloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setExpandContent(Ljava/lang/String;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mExpandContent:Ljava/lang/String;

    return-void
.end method

.method public setExpandInstalledContent(Ljava/lang/String;)V
    .locals 0

    .line 139
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mExpandInstalledContent:Ljava/lang/String;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .line 196
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mPrice:Ljava/lang/String;

    return-void
.end method

.method public setRscIcon(Ljava/lang/String;)V
    .locals 0

    .line 299
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mRscIcon:Ljava/lang/String;

    return-void
.end method

.method public setRscId(Ljava/lang/String;)V
    .locals 0

    .line 267
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mRscId:Ljava/lang/String;

    return-void
.end method

.method public setRscName(Ljava/lang/String;)V
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mRscName:Ljava/lang/String;

    return-void
.end method

.method public setSource(I)V
    .locals 0

    .line 123
    iput p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mSource:I

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 331
    iput p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mStatus:I

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 0

    .line 213
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mType:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 356
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ResourceBean{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "mDownloadUrl=\'"

    .line 357
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mRscId=\'"

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mRscId:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mRscName=\'"

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mRscName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mRscIcon=\'"

    .line 360
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mRscIcon:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", mStatus="

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mStatus:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mExpandContent="

    .line 362
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mExpandContent:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mExpandInstalledContent="

    .line 363
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mExpandInstalledContent:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCreateTime=\'"

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mCreateTime:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 366
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 224
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 225
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mRscId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 226
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mRscName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 227
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mRscIcon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 228
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mExpandContent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 229
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mDes:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 230
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mPrice:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 231
    iget p2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 232
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mCreateTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 233
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 234
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mExpandInstalledContent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 235
    iget p2, p0, Lcom/xiaopeng/xuimanager/store/bean/ResourceBean;->mSource:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
