.class final Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateSingerLogo$1;
.super Ljava/lang/Object;
.source "UsbEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateSingerLogo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateSingerLogo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateSingerLogo;
    .locals 1

    .line 194
    new-instance v0, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateSingerLogo;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateSingerLogo;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateSingerLogo;
    .locals 0

    .line 199
    new-array p1, p1, [Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateSingerLogo;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateSingerLogo$1;->a(Landroid/os/Parcel;)Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateSingerLogo;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 191
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateSingerLogo$1;->a(I)[Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateSingerLogo;

    move-result-object p1

    return-object p1
.end method
