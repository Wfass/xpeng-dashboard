.class Lcom/xiaopeng/b/a/a$a$a;
.super Ljava/lang/Object;
.source "IA2DPServiceCallback.java"

# interfaces
.implements Lcom/xiaopeng/b/a/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/b/a/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/xiaopeng/b/a/a$a$a;->mRemote:Landroid/os/IBinder;

    .line 79
    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 91
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 93
    :try_start_0
    const-string v2, "com.xiaopeng.xpbluetoothservice.a2dpcontrol.IA2DPServiceCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    const/4 p1, 0x1

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    .line 96
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    invoke-virtual {p2, v0, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 102
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/b/a/a$a$a;->mRemote:Landroid/os/IBinder;

    invoke-interface {v3, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 103
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 104
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 109
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 111
    nop

    .line 112
    return-void

    .line 109
    :catchall_0
    move-exception p1

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p1
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/xiaopeng/b/a/a$a$a;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method
