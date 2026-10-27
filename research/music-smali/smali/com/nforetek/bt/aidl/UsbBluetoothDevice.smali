.class public Lcom/nforetek/bt/aidl/UsbBluetoothDevice;
.super Ljava/lang/Object;
.source "UsbBluetoothDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nforetek/bt/aidl/UsbBluetoothDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddress:Ljava/lang/String;

.field private mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lcom/nforetek/bt/aidl/UsbBluetoothDevice$1;

    invoke-direct {v0}, Lcom/nforetek/bt/aidl/UsbBluetoothDevice$1;-><init>()V

    sput-object v0, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->mAddress:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->mName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 65
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    check-cast p1, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;

    .line 67
    iget-object v0, p0, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->mAddress:Ljava/lang/String;

    iget-object p1, p1, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 72
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->mAddress:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 58
    iget-object p2, p0, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 59
    iget-object p2, p0, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    return-void
.end method
