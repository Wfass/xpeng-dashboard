.class public Lcom/amap/api/services/cloud/CloudItem;
.super Ljava/lang/Object;
.source "CloudItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/amap/api/services/cloud/CloudItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private bU:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/services/cloud/CloudImage;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field protected final gA:Ljava/lang/String;

.field private gB:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final gz:Lcom/amap/api/services/core/LatLonPoint;

.field protected final mTitle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 228
    new-instance v0, Lcom/amap/api/services/cloud/CloudItem$1;

    invoke-direct {v0}, Lcom/amap/api/services/cloud/CloudItem$1;-><init>()V

    sput-object v0, Lcom/amap/api/services/cloud/CloudItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const/4 v0, -0x1

    iput v0, p0, Lcom/amap/api/services/cloud/CloudItem;->b:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->a:Ljava/lang/String;

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/amap/api/services/cloud/CloudItem;->b:I

    .line 215
    const-class v0, Lcom/amap/api/services/core/LatLonPoint;

    .line 217
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 216
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/core/LatLonPoint;

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->gz:Lcom/amap/api/services/core/LatLonPoint;

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->mTitle:Ljava/lang/String;

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->gA:Ljava/lang/String;

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->c:Ljava/lang/String;

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->d:Ljava/lang/String;

    .line 222
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->gB:Ljava/util/HashMap;

    .line 223
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->gB:Ljava/util/HashMap;

    const-class v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readMap(Ljava/util/Map;Ljava/lang/ClassLoader;)V

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->bU:Ljava/util/List;

    .line 225
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->bU:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 226
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 242
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 266
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 267
    return v0

    .line 268
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 269
    return v1

    .line 270
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    const-class v2, Lcom/amap/api/services/cloud/CloudItem;

    .line 271
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    const-class v2, Lcom/amap/api/services/cloud/CloudItemDetail;

    .line 272
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 273
    return v1

    .line 274
    :cond_2
    check-cast p1, Lcom/amap/api/services/cloud/CloudItem;

    .line 275
    iget-object v2, p0, Lcom/amap/api/services/cloud/CloudItem;->a:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 276
    iget-object p1, p1, Lcom/amap/api/services/cloud/CloudItem;->a:Ljava/lang/String;

    if-eqz p1, :cond_4

    .line 277
    return v1

    .line 278
    :cond_3
    iget-object v2, p0, Lcom/amap/api/services/cloud/CloudItem;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/amap/api/services/cloud/CloudItem;->a:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 279
    return v1

    .line 280
    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 288
    nop

    .line 289
    nop

    .line 290
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->a:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v1, v0

    .line 291
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 299
    iget-object v0, p0, Lcom/amap/api/services/cloud/CloudItem;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 250
    iget-object p2, p0, Lcom/amap/api/services/cloud/CloudItem;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 251
    iget p2, p0, Lcom/amap/api/services/cloud/CloudItem;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    iget-object p2, p0, Lcom/amap/api/services/cloud/CloudItem;->gz:Lcom/amap/api/services/core/LatLonPoint;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 253
    iget-object p2, p0, Lcom/amap/api/services/cloud/CloudItem;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    iget-object p2, p0, Lcom/amap/api/services/cloud/CloudItem;->gA:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 255
    iget-object p2, p0, Lcom/amap/api/services/cloud/CloudItem;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 256
    iget-object p2, p0, Lcom/amap/api/services/cloud/CloudItem;->d:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 257
    iget-object p2, p0, Lcom/amap/api/services/cloud/CloudItem;->gB:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 258
    iget-object p2, p0, Lcom/amap/api/services/cloud/CloudItem;->bU:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 259
    return-void
.end method
