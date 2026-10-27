.class public abstract Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService$Stub;
.super Landroid/os/Binder;
.source "IXPBluetoothService.java"

# interfaces
.implements Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.xpbluetoothservice.IXPBluetoothService"

.field static final TRANSACTION_getBtA2DPControlService:I = 0x4

.field static final TRANSACTION_getBtGeneralControlService:I = 0x3

.field static final TRANSACTION_getBtPhoneControlService:I = 0x5

.field static final TRANSACTION_registerName:I = 0x1

.field static final TRANSACTION_unRegisterName:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.xiaopeng.xpbluetoothservice.IXPBluetoothService"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    const-string v0, "com.xiaopeng.xpbluetoothservice.IXPBluetoothService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;

    if-eqz v1, :cond_1

    .line 30
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService;

    return-object v1

    .line 32
    :cond_1
    new-instance v1, Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
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

    move-result v0

    return v0

    .line 84
    :pswitch_0
    const-string v2, "com.xiaopeng.xpbluetoothservice.IXPBluetoothService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService$Stub;->getBtPhoneControlService()Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;

    move-result-object v2

    .line 86
    .local v2, "_result":Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 88
    return v1

    .line 76
    .end local v2    # "_result":Lcom/xiaopeng/xpbluetoothservice/phonecontrol/IBtPhoneControlService;
    :pswitch_1
    const-string v2, "com.xiaopeng.xpbluetoothservice.IXPBluetoothService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService$Stub;->getBtA2DPControlService()Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;

    move-result-object v2

    .line 78
    .local v2, "_result":Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 80
    return v1

    .line 68
    .end local v2    # "_result":Lcom/xiaopeng/xpbluetoothservice/a2dpcontrol/IBtA2DPControlService;
    :pswitch_2
    const-string v2, "com.xiaopeng.xpbluetoothservice.IXPBluetoothService"

    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p0}, Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService$Stub;->getBtGeneralControlService()Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;

    move-result-object v2

    .line 70
    .local v2, "_result":Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 71
    if-eqz v2, :cond_2

    invoke-interface {v2}, Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    nop

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 72
    return v1

    .line 59
    .end local v2    # "_result":Lcom/xiaopeng/xpbluetoothservice/generalcontrol/IBtGeneralControlService;
    :pswitch_3
    const-string v0, "com.xiaopeng.xpbluetoothservice.IXPBluetoothService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 62
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService$Stub;->unRegisterName(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 64
    return v1

    .line 49
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_4
    const-string v0, "com.xiaopeng.xpbluetoothservice.IXPBluetoothService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xpbluetoothservice/IXPBluetoothService$Stub;->registerName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 55
    return v1

    .line 44
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :cond_3
    const-string v0, "com.xiaopeng.xpbluetoothservice.IXPBluetoothService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

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
