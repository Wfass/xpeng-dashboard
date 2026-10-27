.class public Lcom/xiaopeng/xuimanager/contextinfo/Camera;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/xuimanager/contextinfo/Camera;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private cameraInfo:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;",
            ">;"
        }
    .end annotation
.end field

.field private isCameraShow:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 14
    new-instance v0, Lcom/xiaopeng/xuimanager/contextinfo/Camera$1;

    invoke-direct {v0}, Lcom/xiaopeng/xuimanager/contextinfo/Camera$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/xuimanager/contextinfo/Camera;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Camera;->isCameraShow:Z

    .line 33
    sget-object v0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Camera;->cameraInfo:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCameraInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;",
            ">;"
        }
    .end annotation

    .line 45
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Camera;->cameraInfo:Ljava/util/List;

    return-object v0
.end method

.method public getIsCameraShow()Z
    .locals 1

    .line 37
    iget-boolean v0, p0, Lcom/xiaopeng/xuimanager/contextinfo/Camera;->isCameraShow:Z

    return v0
.end method

.method public setCameraInfo(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuimanager/contextinfo/CameraInfo;",
            ">;)V"
        }
    .end annotation

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Camera;->cameraInfo:Ljava/util/List;

    return-void
.end method

.method public setIsCameraShow(Z)V
    .locals 0

    .line 41
    iput-boolean p1, p0, Lcom/xiaopeng/xuimanager/contextinfo/Camera;->isCameraShow:Z

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 59
    iget-boolean p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Camera;->isCameraShow:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 60
    iget-object p2, p0, Lcom/xiaopeng/xuimanager/contextinfo/Camera;->cameraInfo:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return-void
.end method
