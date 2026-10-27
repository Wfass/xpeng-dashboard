.class public abstract Lcom/xiaopeng/xuimanager/message/IMessage$Stub;
.super Landroid/os/Binder;
.source "IMessage.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/message/IMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/message/IMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/message/IMessage$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_publishMessage:I = 0x3

.field static final TRANSACTION_registerMessage:I = 0x1

.field static final TRANSACTION_unregisterMessage:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.message.IMessage"

    .line 34
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/message/IMessage$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/message/IMessage;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.message.IMessage"

    .line 45
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/message/IMessage;

    if-eqz v1, :cond_1

    .line 47
    check-cast v0, Lcom/xiaopeng/xuimanager/message/IMessage;

    return-object v0

    .line 49
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/message/IMessage$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/message/IMessage$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/message/IMessage;
    .locals 1

    .line 207
    sget-object v0, Lcom/xiaopeng/xuimanager/message/IMessage$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/message/IMessage;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/message/IMessage;)Z
    .locals 1

    .line 197
    sget-object v0, Lcom/xiaopeng/xuimanager/message/IMessage$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/message/IMessage;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 201
    sput-object p0, Lcom/xiaopeng/xuimanager/message/IMessage$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/message/IMessage;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 198
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

    const-string v1, "com.xiaopeng.xuimanager.message.IMessage"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 103
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 92
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/message/IMessage$Stub;->publishMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 81
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 83
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/message/IMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/message/IMessageListener;

    move-result-object p2

    .line 86
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/message/IMessage$Stub;->unregisterMessage(Ljava/lang/String;Lcom/xiaopeng/xuimanager/message/IMessageListener;)V

    .line 87
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 70
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/message/IMessageListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/message/IMessageListener;

    move-result-object p2

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/message/IMessage$Stub;->registerMessage(Ljava/lang/String;Lcom/xiaopeng/xuimanager/message/IMessageListener;)V

    .line 76
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 62
    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
