.class final Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl$1;
.super Ljava/lang/Object;
.source "AuthInfoImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;
    .locals 1

    .line 26
    new-instance v0, Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;
    .locals 0

    .line 31
    new-array p1, p1, [Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 23
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl$1;->newArray(I)[Lcom/xiaopeng/lib/framework/account/authorized/AuthInfoImpl;

    move-result-object p1

    return-object p1
.end method
