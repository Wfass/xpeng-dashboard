.class public abstract Lcom/xiaopeng/xuimanager/pipebus/IPipeBus$Stub;
.super Landroid/os/Binder;
.source "IPipeBus.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/pipebus/IPipeBus$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_ioControl:I = 0x1

.field static final TRANSACTION_ioControlWithParcelable:I = 0x3

.field static final TRANSACTION_ioControlWithPocket:I = 0x2

.field static final TRANSACTION_registerListener:I = 0x4

.field static final TRANSACTION_registerListenerEx:I = 0x6

.field static final TRANSACTION_unRegisterListener:I = 0x5

.field static final TRANSACTION_unRegisterListenerEx:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 44
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.pipebus.IPipeBus"

    .line 45
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.pipebus.IPipeBus"

    .line 56
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 57
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    if-eqz v1, :cond_1

    .line 58
    check-cast v0, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    return-object v0

    .line 60
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;
    .locals 1

    .line 402
    sget-object v0, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;)Z
    .locals 1

    .line 392
    sget-object v0, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 396
    sput-object p0, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/pipebus/IPipeBus;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 393
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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.xiaopeng.xuimanager.pipebus.IPipeBus"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 184
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 175
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 178
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus$Stub;->unRegisterListenerEx(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 164
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 166
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    move-result-object p2

    .line 169
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus$Stub;->registerListenerEx(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;)V

    .line 170
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 155
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    move-result-object p1

    .line 158
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus$Stub;->unRegisterListener(Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 146
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;

    move-result-object p1

    .line 149
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus$Stub;->registerListener(Lcom/xiaopeng/xuimanager/pipebus/IPipeBusListener;)V

    .line 150
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 118
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 125
    sget-object v1, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    .line 131
    :cond_0
    new-instance p2, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;

    invoke-direct {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;-><init>()V

    .line 132
    invoke-virtual {p0, p1, p4, v2, p2}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus$Stub;->ioControlWithParcelable(Ljava/lang/String;Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)I

    move-result p1

    .line 133
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 137
    invoke-virtual {p2, p3, v0}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->writeToParcel(Landroid/os/Parcel;I)V

    return v0

    .line 95
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-gez p2, :cond_1

    goto :goto_0

    .line 108
    :cond_1
    new-array v2, p2, [Ljava/lang/String;

    .line 110
    :goto_0
    invoke-virtual {p0, p1, p4, v1, v2}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus$Stub;->ioControlWithPocket(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 112
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    return v0

    .line 81
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p4

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p2

    .line 88
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/pipebus/IPipeBus$Stub;->ioControl(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 73
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

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
