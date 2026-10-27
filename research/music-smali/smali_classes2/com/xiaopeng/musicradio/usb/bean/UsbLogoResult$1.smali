.class final Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult$1;
.super Ljava/lang/Object;
.source "UsbLogoResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult;
    .locals 1

    .line 21
    new-instance v0, Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult;
    .locals 0

    .line 26
    new-array p1, p1, [Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult$1;->a(Landroid/os/Parcel;)Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 18
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult$1;->a(I)[Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult;

    move-result-object p1

    return-object p1
.end method
