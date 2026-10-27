.class public final Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateAlbumLogo;
.super Ljava/lang/Object;
.source "UsbEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/usb/event/UsbEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UpdateAlbumLogo"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateAlbumLogo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 246
    new-instance v0, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateAlbumLogo$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateAlbumLogo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateAlbumLogo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 243
    sget-object v0, Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateAlbumLogo;->list:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaopeng/musicradio/usb/event/UsbEvent$1;)V
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateAlbumLogo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbAlbum;",
            ">;)V"
        }
    .end annotation

    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 239
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateAlbumLogo;->list:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 286
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$UpdateAlbumLogo;->list:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
