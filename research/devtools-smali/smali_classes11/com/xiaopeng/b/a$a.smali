.class public abstract Lcom/xiaopeng/b/a$a;
.super Landroid/os/Binder;
.source "IXPBluetoothService.java"

# interfaces
.implements Lcom/xiaopeng/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/b/a$a$a;
    }
.end annotation


# direct methods
.method public static c(Landroid/os/IBinder;)Lcom/xiaopeng/b/a;
    .locals 2

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 p0, 0x0

    return-object p0

    .line 28
    :cond_0
    const-string v0, "com.xiaopeng.xpbluetoothservice.IXPBluetoothService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/b/a;

    if-eqz v1, :cond_1

    .line 30
    check-cast v0, Lcom/xiaopeng/b/a;

    return-object v0

    .line 32
    :cond_1
    new-instance v0, Lcom/xiaopeng/b/a$a$a;

    invoke-direct {v0, p0}, Lcom/xiaopeng/b/a$a$a;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 40
    const v0, 0x5f4e5446

    const/4 v1, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 84
    :pswitch_0
    const-string p1, "com.xiaopeng.xpbluetoothservice.IXPBluetoothService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/b/a$a;->qk()Lcom/xiaopeng/b/c/a;

    move-result-object p1

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/xiaopeng/b/c/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 88
    return v1

    .line 76
    :pswitch_1
    const-string p1, "com.xiaopeng.xpbluetoothservice.IXPBluetoothService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/b/a$a;->qj()Lcom/xiaopeng/b/a/b;

    move-result-object p1

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/xiaopeng/b/a/b;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 80
    return v1

    .line 68
    :pswitch_2
    const-string p1, "com.xiaopeng.xpbluetoothservice.IXPBluetoothService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/b/a$a;->qi()Lcom/xiaopeng/b/b/a;

    move-result-object p1

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz p1, :cond_2

    invoke-interface {p1}, Lcom/xiaopeng/b/b/a;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 72
    return v1

    .line 59
    :pswitch_3
    const-string p1, "com.xiaopeng.xpbluetoothservice.IXPBluetoothService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/a$a;->eh(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    return v1

    .line 49
    :pswitch_4
    const-string p1, "com.xiaopeng.xpbluetoothservice.IXPBluetoothService"

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Lcom/xiaopeng/b/a$a;->eg(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    return v1

    .line 44
    :cond_3
    const-string p1, "com.xiaopeng.xpbluetoothservice.IXPBluetoothService"

    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 45
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
