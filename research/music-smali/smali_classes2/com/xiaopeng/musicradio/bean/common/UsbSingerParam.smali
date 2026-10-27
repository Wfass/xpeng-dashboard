.class public Lcom/xiaopeng/musicradio/bean/common/UsbSingerParam;
.super Ljava/lang/Object;
.source "UsbSingerParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/musicradio/bean/common/UsbSingerParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private param:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lcom/xiaopeng/musicradio/bean/common/UsbSingerParam$1;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/common/UsbSingerParam$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/musicradio/bean/common/UsbSingerParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    sget-object v0, Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 19
    iput-object v1, p0, Lcom/xiaopeng/musicradio/bean/common/UsbSingerParam;->param:Ljava/util/List;

    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;",
            ">;)V"
        }
    .end annotation

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/common/UsbSingerParam;->param:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getParam()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/musicradio/bean/common/UsbSingerParam;->param:Ljava/util/List;

    return-object v0
.end method

.method public setParam(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbSinger;",
            ">;)V"
        }
    .end annotation

    .line 33
    iput-object p1, p0, Lcom/xiaopeng/musicradio/bean/common/UsbSingerParam;->param:Ljava/util/List;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 43
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/common/UsbSingerParam;->param:Ljava/util/List;

    if-nez p2, :cond_0

    const/4 p2, 0x0

    .line 44
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 46
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    iget-object p2, p0, Lcom/xiaopeng/musicradio/bean/common/UsbSingerParam;->param:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    :goto_0
    return-void
.end method
