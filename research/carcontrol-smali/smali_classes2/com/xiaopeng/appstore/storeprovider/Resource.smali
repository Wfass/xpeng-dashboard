.class public Lcom/xiaopeng/appstore/storeprovider/Resource;
.super Ljava/lang/Object;
.source "Resource.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/appstore/storeprovider/Resource;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCreateTime:J

.field private mDes:Ljava/lang/String;

.field private mDownloadUrl:Ljava/lang/String;

.field private mExpandContent:Ljava/lang/String;

.field private mExpandInstalledContent:Ljava/lang/String;

.field private mLocalData:Landroid/os/Bundle;

.field private mPrice:Ljava/lang/String;

.field private mResType:I

.field private mRscIcon:Ljava/lang/String;

.field private mRscId:Ljava/lang/String;

.field private mRscName:Ljava/lang/String;

.field private mUpdateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 179
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/Resource$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/Resource$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/Resource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mDownloadUrl:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscId:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscName:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscIcon:Ljava/lang/String;

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mCreateTime:J

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mUpdateTime:J

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mExpandContent:Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mExpandInstalledContent:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mDes:Ljava/lang/String;

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mPrice:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mResType:I

    .line 155
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mLocalData:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 80
    iget-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mCreateTime:J

    return-wide v0
.end method

.method public getDes()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mDes:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExpandContent()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mExpandContent:Ljava/lang/String;

    return-object v0
.end method

.method public getExpandInstalledContent()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mExpandInstalledContent:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalData()Landroid/os/Bundle;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mLocalData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getResType()I
    .locals 1

    .line 128
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mResType:I

    return v0
.end method

.method public getRscIcon()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getRscId()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscId:Ljava/lang/String;

    return-object v0
.end method

.method public getRscName()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 88
    iget-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mUpdateTime:J

    return-wide v0
.end method

.method public setCreateTime(J)V
    .locals 0

    .line 84
    iput-wide p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mCreateTime:J

    return-void
.end method

.method public setDes(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mDes:Ljava/lang/String;

    return-void
.end method

.method public setDownloadUrl(Ljava/lang/String;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mDownloadUrl:Ljava/lang/String;

    return-void
.end method

.method public setExpandContent(Ljava/lang/String;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mExpandContent:Ljava/lang/String;

    return-void
.end method

.method public setExpandInstalledContent(Ljava/lang/String;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mExpandInstalledContent:Ljava/lang/String;

    return-void
.end method

.method public setLocalData(Landroid/os/Bundle;)V
    .locals 0

    .line 140
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mLocalData:Landroid/os/Bundle;

    return-void
.end method

.method public setPrice(Ljava/lang/String;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mPrice:Ljava/lang/String;

    return-void
.end method

.method public setResType(I)V
    .locals 0

    .line 132
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mResType:I

    return-void
.end method

.method public setRscIcon(Ljava/lang/String;)V
    .locals 0

    .line 76
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscIcon:Ljava/lang/String;

    return-void
.end method

.method public setRscId(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscId:Ljava/lang/String;

    return-void
.end method

.method public setRscName(Ljava/lang/String;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscName:Ljava/lang/String;

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 92
    iput-wide p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mUpdateTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Res{url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", rscId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", rscName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", rscIcon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscIcon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", create=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mCreateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", update="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mUpdateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", expandContent=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mExpandContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", expandInstalled=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mExpandInstalledContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", des=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mDes:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", price=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mPrice:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mResType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 160
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 161
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscIcon:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 164
    iget-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mCreateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 165
    iget-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 166
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mExpandContent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 167
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mExpandInstalledContent:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mDes:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 169
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mPrice:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 170
    iget p2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mResType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    iget-object p2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mLocalData:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
