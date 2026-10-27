.class public abstract Lcom/xiaopeng/ipc/a$a;
.super Landroid/os/Binder;
.source "IPC.java"

# interfaces
.implements Lcom/xiaopeng/ipc/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/ipc/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/ipc/a$a$a;
    }
.end annotation


# direct methods
.method public static b(Landroid/os/IBinder;)Lcom/xiaopeng/ipc/a;
    .locals 2

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 p0, 0x0

    return-object p0

    .line 28
    :cond_0
    const-string v0, "com.xiaopeng.ipc.IPC"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/ipc/a;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/xiaopeng/ipc/a;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/xiaopeng/ipc/a$a$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/ipc/a$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const-string v0, "com.xiaopeng.ipc.IPC"

    .line 41
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 88
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 72
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_0

    .line 77
    sget-object p4, Lcom/xiaopeng/ipc/IpcMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/ipc/IpcMessage;

    goto :goto_0

    .line 80
    :cond_0
    const/4 p2, 0x0

    .line 82
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/ipc/a$a;->a(Ljava/lang/String;Lcom/xiaopeng/ipc/IpcMessage;)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    return v2

    .line 61
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 65
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/ipc/b$a;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/ipc/b;

    move-result-object p2

    .line 66
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/ipc/a$a;->b(Ljava/lang/String;Lcom/xiaopeng/ipc/b;)V

    .line 67
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 68
    return v2

    .line 50
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 54
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/ipc/b$a;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/ipc/b;

    move-result-object p2

    .line 55
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/ipc/a$a;->a(Ljava/lang/String;Lcom/xiaopeng/ipc/b;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    return v2

    .line 45
    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
