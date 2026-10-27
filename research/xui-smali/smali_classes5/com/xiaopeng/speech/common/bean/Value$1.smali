.class final Lcom/xiaopeng/speech/common/bean/Value$1;
.super Ljava/lang/Object;
.source "Value.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/common/bean/Value;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/speech/common/bean/Value;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/speech/common/bean/Value;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 93
    new-instance v0, Lcom/xiaopeng/speech/common/bean/Value;

    invoke-direct {v0, p1}, Lcom/xiaopeng/speech/common/bean/Value;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/common/bean/Value$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/speech/common/bean/Value;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaopeng/speech/common/bean/Value;
    .locals 1
    .param p1, "size"    # I

    .line 98
    new-array v0, p1, [Lcom/xiaopeng/speech/common/bean/Value;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 90
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/common/bean/Value$1;->newArray(I)[Lcom/xiaopeng/speech/common/bean/Value;

    move-result-object p1

    return-object p1
.end method
