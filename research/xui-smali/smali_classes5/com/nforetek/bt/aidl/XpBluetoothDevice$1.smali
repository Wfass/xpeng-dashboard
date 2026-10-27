.class final Lcom/nforetek/bt/aidl/XpBluetoothDevice$1;
.super Ljava/lang/Object;
.source "XpBluetoothDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nforetek/bt/aidl/XpBluetoothDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/nforetek/bt/aidl/XpBluetoothDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/nforetek/bt/aidl/XpBluetoothDevice;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 26
    new-instance v0, Lcom/nforetek/bt/aidl/XpBluetoothDevice;

    invoke-direct {v0, p1}, Lcom/nforetek/bt/aidl/XpBluetoothDevice;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/nforetek/bt/aidl/XpBluetoothDevice$1;->createFromParcel(Landroid/os/Parcel;)Lcom/nforetek/bt/aidl/XpBluetoothDevice;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/nforetek/bt/aidl/XpBluetoothDevice;
    .locals 1
    .param p1, "size"    # I

    .line 31
    new-array v0, p1, [Lcom/nforetek/bt/aidl/XpBluetoothDevice;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/nforetek/bt/aidl/XpBluetoothDevice$1;->newArray(I)[Lcom/nforetek/bt/aidl/XpBluetoothDevice;

    move-result-object p1

    return-object p1
.end method
