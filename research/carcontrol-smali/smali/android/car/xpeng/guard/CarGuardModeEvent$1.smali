.class Landroid/car/xpeng/guard/CarGuardModeEvent$1;
.super Ljava/lang/Object;
.source "CarGuardModeEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/guard/CarGuardModeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/car/xpeng/guard/CarGuardModeEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/car/xpeng/guard/CarGuardModeEvent;
    .locals 1

    .line 38
    new-instance v0, Landroid/car/xpeng/guard/CarGuardModeEvent;

    invoke-direct {v0, p1}, Landroid/car/xpeng/guard/CarGuardModeEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Landroid/car/xpeng/guard/CarGuardModeEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/car/xpeng/guard/CarGuardModeEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/car/xpeng/guard/CarGuardModeEvent;
    .locals 0

    .line 42
    new-array p1, p1, [Landroid/car/xpeng/guard/CarGuardModeEvent;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Landroid/car/xpeng/guard/CarGuardModeEvent$1;->newArray(I)[Landroid/car/xpeng/guard/CarGuardModeEvent;

    move-result-object p1

    return-object p1
.end method
