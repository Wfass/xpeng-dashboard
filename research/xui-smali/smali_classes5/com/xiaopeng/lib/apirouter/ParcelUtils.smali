.class public Lcom/xiaopeng/lib/apirouter/ParcelUtils;
.super Ljava/lang/Object;
.source "ParcelUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readBlob(Landroid/os/Parcel;)[B
    .locals 1
    .param p0, "data"    # Landroid/os/Parcel;

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object v0

    return-object v0
.end method
