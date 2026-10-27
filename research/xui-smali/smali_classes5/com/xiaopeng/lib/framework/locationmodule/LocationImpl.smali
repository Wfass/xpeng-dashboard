.class public final Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;
.super Ljava/lang/Object;
.source "LocationImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;


# annotations
.annotation build Landroid/support/annotation/Keep;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG:Z = false


# instance fields
.field private mAccuracy:I

.field private mAdCode:Ljava/lang/String;

.field private mAltitude:I

.field private mAngle:I

.field private mCategory:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

.field private mCity:Ljava/lang/String;

.field private mLatitude:F

.field private mLongitude:F

.field private mMutable:Z

.field private mRawLatitude:F

.field private mRawLongitude:F

.field private mSatellites:I

.field private mSourceType:I

.field private mSpeed:F

.field private mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 35
    new-instance v0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl$1;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mMutable:Z

    .line 49
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->readFromParcel(Landroid/os/Parcel;)V

    .line 53
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mMutable:Z

    .line 54
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl$1;

    .line 16
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private checkMutable()V
    .locals 2

    .line 229
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mMutable:Z

    if-eqz v0, :cond_0

    .line 232
    return-void

    .line 230
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not allow any modification if sealed!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 279
    .local v0, "indexOfCategory":I
    invoke-static {}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->values()[Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 280
    invoke-static {}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->values()[Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    move-result-object v1

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mCategory:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    goto :goto_0

    .line 282
    :cond_0
    const/4 v1, 0x0

    const-string v2, "Wrong Location Data!!!"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/framework/locationmodule/common/Debug;->assertion(ZLjava/lang/String;)V

    .line 284
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mLatitude:F

    .line 285
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mLongitude:F

    .line 286
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mRawLatitude:F

    .line 287
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mRawLongitude:F

    .line 288
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSpeed:F

    .line 289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAngle:I

    .line 290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAccuracy:I

    .line 291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSatellites:I

    .line 292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAltitude:I

    .line 293
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mTime:J

    .line 294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSourceType:I

    .line 295
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mCity:Ljava/lang/String;

    .line 297
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAdCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    goto :goto_1

    .line 298
    :catch_0
    move-exception v1

    .line 299
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, ""

    iput-object v2, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAdCode:Ljava/lang/String;

    .line 301
    .end local v1    # "ex":Ljava/lang/Exception;
    :goto_1
    return-void
.end method


# virtual methods
.method public accuracy()I
    .locals 1

    .line 191
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAccuracy:I

    return v0
.end method

.method public accuracy(I)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0
    .param p1, "value"    # I

    .line 107
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 108
    iput p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAccuracy:I

    .line 109
    return-object p0
.end method

.method public adCode(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 149
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 150
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAdCode:Ljava/lang/String;

    .line 151
    return-object p0
.end method

.method public adCode()Ljava/lang/String;
    .locals 1

    .line 221
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAdCode:Ljava/lang/String;

    return-object v0
.end method

.method public altitude()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAltitude:I

    return v0
.end method

.method public altitude(I)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0
    .param p1, "value"    # I

    .line 121
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 122
    iput p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAltitude:I

    .line 123
    return-object p0
.end method

.method public angle()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAngle:I

    return v0
.end method

.method public angle(I)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;
    .locals 0
    .param p1, "value"    # I

    .line 100
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 101
    iput p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAngle:I

    .line 102
    return-object p0
.end method

.method public bridge synthetic angle(I)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->angle(I)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object p1

    return-object p1
.end method

.method public category(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;
    .locals 0
    .param p1, "value"    # Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mCategory:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    .line 60
    return-object p0
.end method

.method public category()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;
    .locals 1

    .line 156
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mCategory:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    return-object v0
.end method

.method public bridge synthetic category(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->category(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object p1

    return-object p1
.end method

.method public city(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 143
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mCity:Ljava/lang/String;

    .line 144
    return-object p0
.end method

.method public city()Ljava/lang/String;
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .line 256
    const/4 v0, 0x0

    return v0
.end method

.method public latitude()F
    .locals 1

    .line 161
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mLatitude:F

    return v0
.end method

.method public latitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;
    .locals 0
    .param p1, "value"    # F

    .line 65
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 66
    iput p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mLatitude:F

    .line 67
    return-object p0
.end method

.method public bridge synthetic latitude(F)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->latitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object p1

    return-object p1
.end method

.method public longitude()F
    .locals 1

    .line 166
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mLongitude:F

    return v0
.end method

.method public longitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;
    .locals 0
    .param p1, "value"    # F

    .line 72
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 73
    iput p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mLongitude:F

    .line 74
    return-object p0
.end method

.method public bridge synthetic longitude(F)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->longitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object p1

    return-object p1
.end method

.method public rawLatitude()F
    .locals 1

    .line 171
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mRawLatitude:F

    return v0
.end method

.method public rawLatitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;
    .locals 0
    .param p1, "value"    # F

    .line 79
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 80
    iput p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mRawLatitude:F

    .line 81
    return-object p0
.end method

.method public bridge synthetic rawLatitude(F)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->rawLatitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object p1

    return-object p1
.end method

.method public rawLongitude()F
    .locals 1

    .line 176
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mRawLongitude:F

    return v0
.end method

.method public rawLongitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;
    .locals 0
    .param p1, "value"    # F

    .line 86
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 87
    iput p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mRawLongitude:F

    .line 88
    return-object p0
.end method

.method public bridge synthetic rawLongitude(F)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->rawLongitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object p1

    return-object p1
.end method

.method public satellites()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSatellites:I

    return v0
.end method

.method public satellites(I)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0
    .param p1, "value"    # I

    .line 114
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 115
    iput p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSatellites:I

    .line 116
    return-object p0
.end method

.method public seal()V
    .locals 1

    .line 225
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mMutable:Z

    .line 226
    return-void
.end method

.method public sourceType()I
    .locals 1

    .line 211
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSourceType:I

    return v0
.end method

.method public sourceType(I)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0
    .param p1, "value"    # I

    .line 135
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 136
    iput p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSourceType:I

    .line 137
    return-object p0
.end method

.method public speed()F
    .locals 1

    .line 181
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSpeed:F

    return v0
.end method

.method public speed(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;
    .locals 0
    .param p1, "value"    # F

    .line 93
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 94
    iput p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSpeed:F

    .line 95
    return-object p0
.end method

.method public bridge synthetic speed(F)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0

    .line 15
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->speed(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object p1

    return-object p1
.end method

.method public time()J
    .locals 2

    .line 206
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mTime:J

    return-wide v0
.end method

.method public time(J)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0
    .param p1, "value"    # J

    .line 128
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 129
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mTime:J

    .line 130
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 250
    const-string v0, "<HIDDEN>"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .line 261
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mCategory:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    invoke-virtual {v0}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 262
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mLatitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 263
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mLongitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 264
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mRawLatitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 265
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mRawLongitude:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 266
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSpeed:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 267
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAngle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 268
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAccuracy:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSatellites:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 270
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAltitude:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 271
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 272
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSourceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mCity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 274
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAdCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 275
    return-void
.end method
