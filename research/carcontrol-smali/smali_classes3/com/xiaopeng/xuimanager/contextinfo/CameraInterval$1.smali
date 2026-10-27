.class Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval$1;
.super Ljava/lang/Object;
.source "CameraInterval.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;
    .locals 1

    .line 16
    new-instance v0, Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;
    .locals 0

    .line 21
    new-array p1, p1, [Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 13
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval$1;->newArray(I)[Lcom/xiaopeng/xuimanager/contextinfo/CameraInterval;

    move-result-object p1

    return-object p1
.end method
