.class final Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$1;
.super Ljava/lang/Object;
.source "ResourceRequest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;
    .locals 1

    .line 97
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;

    invoke-direct {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;
    .locals 0

    .line 102
    new-array p1, p1, [Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$1;->a(Landroid/os/Parcel;)Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 94
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/ResourceRequest$1;->a(I)[Lcom/xiaopeng/appstore/storeprovider/ResourceRequest;

    move-result-object p1

    return-object p1
.end method
