.class final Lcom/amap/api/services/route/DrivePath$1;
.super Ljava/lang/Object;
.source "DrivePath.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/route/DrivePath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amap/api/services/route/DrivePath;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public T(Landroid/os/Parcel;)Lcom/amap/api/services/route/DrivePath;
    .locals 1

    .line 154
    new-instance v0, Lcom/amap/api/services/route/DrivePath;

    invoke-direct {v0, p1}, Lcom/amap/api/services/route/DrivePath;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public aw(I)[Lcom/amap/api/services/route/DrivePath;
    .locals 0

    .line 159
    const/4 p1, 0x0

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Lcom/amap/api/services/route/DrivePath$1;->T(Landroid/os/Parcel;)Lcom/amap/api/services/route/DrivePath;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 150
    invoke-virtual {p0, p1}, Lcom/amap/api/services/route/DrivePath$1;->aw(I)[Lcom/amap/api/services/route/DrivePath;

    move-result-object p1

    return-object p1
.end method
