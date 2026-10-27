.class public abstract Lcom/xiaopeng/speech/coreapi/IASREngine$Stub;
.super Landroid/os/Binder;
.source "IASREngine.java"

# interfaces
.implements Lcom/xiaopeng/speech/coreapi/IASREngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/coreapi/IASREngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/coreapi/IASREngine$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.speech.coreapi.IASREngine"

.field static final TRANSACTION_cancelListen:I = 0x7

.field static final TRANSACTION_isDefaultEnableASRInterrupt:I = 0x3

.field static final TRANSACTION_isEnableASRInterrupt:I = 0x2

.field static final TRANSACTION_setASRInterruptEnabled:I = 0x1

.field static final TRANSACTION_setDefaultASRInterruptEnabled:I = 0x4

.field static final TRANSACTION_setVadPauseTime:I = 0x9

.field static final TRANSACTION_setVadTimeout:I = 0x8

.field static final TRANSACTION_startListen:I = 0x5

.field static final TRANSACTION_stopListen:I = 0x6


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.speech.coreapi.IASREngine"

    .line 16
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/speech/coreapi/IASREngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/coreapi/IASREngine;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.speech.coreapi.IASREngine"

    .line 27
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 28
    instance-of v1, v0, Lcom/xiaopeng/speech/coreapi/IASREngine;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Lcom/xiaopeng/speech/coreapi/IASREngine;

    return-object v0

    .line 31
    :cond_1
    new-instance v0, Lcom/xiaopeng/speech/coreapi/IASREngine$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/speech/coreapi/IASREngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
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

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.xiaopeng.speech.coreapi.IASREngine"

    if-eq p1, v0, :cond_2

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 122
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 113
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/coreapi/IASREngine$Stub;->setVadPauseTime(J)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 104
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 107
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/speech/coreapi/IASREngine$Stub;->setVadTimeout(J)V

    .line 108
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 97
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IASREngine$Stub;->cancelListen()V

    .line 99
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 90
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IASREngine$Stub;->stopListen()V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 83
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IASREngine$Stub;->startListen()V

    .line 85
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 74
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v0, v1

    .line 77
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/coreapi/IASREngine$Stub;->setDefaultASRInterruptEnabled(Z)V

    .line 78
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 66
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IASREngine$Stub;->isDefaultEnableASRInterrupt()Z

    move-result p1

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 58
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/speech/coreapi/IASREngine$Stub;->isEnableASRInterrupt()Z

    move-result p1

    .line 60
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 61
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 49
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    .line 52
    :cond_1
    invoke-virtual {p0, v0}, Lcom/xiaopeng/speech/coreapi/IASREngine$Stub;->setASRInterruptEnabled(Z)V

    .line 53
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 44
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
