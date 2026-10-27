.class public abstract Lcom/xiaopeng/ipc/aidl/IPipeBus$Stub;
.super Landroid/os/Binder;
.source "IPipeBus.java"

# interfaces
.implements Lcom/xiaopeng/ipc/aidl/IPipeBus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/ipc/aidl/IPipeBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/ipc/aidl/IPipeBus$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.ipc.aidl.IPipeBus"

.field static final TRANSACTION_call:I = 0x1

.field static final TRANSACTION_callWithSource:I = 0x2

.field static final TRANSACTION_checkVersion:I = 0x5

.field static final TRANSACTION_hasInitCompleted:I = 0x6

.field static final TRANSACTION_notifyStickySend:I = 0x7

.field static final TRANSACTION_registerListener:I = 0x3

.field static final TRANSACTION_unRegisterListener:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.ipc.aidl.IPipeBus"

    .line 47
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/ipc/aidl/IPipeBus$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/ipc/aidl/IPipeBus;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.ipc.aidl.IPipeBus"

    .line 58
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    instance-of v1, v0, Lcom/xiaopeng/ipc/aidl/IPipeBus;

    if-eqz v1, :cond_1

    .line 60
    check-cast v0, Lcom/xiaopeng/ipc/aidl/IPipeBus;

    return-object v0

    .line 62
    :cond_1
    new-instance v0, Lcom/xiaopeng/ipc/aidl/IPipeBus$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/ipc/aidl/IPipeBus$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/ipc/aidl/IPipeBus;
    .locals 1

    .line 377
    sget-object v0, Lcom/xiaopeng/ipc/aidl/IPipeBus$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/ipc/aidl/IPipeBus;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/ipc/aidl/IPipeBus;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 367
    sget-object v0, Lcom/xiaopeng/ipc/aidl/IPipeBus$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/ipc/aidl/IPipeBus;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 371
    sput-object p0, Lcom/xiaopeng/ipc/aidl/IPipeBus$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/ipc/aidl/IPipeBus;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 368
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.xiaopeng.ipc.aidl.IPipeBus"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 166
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/ipc/aidl/IPipeBusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/ipc/aidl/IPipeBusListener;

    move-result-object p1

    .line 169
    invoke-virtual {p0, p1}, Lcom/xiaopeng/ipc/aidl/IPipeBus$Stub;->notifyStickySend(Lcom/xiaopeng/ipc/aidl/IPipeBusListener;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 158
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/ipc/aidl/IPipeBus$Stub;->hasInitCompleted()Z

    move-result p1

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 146
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 151
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/ipc/aidl/IPipeBus$Stub;->checkVersion(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 137
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/ipc/aidl/IPipeBusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/ipc/aidl/IPipeBusListener;

    move-result-object p1

    .line 140
    invoke-virtual {p0, p1}, Lcom/xiaopeng/ipc/aidl/IPipeBus$Stub;->unRegisterListener(Lcom/xiaopeng/ipc/aidl/IPipeBusListener;)V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 128
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/ipc/aidl/IPipeBusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/ipc/aidl/IPipeBusListener;

    move-result-object p1

    .line 131
    invoke-virtual {p0, p1}, Lcom/xiaopeng/ipc/aidl/IPipeBus$Stub;->registerListener(Lcom/xiaopeng/ipc/aidl/IPipeBusListener;)V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 103
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-gez p1, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-array v0, p1, [Ljava/lang/String;

    :goto_0
    move-object v2, p0

    move-object v7, v0

    .line 120
    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/ipc/aidl/IPipeBus$Stub;->callWithSource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v1

    .line 80
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-gez p2, :cond_1

    goto :goto_1

    .line 93
    :cond_1
    new-array v0, p2, [Ljava/lang/String;

    .line 95
    :goto_1
    invoke-virtual {p0, p1, p4, v2, v0}, Lcom/xiaopeng/ipc/aidl/IPipeBus$Stub;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v1

    .line 75
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
