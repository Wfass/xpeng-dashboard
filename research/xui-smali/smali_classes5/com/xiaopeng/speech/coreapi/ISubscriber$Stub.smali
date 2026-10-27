.class public abstract Lcom/xiaopeng/speech/coreapi/ISubscriber$Stub;
.super Landroid/os/Binder;
.source "ISubscriber.java"

# interfaces
.implements Lcom/xiaopeng/speech/coreapi/ISubscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/coreapi/ISubscriber;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/coreapi/ISubscriber$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.speech.coreapi.ISubscriber"

.field static final TRANSACTION_isSubscribed:I = 0x3

.field static final TRANSACTION_subscribe:I = 0x1

.field static final TRANSACTION_unSubscribe:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.xiaopeng.speech.coreapi.ISubscriber"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/speech/coreapi/ISubscriber$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/coreapi/ISubscriber;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    const-string v0, "com.xiaopeng.speech.coreapi.ISubscriber"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/speech/coreapi/ISubscriber;

    if-eqz v1, :cond_1

    .line 30
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/speech/coreapi/ISubscriber;

    return-object v1

    .line 32
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/coreapi/ISubscriber$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/coreapi/ISubscriber$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 4
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
    const-string v0, "com.xiaopeng.speech.coreapi.ISubscriber"

    .line 41
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 80
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 70
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 73
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/speech/coreapi/ISubscriber$Stub;->isSubscribed(Ljava/lang/String;)Z

    move-result v3

    .line 74
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 75
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    return v2

    .line 61
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Z
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/coreapi/IEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/coreapi/IEventObserver;

    move-result-object v1

    .line 64
    .local v1, "_arg0":Lcom/xiaopeng/speech/coreapi/IEventObserver;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/speech/coreapi/ISubscriber$Stub;->unSubscribe(Lcom/xiaopeng/speech/coreapi/IEventObserver;)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    return v2

    .line 50
    .end local v1    # "_arg0":Lcom/xiaopeng/speech/coreapi/IEventObserver;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "_arg0":[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/xiaopeng/speech/coreapi/IEventObserver$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/coreapi/IEventObserver;

    move-result-object v3

    .line 55
    .local v3, "_arg1":Lcom/xiaopeng/speech/coreapi/IEventObserver;
    invoke-virtual {p0, v1, v3}, Lcom/xiaopeng/speech/coreapi/ISubscriber$Stub;->subscribe([Ljava/lang/String;Lcom/xiaopeng/speech/coreapi/IEventObserver;)V

    .line 56
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 57
    return v2

    .line 45
    .end local v1    # "_arg0":[Ljava/lang/String;
    .end local v3    # "_arg1":Lcom/xiaopeng/speech/coreapi/IEventObserver;
    :cond_0
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
