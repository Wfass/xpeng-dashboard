.class final Lcom/xiaopeng/ipc/IpcMessage$1;
.super Ljava/lang/Object;
.source "IpcMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/ipc/IpcMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/xiaopeng/ipc/IpcMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public aC(Landroid/os/Parcel;)Lcom/xiaopeng/ipc/IpcMessage;
    .locals 1

    .line 32
    new-instance v0, Lcom/xiaopeng/ipc/IpcMessage;

    invoke-direct {v0, p1}, Lcom/xiaopeng/ipc/IpcMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/xiaopeng/ipc/IpcMessage$1;->aC(Landroid/os/Parcel;)Lcom/xiaopeng/ipc/IpcMessage;

    move-result-object p1

    return-object p1
.end method

.method public dP(I)[Lcom/xiaopeng/ipc/IpcMessage;
    .locals 0

    .line 37
    new-array p1, p1, [Lcom/xiaopeng/ipc/IpcMessage;

    return-object p1
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 29
    invoke-virtual {p0, p1}, Lcom/xiaopeng/ipc/IpcMessage$1;->dP(I)[Lcom/xiaopeng/ipc/IpcMessage;

    move-result-object p1

    return-object p1
.end method
