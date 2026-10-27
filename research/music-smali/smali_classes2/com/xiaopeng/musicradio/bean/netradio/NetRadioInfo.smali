.class public Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;
.super Lcom/xiaopeng/musicradio/bean/BaseInfo;
.source "NetRadioInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private areaCode:Ljava/lang/String;

.field private transient cacheTime:J

.field private hz:D

.field private id:I

.field private isBipartite:Z

.field private transient mHighlightName:Landroid/text/SpannableStringBuilder;

.field private name:Ljava/lang/String;

.field private off:Z

.field private offMsg:Ljava/lang/String;

.field private offTime:J

.field private picUrl:Ljava/lang/String;

.field private playCount:I

.field private playUrl:Ljava/lang/String;

.field private playingInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

.field private programInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private updateTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 326
    new-instance v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 307
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/BaseInfo;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 310
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/BaseInfo;-><init>()V

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->id:I

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->name:Ljava/lang/String;

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->picUrl:Ljava/lang/String;

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->updateTime:J

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->hz:D

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->areaCode:Ljava/lang/String;

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->playCount:I

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->playUrl:Ljava/lang/String;

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->off:Z

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->offTime:J

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->offMsg:Ljava/lang/String;

    .line 322
    const-class v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->playingInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    .line 323
    sget-object v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->programInfos:Ljava/util/List;

    return-void
.end method

.method private getProgramInfoIdListString()Ljava/lang/String;
    .locals 4

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->programInfos:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 206
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 207
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->programInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    const-string v3, ","

    .line 208
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getId()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method


# virtual methods
.method public clone()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;
    .locals 4

    .line 234
    :try_start_0
    invoke-super {p0}, Lcom/xiaopeng/musicradio/bean/BaseInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 236
    :catch_0
    new-instance v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;-><init>()V

    .line 237
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setId(I)V

    .line 238
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setName(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPicUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setPicUrl(Ljava/lang/String;)V

    .line 240
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getUpdateTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setUpdateTime(J)V

    .line 241
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getHz()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setHz(D)V

    .line 242
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getAreaCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setAreaCode(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setPlayCount(I)V

    .line 244
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setPlayUrl(Ljava/lang/String;)V

    .line 245
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->playingInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    if-eqz v1, :cond_0

    .line 246
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->clone()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setPlayingInfo(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V

    .line 249
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->programInfos:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 250
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 251
    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->programInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    .line 252
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->clone()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 254
    :cond_1
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->setProgramInfos(Ljava/util/List;)V

    :cond_2
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->clone()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 172
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    iget v0, v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->id:I

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->id:I

    if-ne v0, v1, :cond_1

    const/4 p1, 0x1

    return p1

    .line 175
    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAreaCode()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->areaCode:Ljava/lang/String;

    return-object v0
.end method

.method public getCacheTime()J
    .locals 2

    .line 216
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->cacheTime:J

    return-wide v0
.end method

.method public getHighlightName()Landroid/text/SpannableStringBuilder;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->mHighlightName:Landroid/text/SpannableStringBuilder;

    return-object v0
.end method

.method public getHz()D
    .locals 2

    .line 91
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->hz:D

    return-wide v0
.end method

.method public getId()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getOffMsg()Ljava/lang/String;
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->offMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getOffTime()J
    .locals 2

    .line 270
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->offTime:J

    return-wide v0
.end method

.method public getPicUrl()Ljava/lang/String;
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->picUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayCount()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->playCount:I

    return v0
.end method

.method public getPlayUrl()Ljava/lang/String;
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->playUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayingInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;
    .locals 2

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->playingInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 117
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setType(I)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->playingInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setParentInfo(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->playingInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getPlayUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setPlayUrl(Ljava/lang/String;)V

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->playingInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    return-object v0
.end method

.method public getProgramInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            ">;"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->programInfos:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 139
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    .line 140
    invoke-virtual {v1, p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setParentInfo(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    goto :goto_0

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->programInfos:Ljava/util/List;

    return-object v0
.end method

.method public getUpdateTime()J
    .locals 2

    .line 83
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->updateTime:J

    return-wide v0
.end method

.method public isBipartite()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->isBipartite:Z

    return v0
.end method

.method public isOff()Z
    .locals 1

    .line 262
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->off:Z

    return v0
.end method

.method public setAreaCode(Ljava/lang/String;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->areaCode:Ljava/lang/String;

    return-void
.end method

.method public setBipartite(Z)V
    .locals 0

    .line 228
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->isBipartite:Z

    return-void
.end method

.method public setCacheTime(J)V
    .locals 0

    .line 220
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->cacheTime:J

    return-void
.end method

.method public setHighlightName(Landroid/text/SpannableStringBuilder;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->mHighlightName:Landroid/text/SpannableStringBuilder;

    return-void
.end method

.method public setHz(D)V
    .locals 0

    .line 95
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->hz:D

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setOff(Z)V
    .locals 0

    .line 266
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->off:Z

    return-void
.end method

.method public setOffMsg(Ljava/lang/String;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->offMsg:Ljava/lang/String;

    return-void
.end method

.method public setOffTime(J)V
    .locals 0

    .line 274
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->offTime:J

    return-void
.end method

.method public setPicUrl(Ljava/lang/String;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->picUrl:Ljava/lang/String;

    return-void
.end method

.method public setPlayCount(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->playCount:I

    return-void
.end method

.method public setPlayUrl(Ljava/lang/String;)V
    .locals 0

    .line 164
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->playUrl:Ljava/lang/String;

    return-void
.end method

.method public setPlayingInfo(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V
    .locals 1

    .line 130
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->playingInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    .line 132
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setType(I)V

    .line 133
    invoke-virtual {p1, p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setParentInfo(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    :cond_0
    return-void
.end method

.method public setPlayingInfoRaw(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->playingInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    return-void
.end method

.method public setProgramInfos(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            ">;)V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->programInfos:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 153
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    .line 154
    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setParentInfo(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setProgramInfosRaw(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            ">;)V"
        }
    .end annotation

    .line 147
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->programInfos:Ljava/util/List;

    return-void
.end method

.method public setUpdateTime(J)V
    .locals 0

    .line 87
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->updateTime:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetRadioInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", picUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->picUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", updateTime="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->updateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", hz="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->hz:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ", areaCode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->areaCode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", playCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->playCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", playUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->playUrl:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->playUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", off=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->off:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", offTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->offTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", programInfos=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->getProgramInfoIdListString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 292
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->picUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 295
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->updateTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 296
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->hz:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 297
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->areaCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 298
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->playCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->playUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 300
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->off:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 301
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->offTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 302
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->offMsg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 303
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->playingInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 304
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;->programInfos:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
