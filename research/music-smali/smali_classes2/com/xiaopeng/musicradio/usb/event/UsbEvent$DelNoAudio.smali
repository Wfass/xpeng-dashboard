.class public final Lcom/xiaopeng/musicradio/usb/event/UsbEvent$DelNoAudio;
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
    name = "DelNoAudio"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/usb/event/UsbEvent$DelNoAudio;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private hash:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 132
    new-instance v0, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$DelNoAudio$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$DelNoAudio$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$DelNoAudio;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$DelNoAudio;->hash:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/xiaopeng/musicradio/usb/event/UsbEvent$1;)V
    .locals 0

    .line 121
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$DelNoAudio;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$DelNoAudio;->hash:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$DelNoAudio;->hash:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 172
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/event/UsbEvent$DelNoAudio;->hash:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
