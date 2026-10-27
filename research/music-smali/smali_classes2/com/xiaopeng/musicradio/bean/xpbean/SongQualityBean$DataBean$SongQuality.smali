.class public Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;
.super Ljava/lang/Object;
.source "SongQualityBean.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SongQuality"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private canPlay:Z

.field private fileSize:I

.field private hash:Ljava/lang/String;

.field private needVip:Z

.field private playUrl:Ljava/lang/String;

.field private privilege:I

.field private quality:I

.field private vipTypes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/VipType;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->hash:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->fileSize:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->privilege:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->quality:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->needVip:Z

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->playUrl:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->canPlay:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getFileSize()I
    .locals 1

    .line 62
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->fileSize:I

    return v0
.end method

.method public getHash()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayUrl()Ljava/lang/String;
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->playUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPrivilege()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->privilege:I

    return v0
.end method

.method public getQuality()I
    .locals 1

    .line 78
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->quality:I

    return v0
.end method

.method public getVipTypes()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/VipType;",
            ">;"
        }
    .end annotation

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->vipTypes:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isCanPlay()Z
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->canPlay:Z

    return v0
.end method

.method public isNeedVip()Z
    .locals 1

    .line 86
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->needVip:Z

    return v0
.end method

.method public setCanPlay(Z)V
    .locals 0

    .line 106
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->canPlay:Z

    return-void
.end method

.method public setFileSize(I)V
    .locals 0

    .line 66
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->fileSize:I

    return-void
.end method

.method public setHash(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->hash:Ljava/lang/String;

    return-void
.end method

.method public setNeedVip(Z)V
    .locals 0

    .line 90
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->needVip:Z

    return-void
.end method

.method public setPlayUrl(Ljava/lang/String;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->playUrl:Ljava/lang/String;

    return-void
.end method

.method public setPrivilege(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->privilege:I

    return-void
.end method

.method public setQuality(I)V
    .locals 0

    .line 82
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->quality:I

    return-void
.end method

.method public setVipTypes(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/VipType;",
            ">;)V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->vipTypes:Ljava/util/ArrayList;

    return-void
.end method

.method public toNoUrlString()Ljava/lang/String;
    .locals 3

    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQ{hash=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", quality="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->quality:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", needVip="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->needVip:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", canPlay =\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->canPlay:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SQ{hash=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", quality="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->quality:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", needVip="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->needVip:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", playUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->playUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", canPlay =\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->canPlay:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", vipTypes =\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->vipTypes:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 145
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->hash:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->fileSize:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->privilege:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->quality:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->needVip:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 150
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->playUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget-boolean p2, p0, Lcom/xiaopeng/musicradio/bean/xpbean/SongQualityBean$DataBean$SongQuality;->canPlay:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    return-void
.end method
