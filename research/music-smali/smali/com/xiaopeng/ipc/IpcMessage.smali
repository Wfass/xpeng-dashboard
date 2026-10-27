.class public Lcom/xiaopeng/ipc/IpcMessage;
.super Ljava/lang/Object;
.source "IpcMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/xiaopeng/ipc/IpcMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Ljava/lang/String;

.field b:I

.field c:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 29
    new-instance v0, Lcom/xiaopeng/ipc/IpcMessage$1;

    invoke-direct {v0}, Lcom/xiaopeng/ipc/IpcMessage$1;-><init>()V

    sput-object v0, Lcom/xiaopeng/ipc/IpcMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/ipc/IpcMessage;->a:Ljava/lang/String;

    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/ipc/IpcMessage;->b:I

    .line 26
    invoke-virtual {p1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/ipc/IpcMessage;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/ipc/IpcMessage;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(I)V
    .locals 0

    .line 72
    iput p1, p0, Lcom/xiaopeng/ipc/IpcMessage;->b:I

    return-void
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/xiaopeng/ipc/IpcMessage;->c:Landroid/os/Bundle;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/ipc/IpcMessage;->a:Ljava/lang/String;

    return-void
.end method

.method public b()I
    .locals 1

    .line 68
    iget v0, p0, Lcom/xiaopeng/ipc/IpcMessage;->b:I

    return v0
.end method

.method public c()Landroid/os/Bundle;
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/ipc/IpcMessage;->c:Landroid/os/Bundle;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 48
    iget-object p2, p0, Lcom/xiaopeng/ipc/IpcMessage;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    iget p2, p0, Lcom/xiaopeng/ipc/IpcMessage;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget-object p2, p0, Lcom/xiaopeng/ipc/IpcMessage;->c:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
