.class public Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;
.super Lcom/xiaopeng/musicradio/bean/BaseInfo;
.source "NetRadioProgramInfo.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private dayOfWeek:Ljava/lang/String;

.field private endTime:Ljava/lang/String;

.field private id:I

.field private transient mParentInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

.field private name:Ljava/lang/String;

.field private playUrl:Ljava/lang/String;

.field private startTime:Ljava/lang/String;

.field private time:J

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 200
    new-instance v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 186
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/BaseInfo;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->type:I

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 189
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/BaseInfo;-><init>()V

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->type:I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->id:I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->name:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->playUrl:Ljava/lang/String;

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->startTime:Ljava/lang/String;

    .line 194
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->endTime:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->type:I

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->dayOfWeek:Ljava/lang/String;

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->time:J

    return-void
.end method


# virtual methods
.method public clone()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;
    .locals 3

    .line 150
    :try_start_0
    invoke-super {p0}, Lcom/xiaopeng/musicradio/bean/BaseInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    .line 155
    new-instance v0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;-><init>()V

    .line 156
    iget v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->id:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setId(I)V

    .line 157
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->dayOfWeek:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setDayOfWeek(Ljava/lang/String;)V

    .line 158
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setEndTime(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setName(Ljava/lang/String;)V

    .line 160
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->playUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setPlayUrl(Ljava/lang/String;)V

    .line 161
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setStartTime(Ljava/lang/String;)V

    .line 162
    iget-wide v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->time:J

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setTime(J)V

    .line 163
    iget v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->type:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setType(I)V

    .line 164
    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->mParentInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->setParentInfo(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V

    :cond_0
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1

    .line 15
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->clone()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 121
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 122
    :cond_1
    check-cast p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;

    .line 123
    iget v2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->id:I

    iget v3, p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->id:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->playUrl:Ljava/lang/String;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->playUrl:Ljava/lang/String;

    .line 124
    invoke-static {v2, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public getDayOfWeek()Ljava/lang/String;
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->dayOfWeek:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getEndTime()Ljava/lang/String;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->endTime:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getId()I
    .locals 1

    .line 42
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->id:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->name:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->name:Ljava/lang/String;

    return-object v0

    .line 53
    :cond_0
    sget v0, Lcom/xiaopeng/musicradio/common/k$g;->no_program:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParentInfo()Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->mParentInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    return-object v0
.end method

.method public getPlayUrl()Ljava/lang/String;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->playUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->startTime:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :cond_0
    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 110
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->time:J

    return-wide v0
.end method

.method public getType()I
    .locals 1

    .line 94
    iget v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->type:I

    return v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x2

    .line 130
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->id:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->playUrl:Ljava/lang/String;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setDayOfWeek(Ljava/lang/String;)V
    .locals 0

    .line 106
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->dayOfWeek:Ljava/lang/String;

    return-void
.end method

.method public setEndTime(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->endTime:Ljava/lang/String;

    return-void
.end method

.method public setId(I)V
    .locals 0

    .line 46
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->id:I

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->name:Ljava/lang/String;

    return-void
.end method

.method public setParentInfo(Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->mParentInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    return-void
.end method

.method public setPlayUrl(Ljava/lang/String;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->playUrl:Ljava/lang/String;

    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->startTime:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 114
    iput-wide p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->time:J

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 98
    iput p1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->type:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NetRadioProgramInfo{id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", playUrl=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->playUrl:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", startTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->startTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", endTime=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->endTime:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mParentInfo="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->mParentInfo:Lcom/xiaopeng/musicradio/bean/netradio/NetRadioInfo;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", tyep=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->type:I

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

    .line 176
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->id:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 177
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->name:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->playUrl:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->startTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 180
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->endTime:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget p2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->type:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->dayOfWeek:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 183
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/bean/netradio/NetRadioProgramInfo;->time:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
