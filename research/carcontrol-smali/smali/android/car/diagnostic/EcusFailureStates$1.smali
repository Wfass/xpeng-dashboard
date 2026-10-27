.class Landroid/car/diagnostic/EcusFailureStates$1;
.super Ljava/lang/Object;
.source "EcusFailureStates.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/diagnostic/EcusFailureStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/car/diagnostic/EcusFailureStates;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 257
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/car/diagnostic/EcusFailureStates;
    .locals 1

    .line 260
    new-instance v0, Landroid/car/diagnostic/EcusFailureStates;

    invoke-direct {v0, p1}, Landroid/car/diagnostic/EcusFailureStates;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 257
    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates$1;->createFromParcel(Landroid/os/Parcel;)Landroid/car/diagnostic/EcusFailureStates;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/car/diagnostic/EcusFailureStates;
    .locals 0

    .line 265
    new-array p1, p1, [Landroid/car/diagnostic/EcusFailureStates;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 257
    invoke-virtual {p0, p1}, Landroid/car/diagnostic/EcusFailureStates$1;->newArray(I)[Landroid/car/diagnostic/EcusFailureStates;

    move-result-object p1

    return-object p1
.end method
