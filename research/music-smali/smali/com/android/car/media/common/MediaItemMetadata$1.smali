.class final Lcom/android/car/media/common/MediaItemMetadata$1;
.super Ljava/lang/Object;
.source "MediaItemMetadata.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/media/common/MediaItemMetadata;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/android/car/media/common/MediaItemMetadata;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 390
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/android/car/media/common/MediaItemMetadata;
    .locals 1

    .line 393
    new-instance v0, Lcom/android/car/media/common/MediaItemMetadata;

    invoke-direct {v0, p1}, Lcom/android/car/media/common/MediaItemMetadata;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/android/car/media/common/MediaItemMetadata;
    .locals 0

    .line 398
    new-array p1, p1, [Lcom/android/car/media/common/MediaItemMetadata;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/car/media/common/MediaItemMetadata$1;->a(Landroid/os/Parcel;)Lcom/android/car/media/common/MediaItemMetadata;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/car/media/common/MediaItemMetadata$1;->a(I)[Lcom/android/car/media/common/MediaItemMetadata;

    move-result-object p1

    return-object p1
.end method
