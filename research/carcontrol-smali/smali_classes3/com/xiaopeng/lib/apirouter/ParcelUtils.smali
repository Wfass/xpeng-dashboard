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
    .locals 0

    .line 7
    invoke-virtual {p0}, Landroid/os/Parcel;->readBlob()[B

    move-result-object p0

    return-object p0
.end method
