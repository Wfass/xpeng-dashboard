.class public Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult;
.super Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;
.source "UsbLogoResult.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult$DataBean;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private data:Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult$DataBean;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    new-instance v0, Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/bean/xpbean/BaseBean;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult$DataBean;
    .locals 1

    .line 31
    iget-object v0, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult;->data:Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult$DataBean;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UsbLogoResult{data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult;->data:Lcom/xiaopeng/musicradio/usb/bean/UsbLogoResult$DataBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    return-void
.end method
