.class public final Lcom/amap/api/services/geocoder/StreetNumber;
.super Ljava/lang/Object;
.source "StreetNumber.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/services/geocoder/StreetNumber;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:F

.field private gy:Lcom/amap/api/services/core/LatLonPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 146
    new-instance v0, Lcom/amap/api/services/geocoder/StreetNumber$1;

    invoke-direct {v0}, Lcom/amap/api/services/geocoder/StreetNumber$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/geocoder/StreetNumber;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/StreetNumber;->a:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/StreetNumber;->b:Ljava/lang/String;

    .line 140
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    .line 141
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 140
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/geocoder/StreetNumber;->gy:Lcom/amap/api/services/core/LatLonPoint;

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/geocoder/StreetNumber;->d:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/amap/api/services/geocoder/StreetNumber;->e:F

    .line 144
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/amap/api/services/geocoder/StreetNumber$1;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/amap/api/services/geocoder/StreetNumber;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 0

    .line 114
    iput p1, p0, Lcom/amap/api/services/geocoder/StreetNumber;->e:F

    .line 115
    return-void
.end method

.method public ad(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/amap/api/services/geocoder/StreetNumber;->d:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public at(Ljava/lang/String;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/amap/api/services/geocoder/StreetNumber;->a:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public f(Lcom/amap/api/services/core/LatLonPoint;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/amap/api/services/geocoder/StreetNumber;->gy:Lcom/amap/api/services/core/LatLonPoint;

    .line 79
    return-void
.end method

.method public setNumber(Ljava/lang/String;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/amap/api/services/geocoder/StreetNumber;->b:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 130
    iget-object p2, p0, Lcom/amap/api/services/geocoder/StreetNumber;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 131
    iget-object p2, p0, Lcom/amap/api/services/geocoder/StreetNumber;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object p2, p0, Lcom/amap/api/services/geocoder/StreetNumber;->gy:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 133
    iget-object p2, p0, Lcom/amap/api/services/geocoder/StreetNumber;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 134
    iget p2, p0, Lcom/amap/api/services/geocoder/StreetNumber;->e:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 135
    return-void
.end method
