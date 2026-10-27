.class public final Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;
.super Ljava/lang/Object;
.source "LocationImpl.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;


# annotations
.annotation build Landroidx/annotation/Keep;
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

.field private static final EXTRA_PARAMS:Ljava/lang/String; = "extraParams"


# instance fields
.field private mAccuracy:I

.field private mAdCode:Ljava/lang/String;

.field private mAltitude:I

.field private mAngle:F

.field private mCategory:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

.field private mCity:Ljava/lang/String;

.field private mExtraParams:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

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

    .line 40
    new-instance v0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl$1;

    invoke-direct {v0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 53
    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mMutable:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->readFromParcel(Landroid/os/Parcel;)V

    const/4 p1, 0x0

    .line 58
    iput-boolean p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mMutable:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl$1;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private checkMutable()V
    .locals 2

    .line 246
    iget-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mMutable:Z

    if-eqz v0, :cond_0

    return-void

    .line 247
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not allow any modification if sealed!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2

    .line 300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 301
    invoke-static {}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->values()[Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    move-result-object v1

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 302
    invoke-static {}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->values()[Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    move-result-object v1

    aget-object v0, v1, v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mCategory:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "Wrong Location Data!!!"

    .line 304
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/locationmodule/common/Debug;->assertion(ZLjava/lang/String;)V

    .line 306
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mLatitude:F

    .line 307
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mLongitude:F

    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mRawLatitude:F

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mRawLongitude:F

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSpeed:F

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAngle:F

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAccuracy:I

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSatellites:I

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAltitude:I

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mTime:J

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSourceType:I

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mCity:Ljava/lang/String;

    .line 319
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAdCode:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v0, ""

    .line 321
    iput-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAdCode:Ljava/lang/String;

    .line 324
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "extraParams"

    .line 325
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 326
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    goto :goto_2

    :cond_1
    const/4 p1, 0x0

    :goto_2
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mExtraParams:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public accuracy()I
    .locals 1

    .line 203
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAccuracy:I

    return v0
.end method

.method public accuracy(I)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0

    .line 112
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 113
    iput p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAccuracy:I

    return-object p0
.end method

.method public adCode(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0

    .line 154
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 155
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAdCode:Ljava/lang/String;

    return-object p0
.end method

.method public adCode()Ljava/lang/String;
    .locals 1

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAdCode:Ljava/lang/String;

    return-object v0
.end method

.method public altitude()I
    .locals 1

    .line 213
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAltitude:I

    return v0
.end method

.method public altitude(I)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0

    .line 126
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 127
    iput p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAltitude:I

    return-object p0
.end method

.method public angle()F
    .locals 1

    .line 198
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAngle:F

    return v0
.end method

.method public angle(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;
    .locals 0

    .line 105
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 106
    iput p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAngle:F

    return-object p0
.end method

.method public bridge synthetic angle(F)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->angle(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object p1

    return-object p1
.end method

.method public category(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mCategory:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    return-object p0
.end method

.method public category()Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;
    .locals 1

    .line 168
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mCategory:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    return-object v0
.end method

.method public bridge synthetic category(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->category(Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object p1

    return-object p1
.end method

.method public city(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0

    .line 147
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 148
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mCity:Ljava/lang/String;

    return-object p0
.end method

.method public city()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mCity:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public extraParams(Ljava/util/HashMap;)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;"
        }
    .end annotation

    .line 161
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 162
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mExtraParams:Ljava/util/HashMap;

    return-object p0
.end method

.method public getExtraParams()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 238
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mExtraParams:Ljava/util/HashMap;

    return-object v0
.end method

.method public latitude()F
    .locals 1

    .line 173
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mLatitude:F

    return v0
.end method

.method public latitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 71
    iput p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mLatitude:F

    return-object p0
.end method

.method public bridge synthetic latitude(F)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->latitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object p1

    return-object p1
.end method

.method public longitude()F
    .locals 1

    .line 178
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mLongitude:F

    return v0
.end method

.method public longitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;
    .locals 0

    .line 77
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 78
    iput p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mLongitude:F

    return-object p0
.end method

.method public bridge synthetic longitude(F)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->longitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object p1

    return-object p1
.end method

.method public rawLatitude()F
    .locals 1

    .line 183
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mRawLatitude:F

    return v0
.end method

.method public rawLatitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 85
    iput p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mRawLatitude:F

    return-object p0
.end method

.method public bridge synthetic rawLatitude(F)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->rawLatitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object p1

    return-object p1
.end method

.method public rawLongitude()F
    .locals 1

    .line 188
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mRawLongitude:F

    return v0
.end method

.method public rawLongitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;
    .locals 0

    .line 91
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 92
    iput p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mRawLongitude:F

    return-object p0
.end method

.method public bridge synthetic rawLongitude(F)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->rawLongitude(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object p1

    return-object p1
.end method

.method public satellites()I
    .locals 1

    .line 208
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSatellites:I

    return v0
.end method

.method public satellites(I)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0

    .line 119
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 120
    iput p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSatellites:I

    return-object p0
.end method

.method public seal()V
    .locals 1

    const/4 v0, 0x0

    .line 242
    iput-boolean v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mMutable:Z

    return-void
.end method

.method public sourceType()I
    .locals 1

    .line 223
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSourceType:I

    return v0
.end method

.method public sourceType(I)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0

    .line 140
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 141
    iput p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSourceType:I

    return-object p0
.end method

.method public speed()F
    .locals 1

    .line 193
    iget v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSpeed:F

    return v0
.end method

.method public speed(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;
    .locals 0

    .line 98
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 99
    iput p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSpeed:F

    return-object p0
.end method

.method public bridge synthetic speed(F)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->speed(F)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object p1

    return-object p1
.end method

.method public time()J
    .locals 2

    .line 218
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mTime:J

    return-wide v0
.end method

.method public time(J)Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation;
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->checkMutable()V

    .line 134
    iput-wide p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mTime:J

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "<HIDDEN>"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 279
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mCategory:Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;

    invoke-virtual {p2}, Lcom/xiaopeng/lib/framework/moduleinterface/locationmodule/ILocation$Category;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 280
    iget p2, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mLatitude:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 281
    iget p2, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mLongitude:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 282
    iget p2, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mRawLatitude:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 283
    iget p2, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mRawLongitude:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 284
    iget p2, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSpeed:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 285
    iget p2, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAngle:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 286
    iget p2, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAccuracy:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 287
    iget p2, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSatellites:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget p2, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAltitude:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 289
    iget-wide v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 290
    iget p2, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mSourceType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mCity:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object p2, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mAdCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 294
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 295
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;->mExtraParams:Ljava/util/HashMap;

    const-string v1, "extraParams"

    invoke-virtual {p2, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 296
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
