.class public Lcom/amap/api/services/route/RailwayStationItem;
.super Ljava/lang/Object;
.source "RailwayStationItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/services/route/RailwayStationItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private gy:Lcom/amap/api/services/core/LatLonPoint;

.field private hh:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 212
    new-instance v0, Lcom/amap/api/services/route/RailwayStationItem$1;

    invoke-direct {v0}, Lcom/amap/api/services/route/RailwayStationItem$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/route/RailwayStationItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->f:Z

    .line 19
    iput-boolean v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->g:Z

    .line 27
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->f:Z

    .line 19
    iput-boolean v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->g:Z

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/services/route/RailwayStationItem;->a:Ljava/lang/String;

    .line 201
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/services/route/RailwayStationItem;->b:Ljava/lang/String;

    .line 202
    const-class v1, Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v1, p0, Lcom/amap/api/services/route/RailwayStationItem;->gy:Lcom/amap/api/services/core/LatLonPoint;

    .line 203
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/services/route/RailwayStationItem;->d:Ljava/lang/String;

    .line 204
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/services/route/RailwayStationItem;->e:Ljava/lang/String;

    .line 205
    const/4 v1, 0x2

    new-array v1, v1, [Z

    .line 206
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 207
    aget-boolean v0, v1, v0

    iput-boolean v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->f:Z

    .line 208
    const/4 v0, 0x1

    aget-boolean v0, v1, v0

    iput-boolean v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->g:Z

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/amap/api/services/route/RailwayStationItem;->hh:F

    .line 210
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 178
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 186
    iget-object v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 187
    iget-object v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->gy:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 189
    iget-object p2, p0, Lcom/amap/api/services/route/RailwayStationItem;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object p2, p0, Lcom/amap/api/services/route/RailwayStationItem;->e:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    const/4 p2, 0x2

    new-array p2, p2, [Z

    iget-boolean v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->f:Z

    const/4 v1, 0x0

    aput-boolean v0, p2, v1

    iget-boolean v0, p0, Lcom/amap/api/services/route/RailwayStationItem;->g:Z

    const/4 v1, 0x1

    aput-boolean v0, p2, v1

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 192
    iget p2, p0, Lcom/amap/api/services/route/RailwayStationItem;->hh:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 193
    return-void
.end method
