.class Lcom/xiaopeng/screen/ScreenDevice$1;
.super Ljava/lang/Object;
.source "ScreenDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/screen/ScreenDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/screen/ScreenDevice;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/screen/ScreenDevice;
    .locals 2

    .line 77
    new-instance v0, Lcom/xiaopeng/screen/ScreenDevice;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/xiaopeng/screen/ScreenDevice;-><init>(Landroid/os/Parcel;Lcom/xiaopeng/screen/ScreenDevice$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/xiaopeng/screen/ScreenDevice$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/screen/ScreenDevice;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaopeng/screen/ScreenDevice;
    .locals 0

    .line 81
    new-array p1, p1, [Lcom/xiaopeng/screen/ScreenDevice;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 74
    invoke-virtual {p0, p1}, Lcom/xiaopeng/screen/ScreenDevice$1;->newArray(I)[Lcom/xiaopeng/screen/ScreenDevice;

    move-result-object p1

    return-object p1
.end method
