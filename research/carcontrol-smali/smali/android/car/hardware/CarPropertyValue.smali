.class public final Landroid/car/hardware/CarPropertyValue;
.super Ljava/lang/Object;
.source "CarPropertyValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/car/hardware/CarPropertyValue$PropertyStatus;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/car/hardware/CarPropertyValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_CHARSET:Ljava/nio/charset/Charset;

.field public static final STATUS_AVAILABLE:I = 0x0

.field public static final STATUS_ERROR:I = 0x2

.field public static final STATUS_UNAVAILABLE:I = 0x1


# instance fields
.field private final mAreaId:I

.field private mExtraTimestamp:J

.field private final mPropertyId:I

.field private final mStatus:I

.field private final mTimestamp:J

.field private mTxPid:I

.field private final mValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "UTF-8"

    .line 40
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Landroid/car/hardware/CarPropertyValue;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    .line 183
    new-instance v0, Landroid/car/hardware/CarPropertyValue$1;

    invoke-direct {v0}, Landroid/car/hardware/CarPropertyValue$1;-><init>()V

    sput-object v0, Landroid/car/hardware/CarPropertyValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IIIJLjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIJTT;)V"
        }
    .end annotation

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput p1, p0, Landroid/car/hardware/CarPropertyValue;->mPropertyId:I

    .line 114
    iput p2, p0, Landroid/car/hardware/CarPropertyValue;->mAreaId:I

    .line 115
    iput p3, p0, Landroid/car/hardware/CarPropertyValue;->mStatus:I

    .line 116
    iput-wide p4, p0, Landroid/car/hardware/CarPropertyValue;->mTimestamp:J

    .line 117
    iput-object p6, p0, Landroid/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, p3

    .line 86
    invoke-direct/range {v0 .. v6}, Landroid/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(IILjava/lang/Object;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;I)V"
        }
    .end annotation

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v6, p3

    .line 99
    invoke-direct/range {v0 .. v6}, Landroid/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    .line 100
    iput p4, p0, Landroid/car/hardware/CarPropertyValue;->mTxPid:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/Object;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p1

    move-object v6, p2

    .line 74
    invoke-direct/range {v0 .. v6}, Landroid/car/hardware/CarPropertyValue;-><init>(IIIJLjava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/hardware/CarPropertyValue;->mPropertyId:I

    .line 128
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/hardware/CarPropertyValue;->mAreaId:I

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/hardware/CarPropertyValue;->mStatus:I

    .line 130
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/car/hardware/CarPropertyValue;->mTimestamp:J

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/car/hardware/CarPropertyValue;->mTxPid:I

    .line 132
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 135
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    const-class v1, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object p1

    .line 142
    new-instance v0, Ljava/lang/String;

    sget-object v1, Landroid/car/hardware/CarPropertyValue;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {v0, p1, v1}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v0, p0, Landroid/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    goto/16 :goto_3

    .line 143
    :cond_0
    const-class v1, [B

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readBlob()[B

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    goto/16 :goto_3

    .line 145
    :cond_1
    const-class v1, [Ljava/lang/Float;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_3

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_3

    .line 148
    new-array v1, v0, [Ljava/lang/Float;

    :goto_0
    if-ge v2, v0, :cond_2

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 152
    :cond_2
    iput-object v1, p0, Landroid/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    goto/16 :goto_3

    .line 154
    :cond_3
    iput-object v3, p0, Landroid/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    goto :goto_3

    .line 156
    :cond_4
    const-class v1, [Ljava/lang/Integer;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_6

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    shr-int/lit8 v1, v1, 0x2

    if-gt v0, v1, :cond_6

    .line 159
    new-array v1, v0, [Ljava/lang/Integer;

    :goto_1
    if-ge v2, v0, :cond_5

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 163
    :cond_5
    iput-object v1, p0, Landroid/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    goto :goto_3

    .line 165
    :cond_6
    iput-object v3, p0, Landroid/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    goto :goto_3

    .line 167
    :cond_7
    const-class v1, [Ljava/lang/Long;

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ltz v0, :cond_9

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->dataAvail()I

    move-result v1

    shr-int/lit8 v1, v1, 0x3

    if-gt v0, v1, :cond_9

    .line 170
    new-array v1, v0, [Ljava/lang/Long;

    :goto_2
    if-ge v2, v0, :cond_8

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 174
    :cond_8
    iput-object v1, p0, Landroid/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    goto :goto_3

    .line 176
    :cond_9
    iput-object v3, p0, Landroid/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    goto :goto_3

    .line 179
    :cond_a
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Landroid/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    :goto_3
    return-void

    .line 137
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Class not found: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAreaId()I
    .locals 1

    .line 265
    iget v0, p0, Landroid/car/hardware/CarPropertyValue;->mAreaId:I

    return v0
.end method

.method public getExtraTimestamp()J
    .locals 2

    .line 287
    iget-wide v0, p0, Landroid/car/hardware/CarPropertyValue;->mExtraTimestamp:J

    return-wide v0
.end method

.method public getPropertyId()I
    .locals 1

    .line 258
    iget v0, p0, Landroid/car/hardware/CarPropertyValue;->mPropertyId:I

    return v0
.end method

.method public getStatus()I
    .locals 1

    .line 272
    iget v0, p0, Landroid/car/hardware/CarPropertyValue;->mStatus:I

    return v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 279
    iget-wide v0, p0, Landroid/car/hardware/CarPropertyValue;->mTimestamp:J

    return-wide v0
.end method

.method public getTxPid()I
    .locals 1

    .line 291
    iget v0, p0, Landroid/car/hardware/CarPropertyValue;->mTxPid:I

    return v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 303
    iget-object v0, p0, Landroid/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    return-object v0
.end method

.method public setExtraTimestamp(J)V
    .locals 0

    .line 283
    iput-wide p1, p0, Landroid/car/hardware/CarPropertyValue;->mExtraTimestamp:J

    return-void
.end method

.method public setTxPid(I)V
    .locals 0

    .line 295
    iput p1, p0, Landroid/car/hardware/CarPropertyValue;->mTxPid:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 310
    iget-object v0, p0, Landroid/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 311
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    const-class v1, [B

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Landroid/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    check-cast v0, [B

    invoke-static {v0}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 315
    :cond_0
    iget-object v0, p0, Landroid/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 318
    :cond_1
    iget-object v0, p0, Landroid/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 320
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarPropertyValue{PropertyName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/car/hardware/CarPropertyValue;->mPropertyId:I

    .line 321
    invoke-static {v2}, Landroid/car/XpDebugLog;->getPropertyName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPropertyId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/car/hardware/CarPropertyValue;->mPropertyId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "(0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/car/hardware/CarPropertyValue;->mPropertyId:I

    .line 323
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), mAreaId=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/car/hardware/CarPropertyValue;->mAreaId:I

    .line 324
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mStatus="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/car/hardware/CarPropertyValue;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTimestamp="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/car/hardware/CarPropertyValue;->mTimestamp:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTxPid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/car/hardware/CarPropertyValue;->mTxPid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 202
    iget p2, p0, Landroid/car/hardware/CarPropertyValue;->mPropertyId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget p2, p0, Landroid/car/hardware/CarPropertyValue;->mAreaId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget p2, p0, Landroid/car/hardware/CarPropertyValue;->mStatus:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget-wide v0, p0, Landroid/car/hardware/CarPropertyValue;->mTimestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 206
    iget p2, p0, Landroid/car/hardware/CarPropertyValue;->mTxPid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget-object p2, p0, Landroid/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    move-object p2, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_1

    goto :goto_1

    .line 209
    :cond_1
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 212
    const-class v0, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 213
    iget-object p2, p0, Landroid/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    sget-object v0, Landroid/car/hardware/CarPropertyValue;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBlob([B)V

    goto/16 :goto_5

    .line 214
    :cond_2
    const-class v0, [B

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 215
    iget-object p2, p0, Landroid/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    check-cast p2, [B

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBlob([B)V

    goto/16 :goto_5

    .line 216
    :cond_3
    const-class v0, [Ljava/lang/Float;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eqz v0, :cond_5

    .line 217
    iget-object p2, p0, Landroid/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Float;

    if-eqz p2, :cond_4

    .line 219
    array-length v0, p2

    .line 220
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_2
    if-ge v1, v0, :cond_a

    .line 222
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeFloat(F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 225
    :cond_4
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 227
    :cond_5
    const-class v0, [Ljava/lang/Integer;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 228
    iget-object p2, p0, Landroid/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Integer;

    if-eqz p2, :cond_6

    .line 230
    array-length v0, p2

    .line 231
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    if-ge v1, v0, :cond_a

    .line 233
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 236
    :cond_6
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 238
    :cond_7
    const-class v0, [Ljava/lang/Long;

    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 239
    iget-object p2, p0, Landroid/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    check-cast p2, [Ljava/lang/Long;

    if-eqz p2, :cond_8

    .line 241
    array-length v0, p2

    .line 242
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_4
    if-ge v1, v0, :cond_a

    .line 244
    aget-object v2, p2, v1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 247
    :cond_8
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5

    .line 250
    :cond_9
    iget-object p2, p0, Landroid/car/hardware/CarPropertyValue;->mValue:Ljava/lang/Object;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    :cond_a
    :goto_5
    return-void
.end method
