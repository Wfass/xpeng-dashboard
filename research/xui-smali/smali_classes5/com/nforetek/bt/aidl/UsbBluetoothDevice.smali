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
    .param p1, "in"    # Landroid/os/Parcel;

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->mAddress:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->mName:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "mAddress"    # Ljava/lang/String;
    .param p2, "mName"    # Ljava/lang/String;

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->mAddress:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->mName:Ljava/lang/String;

    .line 16
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 64
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 65
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;

    .line 67
    .local v0, "that":Lcom/nforetek/bt/aidl/UsbBluetoothDevice;
    iget-object v1, p0, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->mAddress:Ljava/lang/String;

    iget-object v2, v0, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 65
    .end local v0    # "that":Lcom/nforetek/bt/aidl/UsbBluetoothDevice;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->mAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 72
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->mAddress:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "mAddress"    # Ljava/lang/String;

    .line 40
    iput-object p1, p0, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->mAddress:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "mName"    # Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->mName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 58
    iget-object v0, p0, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->mAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 59
    iget-object v0, p0, Lcom/nforetek/bt/aidl/UsbBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 60
    return-void
.end method
