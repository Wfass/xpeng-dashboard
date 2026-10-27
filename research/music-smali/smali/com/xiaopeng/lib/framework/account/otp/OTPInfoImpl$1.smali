.class final Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl$1;
.super Ljava/lang/Object;
.source "OTPInfoImpl.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;
    .locals 1

    .line 28
    new-instance v0, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;

    invoke-direct {v0, p1}, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;
    .locals 0

    .line 33
    new-array p1, p1, [Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 25
    invoke-virtual {p0, p1}, Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl$1;->newArray(I)[Lcom/xiaopeng/lib/framework/account/otp/OTPInfoImpl;

    move-result-object p1

    return-object p1
.end method
