.class final Lcom/xiaopeng/speech/common/bean/BaseBean$1;
.super Ljava/lang/Object;
.source "BaseBean.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/common/bean/BaseBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/speech/common/bean/BaseBean;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/speech/common/bean/BaseBean;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .line 52
    new-instance v0, Lcom/xiaopeng/speech/common/bean/BaseBean;

    invoke-direct {v0, p1}, Lcom/xiaopeng/speech/common/bean/BaseBean;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/common/bean/BaseBean$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/speech/common/bean/BaseBean;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaopeng/speech/common/bean/BaseBean;
    .locals 1
    .param p1, "size"    # I

    .line 57
    new-array v0, p1, [Lcom/xiaopeng/speech/common/bean/BaseBean;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/common/bean/BaseBean$1;->newArray(I)[Lcom/xiaopeng/speech/common/bean/BaseBean;

    move-result-object p1

    return-object p1
.end method
