.class final Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult$1;
.super Ljava/lang/Object;
.source "AsrResult.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .line 63
    new-instance v0, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;

    invoke-direct {v0, p1}, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult$1;->createFromParcel(Landroid/os/Parcel;)Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;
    .locals 1
    .param p1, "size"    # I

    .line 68
    new-array v0, p1, [Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 60
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult$1;->newArray(I)[Lcom/xiaopeng/speech/protocol/node/record/bean/AsrResult;

    move-result-object p1

    return-object p1
.end method
