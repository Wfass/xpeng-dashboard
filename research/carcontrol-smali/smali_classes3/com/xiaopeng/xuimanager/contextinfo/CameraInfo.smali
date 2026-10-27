.class public Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;
.super Ljava/lang/Object;
.source "CameraInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cameraDist:I

.field private cameraDistDisplay:Ljava/lang/String;

.field private cameraDistUnitDisplay:I

.field private cameraSpeed:I

.field private cameraType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;->cameraDist:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;->cameraSpeed:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;->cameraType:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;->cameraDistDisplay:Ljava/lang/String;

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;->cameraDistUnitDisplay:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCameraDist()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;->cameraDist:I

    return v0
.end method

.method public getCameraDistDisplay()Ljava/lang/String;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;->cameraDistDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getCameraDistUnitDisplay()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;->cameraDistUnitDisplay:I

    return v0
.end method

.method public getCameraSpeed()I
    .locals 1

    .line 69
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;->cameraSpeed:I

    return v0
.end method

.method public getCameraType()I
    .locals 1

    .line 77
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;->cameraType:I

    return v0
.end method

.method public setCameraDist(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;->cameraDist:I

    return-void
.end method

.method public setCameraDistDisplay(Ljava/lang/String;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;->cameraDistDisplay:Ljava/lang/String;

    return-void
.end method

.method public setCameraDistUnitDisplay(I)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;->cameraDistUnitDisplay:I

    return-void
.end method

.method public setCameraSpeed(I)V
    .locals 0

    .line 73
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;->cameraSpeed:I

    return-void
.end method

.method public setCameraType(I)V
    .locals 0

    .line 81
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;->cameraType:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 91
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;->cameraDist:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;->cameraSpeed:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;->cameraType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;->cameraDistDisplay:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;->cameraDistUnitDisplay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
