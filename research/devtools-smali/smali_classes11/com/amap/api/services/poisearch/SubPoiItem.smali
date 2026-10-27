.class public Lcom/amap/api/services/poisearch/SubPoiItem;
.super Ljava/lang/Object;
.source "SubPoiItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/services/poisearch/SubPoiItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private gW:Lcom/amap/api/services/core/LatLonPoint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 163
    new-instance v0, Lcom/amap/api/services/poisearch/SubPoiItem$1;

    invoke-direct {v0}, Lcom/amap/api/services/poisearch/SubPoiItem$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/poisearch/SubPoiItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/SubPoiItem;->a:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/SubPoiItem;->b:Ljava/lang/String;

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/SubPoiItem;->c:Ljava/lang/String;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/poisearch/SubPoiItem;->d:I

    .line 44
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/poisearch/SubPoiItem;->gW:Lcom/amap/api/services/core/LatLonPoint;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/poisearch/SubPoiItem;->f:Ljava/lang/String;

    .line 48
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/services/poisearch/SubPoiItem;->g:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/amap/api/services/core/LatLonPoint;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/amap/api/services/poisearch/SubPoiItem;->a:Ljava/lang/String;

    .line 30
    iput-object p2, p0, Lcom/amap/api/services/poisearch/SubPoiItem;->gW:Lcom/amap/api/services/core/LatLonPoint;

    .line 31
    iput-object p3, p0, Lcom/amap/api/services/poisearch/SubPoiItem;->b:Ljava/lang/String;

    .line 32
    iput-object p4, p0, Lcom/amap/api/services/poisearch/SubPoiItem;->f:Ljava/lang/String;

    .line 33
    return-void
.end method


# virtual methods
.method public V(I)V
    .locals 0

    .line 112
    iput p1, p0, Lcom/amap/api/services/poisearch/SubPoiItem;->d:I

    .line 113
    return-void
.end method

.method public au(Ljava/lang/String;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/amap/api/services/poisearch/SubPoiItem;->c:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public av(Ljava/lang/String;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/amap/api/services/poisearch/SubPoiItem;->g:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 189
    iget-object p2, p0, Lcom/amap/api/services/poisearch/SubPoiItem;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 190
    iget-object p2, p0, Lcom/amap/api/services/poisearch/SubPoiItem;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 191
    iget-object p2, p0, Lcom/amap/api/services/poisearch/SubPoiItem;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 192
    iget p2, p0, Lcom/amap/api/services/poisearch/SubPoiItem;->d:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget-object p2, p0, Lcom/amap/api/services/poisearch/SubPoiItem;->gW:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 194
    iget-object p2, p0, Lcom/amap/api/services/poisearch/SubPoiItem;->f:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 195
    iget-object p2, p0, Lcom/amap/api/services/poisearch/SubPoiItem;->g:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 196
    return-void
.end method
