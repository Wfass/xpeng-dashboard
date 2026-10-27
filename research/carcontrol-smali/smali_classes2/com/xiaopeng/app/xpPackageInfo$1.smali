.class Lcom/xiaopeng/app/xpPackageInfo$1;
.super Ljava/lang/Object;
.source "xpPackageInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/app/xpPackageInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/app/xpPackageInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/app/xpPackageInfo;
    .locals 2

    .line 306
    new-instance v0, Lcom/xiaopeng/app/xpPackageInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/xiaopeng/app/xpPackageInfo;-><init>(Landroid/os/Parcel;Lcom/xiaopeng/app/xpPackageInfo$1;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 303
    invoke-virtual {p0, p1}, Lcom/xiaopeng/app/xpPackageInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaopeng/app/xpPackageInfo;
    .locals 0

    .line 311
    new-array p1, p1, [Lcom/xiaopeng/app/xpPackageInfo;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 303
    invoke-virtual {p0, p1}, Lcom/xiaopeng/app/xpPackageInfo$1;->newArray(I)[Lcom/xiaopeng/app/xpPackageInfo;

    move-result-object p1

    return-object p1
.end method
