.class final Lcom/amap/api/services/route/WalkStep$1;
.super Ljava/lang/Object;
.source "WalkStep.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/services/route/WalkStep;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/amap/api/services/route/WalkStep;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aV(I)[Lcom/amap/api/services/route/WalkStep;
    .locals 0

    .line 223
    const/4 p1, 0x0

    return-object p1
.end method

.method public as(Landroid/os/Parcel;)Lcom/amap/api/services/route/WalkStep;
    .locals 1

    .line 218
    new-instance v0, Lcom/amap/api/services/route/WalkStep;

    invoke-direct {v0, p1}, Lcom/amap/api/services/route/WalkStep;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 214
    invoke-virtual {p0, p1}, Lcom/amap/api/services/route/WalkStep$1;->as(Landroid/os/Parcel;)Lcom/amap/api/services/route/WalkStep;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 214
    invoke-virtual {p0, p1}, Lcom/amap/api/services/route/WalkStep$1;->aV(I)[Lcom/amap/api/services/route/WalkStep;

    move-result-object p1

    return-object p1
.end method
