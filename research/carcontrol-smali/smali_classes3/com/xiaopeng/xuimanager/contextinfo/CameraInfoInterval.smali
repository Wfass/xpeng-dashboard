.class public Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;
.super Ljava/lang/Object;
.source "CameraInfoInterval.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private averageSpeed:I

.field private cameraDist:I

.field private cameraDistDisplay:Ljava/lang/String;

.field private cameraDistUnitDisplay:I

.field private cameraSpeed:I

.field private cameraType:I

.field private reasonableSpeedInRemainDist:I

.field private remainDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 11
    new-instance v0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->cameraDist:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->cameraSpeed:I

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->cameraType:I

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->remainDistance:I

    .line 44
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->averageSpeed:I

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->reasonableSpeedInRemainDist:I

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->cameraDistDisplay:Ljava/lang/String;

    .line 47
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->cameraDistUnitDisplay:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getAverageSpeed()I
    .locals 1

    .line 75
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->averageSpeed:I

    return v0
.end method

.method public getCameraDist()I
    .locals 1

    .line 91
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->cameraDist:I

    return v0
.end method

.method public getCameraDistDisplay()Ljava/lang/String;
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->cameraDistDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public getCameraDistUnitDisplay()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->cameraDistUnitDisplay:I

    return v0
.end method

.method public getCameraSpeed()I
    .locals 1

    .line 99
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->cameraSpeed:I

    return v0
.end method

.method public getCameraType()I
    .locals 1

    .line 107
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->cameraType:I

    return v0
.end method

.method public getReasonableSpeedInRemainDist()I
    .locals 1

    .line 83
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->reasonableSpeedInRemainDist:I

    return v0
.end method

.method public getRemainDistance()I
    .locals 1

    .line 67
    iget v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->remainDistance:I

    return v0
.end method

.method public setAverageSpeed(I)V
    .locals 0

    .line 79
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->averageSpeed:I

    return-void
.end method

.method public setCameraDist(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->cameraDist:I

    return-void
.end method

.method public setCameraDistDisplay(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->cameraDistDisplay:Ljava/lang/String;

    return-void
.end method

.method public setCameraDistUnitDisplay(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->cameraDistUnitDisplay:I

    return-void
.end method

.method public setCameraSpeed(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->cameraSpeed:I

    return-void
.end method

.method public setCameraType(I)V
    .locals 0

    .line 111
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->cameraType:I

    return-void
.end method

.method public setReasonableSpeedInRemainDist(I)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->reasonableSpeedInRemainDist:I

    return-void
.end method

.method public setRemainDistance(I)V
    .locals 0

    .line 71
    iput p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->remainDistance:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 121
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->cameraDist:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->cameraSpeed:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->cameraType:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->remainDistance:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->averageSpeed:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->reasonableSpeedInRemainDist:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->cameraDistDisplay:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfoInterval;->cameraDistUnitDisplay:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
