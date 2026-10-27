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
.field private mClientStatus:I

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

    .line 190
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/Resource$1;

    invoke-direct {v0}, Lcom/xiaopeng/appstore/storeprovider/Resource$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/Resource;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mDownloadUrl:Ljava/lang/String;

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscId:Ljava/lang/String;

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscName:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscIcon:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mCreateTime:J

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mUpdateTime:J

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mExpandContent:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mExpandInstalledContent:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mDes:Ljava/lang/String;

    .line 162
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mPrice:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mResType:I

    .line 164
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mLocalData:Landroid/os/Bundle;

    .line 165
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mClientStatus:I

    .line 166
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 187
    const/4 v0, 0x0

    return v0
.end method

.method public getClientStatus()I
    .locals 1

    .line 145
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mClientStatus:I

    return v0
.end method

.method public getCreateTime()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mCreateTime:J

    return-wide v0
.end method

.method public getDes()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mDes:Ljava/lang/String;

    return-object v0
.end method

.method public getDownloadUrl()Ljava/lang/String;
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mDownloadUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getExpandContent()Ljava/lang/String;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mExpandContent:Ljava/lang/String;

    return-object v0
.end method

.method public getExpandInstalledContent()Ljava/lang/String;
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mExpandInstalledContent:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalData()Landroid/os/Bundle;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mLocalData:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPrice()Ljava/lang/String;
    .locals 1

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mPrice:Ljava/lang/String;

    return-object v0
.end method

.method public getResType()I
    .locals 1

    .line 129
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mResType:I

    return v0
.end method

.method public getRscIcon()Ljava/lang/String;
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscIcon:Ljava/lang/String;

    return-object v0
.end method

.method public getRscId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscId:Ljava/lang/String;

    return-object v0
.end method

.method public getRscName()Ljava/lang/String;
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscName:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 89
    iget-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mUpdateTime:J

    return-wide v0
.end method

.method public setClientStatus(I)V
    .locals 0
    .param p1, "mClientStatus"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mClientStatus"
        }
    .end annotation

    .line 149
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mClientStatus:I

    .line 150
    return-void
.end method

.method public setCreateTime(J)V
    .locals 0
    .param p1, "createTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "createTime"
        }
    .end annotation

    .line 85
    iput-wide p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mCreateTime:J

    .line 86
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

    .line 117
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mDes:Ljava/lang/String;

    .line 118
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

    .line 53
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mDownloadUrl:Ljava/lang/String;

    .line 54
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

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mExpandContent:Ljava/lang/String;

    .line 102
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

    .line 109
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mExpandInstalledContent:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setLocalData(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "localData"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "localData"
        }
    .end annotation

    .line 141
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mLocalData:Landroid/os/Bundle;

    .line 142
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

    .line 125
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mPrice:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setResType(I)V
    .locals 0
    .param p1, "resType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "resType"
        }
    .end annotation

    .line 133
    iput p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mResType:I

    .line 134
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

    .line 77
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscIcon:Ljava/lang/String;

    .line 78
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

    .line 61
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscId:Ljava/lang/String;

    .line 62
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

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscName:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0
    .param p1, "updateTime"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "updateTime"
        }
    .end annotation

    .line 93
    iput-wide p1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mUpdateTime:J

    .line 94
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Res{url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rscId=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscId:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rscName=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", rscIcon=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscIcon:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", create=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mCreateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", update="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mUpdateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", expandContent=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mExpandContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", expandInstalled=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mExpandInstalledContent:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", des=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mDes:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", price=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mPrice:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", type=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mResType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
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

    .line 170
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mDownloadUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 172
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mRscIcon:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 174
    iget-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mCreateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 175
    iget-wide v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mUpdateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mExpandContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mExpandInstalledContent:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mDes:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mPrice:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mResType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget-object v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mLocalData:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 182
    iget v0, p0, Lcom/xiaopeng/appstore/storeprovider/Resource;->mClientStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    return-void
.end method
