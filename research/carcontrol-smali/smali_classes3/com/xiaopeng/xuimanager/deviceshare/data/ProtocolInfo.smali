.class public Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo;
.super Ljava/lang/Object;
.source "ProtocolInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private icon:Landroid/graphics/Bitmap;

.field private protocol:I

.field private tabDescription:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    new-instance v0, Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo;->protocol:I

    .line 73
    invoke-virtual {p1}, Landroid/os/Parcel;->readStringNoHelper()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo;->tabDescription:Ljava/lang/String;

    .line 74
    const-class v0, Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Bitmap;

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo;->icon:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo;->icon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getProtocol()I
    .locals 1

    .line 36
    iget v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo;->protocol:I

    return v0
.end method

.method public getTabDescription()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo;->tabDescription:Ljava/lang/String;

    return-object v0
.end method

.method public setIcon(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo;->icon:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setProtocol(I)V
    .locals 0

    .line 26
    iput p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo;->protocol:I

    return-void
.end method

.method public setTabDescription(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo;->tabDescription:Ljava/lang/String;

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 79
    iget v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo;->protocol:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo;->tabDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringNoHelper(Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/deviceshare/data/ProtocolInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void
.end method
