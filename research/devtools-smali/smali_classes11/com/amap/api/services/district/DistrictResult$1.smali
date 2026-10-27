.class Lcom/amap/api/services/district/DistrictResult$1;
.super Ljava/lang/Object;
.source "DistrictResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/district/DistrictResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amap/api/services/district/DistrictResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic gN:Lcom/amap/api/services/district/DistrictResult;


# direct methods
.method constructor <init>(Lcom/amap/api/services/district/DistrictResult;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/amap/api/services/district/DistrictResult$1;->gN:Lcom/amap/api/services/district/DistrictResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public Y(I)[Lcom/amap/api/services/district/DistrictResult;
    .locals 0

    .line 143
    new-array p1, p1, [Lcom/amap/api/services/district/DistrictResult;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Lcom/amap/api/services/district/DistrictResult$1;->z(Landroid/os/Parcel;)Lcom/amap/api/services/district/DistrictResult;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 134
    invoke-virtual {p0, p1}, Lcom/amap/api/services/district/DistrictResult$1;->Y(I)[Lcom/amap/api/services/district/DistrictResult;

    move-result-object p1

    return-object p1
.end method

.method public z(Landroid/os/Parcel;)Lcom/amap/api/services/district/DistrictResult;
    .locals 1

    .line 138
    new-instance v0, Lcom/amap/api/services/district/DistrictResult;

    invoke-direct {v0, p1}, Lcom/amap/api/services/district/DistrictResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method
