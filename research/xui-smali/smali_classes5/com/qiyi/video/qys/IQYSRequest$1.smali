.class Lcom/qiyi/video/qys/IQYSRequest$1;
.super Ljava/lang/Object;
.source "IQYSRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiyi/video/qys/IQYSRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/qiyi/video/qys/IQYSRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qiyi/video/qys/IQYSRequest;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 39
    new-instance v0, Lcom/qiyi/video/qys/IQYSRequest;

    invoke-direct {v0, p1}, Lcom/qiyi/video/qys/IQYSRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/qiyi/video/qys/IQYSRequest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qiyi/video/qys/IQYSRequest;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/qiyi/video/qys/IQYSRequest;
    .locals 1
    .param p1, "size"    # I

    .line 44
    new-array v0, p1, [Lcom/qiyi/video/qys/IQYSRequest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/qiyi/video/qys/IQYSRequest$1;->newArray(I)[Lcom/qiyi/video/qys/IQYSRequest;

    move-result-object p1

    return-object p1
.end method
