.class Landroid/car/xpeng/mode/CarLeaveModeEvent$1;
.super Ljava/lang/Object;
.source "CarLeaveModeEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/car/xpeng/mode/CarLeaveModeEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/car/xpeng/mode/CarLeaveModeEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/car/xpeng/mode/CarLeaveModeEvent;
    .locals 1

    .line 78
    new-instance v0, Landroid/car/xpeng/mode/CarLeaveModeEvent;

    invoke-direct {v0, p1}, Landroid/car/xpeng/mode/CarLeaveModeEvent;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Landroid/car/xpeng/mode/CarLeaveModeEvent$1;->createFromParcel(Landroid/os/Parcel;)Landroid/car/xpeng/mode/CarLeaveModeEvent;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Landroid/car/xpeng/mode/CarLeaveModeEvent;
    .locals 0

    .line 82
    new-array p1, p1, [Landroid/car/xpeng/mode/CarLeaveModeEvent;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 76
    invoke-virtual {p0, p1}, Landroid/car/xpeng/mode/CarLeaveModeEvent$1;->newArray(I)[Landroid/car/xpeng/mode/CarLeaveModeEvent;

    move-result-object p1

    return-object p1
.end method
