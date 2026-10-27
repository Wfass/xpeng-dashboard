.class final Lcom/xiaopeng/appstore/storeprovider/Resource$1;
.super Ljava/lang/Object;
.source "Resource.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/Resource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/appstore/storeprovider/Resource;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/xiaopeng/appstore/storeprovider/Resource;
    .locals 1

    .line 193
    new-instance v0, Lcom/xiaopeng/appstore/storeprovider/Resource;

    invoke-direct {v0, p1}, Lcom/xiaopeng/appstore/storeprovider/Resource;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public a(I)[Lcom/xiaopeng/appstore/storeprovider/Resource;
    .locals 0

    .line 198
    new-array p1, p1, [Lcom/xiaopeng/appstore/storeprovider/Resource;

    return-object p1
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/Resource$1;->a(Landroid/os/Parcel;)Lcom/xiaopeng/appstore/storeprovider/Resource;

    move-result-object p1

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 190
    invoke-virtual {p0, p1}, Lcom/xiaopeng/appstore/storeprovider/Resource$1;->a(I)[Lcom/xiaopeng/appstore/storeprovider/Resource;

    move-result-object p1

    return-object p1
.end method
