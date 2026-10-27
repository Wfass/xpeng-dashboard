.class final Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl$1;
.super Ljava/lang/Object;
.source "LocationImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .line 38
    new-instance v0, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;-><init>(Landroid/os/Parcel;Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;
    .locals 1
    .param p1, "size"    # I

    .line 43
    new-array v0, p1, [Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl$1;->newArray(I)[Lcom/xiaopeng/lib/framework/locationmodule/LocationImpl;

    move-result-object p1

    return-object p1
.end method
