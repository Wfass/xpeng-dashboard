.class Lcom/xiaopeng/xuimanager/contextinfo/Camera$1;
.super Ljava/lang/Object;
.source "Camera.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/contextinfo/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/xuimanager/contextinfo/Camera;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/xuimanager/contextinfo/Camera;
    .locals 1

    .line 17
    new-instance v0, Lcom/xiaopeng/xuimanager/contextinfo/Camera;

    invoke-direct {v0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/Camera;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/Camera$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/xuimanager/contextinfo/Camera;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaopeng/xuimanager/contextinfo/Camera;
    .locals 0

    .line 22
    new-array p1, p1, [Lcom/xiaopeng/xuimanager/contextinfo/Camera;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 14
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/Camera$1;->newArray(I)[Lcom/xiaopeng/xuimanager/contextinfo/Camera;

    move-result-object p1

    return-object p1
.end method
