.class public abstract Lcom/xiaopeng/speech/ISpeechEngine$Stub;
.super Landroid/os/Binder;
.source "ISpeechEngine.java"

# interfaces
.implements Lcom/xiaopeng/speech/ISpeechEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/ISpeechEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/ISpeechEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.speech.ISpeechEngine"

.field static final TRANSACTION_addInitCallback:I = 0x12

.field static final TRANSACTION_getASREngine:I = 0x9

.field static final TRANSACTION_getActorBridge:I = 0x1

.field static final TRANSACTION_getAgent:I = 0x5

.field static final TRANSACTION_getAppMgr:I = 0x6

.field static final TRANSACTION_getCarSystemProperty:I = 0xf

.field static final TRANSACTION_getHotwordEngine:I = 0xe

.field static final TRANSACTION_getQueryInjector:I = 0xa

.field static final TRANSACTION_getRecognizer:I = 0xd

.field static final TRANSACTION_getRecordEngine:I = 0xb

.field static final TRANSACTION_getSoundLockState:I = 0x8

.field static final TRANSACTION_getSpeechState:I = 0x7

.field static final TRANSACTION_getSubscriber:I = 0x2

.field static final TRANSACTION_getTTSEngine:I = 0x3

.field static final TRANSACTION_getVadEngine:I = 0x10

.field static final TRANSACTION_getWakeupEngine:I = 0x4

.field static final TRANSACTION_getWindowEngine:I = 0xc

.field static final TRANSACTION_isInitialized:I = 0x11


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.speech.ISpeechEngine"

    .line 14
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/ISpeechEngine;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.speech.ISpeechEngine"

    .line 25
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 26
    instance-of v1, v0, Lcom/xiaopeng/speech/ISpeechEngine;

    if-eqz v1, :cond_1

    .line 27
    check-cast v0, Lcom/xiaopeng/speech/ISpeechEngine;

    return-object v0

    .line 29
    :cond_1
    new-instance v0, Lcom/xiaopeng/speech/ISpeechEngine$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    const-string v2, "com.xiaopeng.speech.ISpeechEngine"

    if-eq p1, v0, :cond_10

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 183
    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/IInitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/IInitCallback;

    move-result-object p1

    .line 186
    invoke-virtual {p0, p1}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->addInitCallback(Lcom/xiaopeng/speech/IInitCallback;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    .line 175
    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->isInitialized()Z

    move-result p1

    .line 177
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    .line 167
    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getVadEngine()Lcom/xiaopeng/speech/coreapi/IVADEngine;

    move-result-object p1

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 170
    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/IVADEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 159
    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getCarSystemProperty()Lcom/xiaopeng/speech/ICarSystemProperty;

    move-result-object p1

    .line 161
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_1

    .line 162
    invoke-interface {p1}, Lcom/xiaopeng/speech/ICarSystemProperty;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_1
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 151
    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getHotwordEngine()Lcom/xiaopeng/speech/coreapi/IHotwordEngine;

    move-result-object p1

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 154
    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/IHotwordEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_2
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 143
    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getRecognizer()Lcom/xiaopeng/speech/asr/IRecognizer;

    move-result-object p1

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_3

    .line 146
    invoke-interface {p1}, Lcom/xiaopeng/speech/asr/IRecognizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 135
    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getWindowEngine()Lcom/xiaopeng/speech/IWindowEngine;

    move-result-object p1

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_4

    .line 138
    invoke-interface {p1}, Lcom/xiaopeng/speech/IWindowEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 127
    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getRecordEngine()Lcom/xiaopeng/speech/coreapi/IRecordEngine;

    move-result-object p1

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_5

    .line 130
    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/IRecordEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_5
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 119
    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getQueryInjector()Lcom/xiaopeng/speech/IQueryInjector;

    move-result-object p1

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_6

    .line 122
    invoke-interface {p1}, Lcom/xiaopeng/speech/IQueryInjector;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 111
    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getASREngine()Lcom/xiaopeng/speech/coreapi/IASREngine;

    move-result-object p1

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_7

    .line 114
    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/IASREngine;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_7
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 103
    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getSoundLockState()Lcom/xiaopeng/speech/ISoundLockState;

    move-result-object p1

    .line 105
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_8

    .line 106
    invoke-interface {p1}, Lcom/xiaopeng/speech/ISoundLockState;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 95
    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getSpeechState()Lcom/xiaopeng/speech/ISpeechState;

    move-result-object p1

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_9

    .line 98
    invoke-interface {p1}, Lcom/xiaopeng/speech/ISpeechState;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_9
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 87
    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getAppMgr()Lcom/xiaopeng/speech/coreapi/IAppMgr;

    move-result-object p1

    .line 89
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_a

    .line 90
    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/IAppMgr;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_a
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 79
    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getAgent()Lcom/xiaopeng/speech/coreapi/IAgent;

    move-result-object p1

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_b

    .line 82
    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/IAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 71
    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getWakeupEngine()Lcom/xiaopeng/speech/coreapi/IWakeupEngine;

    move-result-object p1

    .line 73
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_c

    .line 74
    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 63
    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getTTSEngine()Lcom/xiaopeng/speech/coreapi/ITTSEngine;

    move-result-object p1

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_d

    .line 66
    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/ITTSEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_d
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 55
    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getSubscriber()Lcom/xiaopeng/speech/coreapi/ISubscriber;

    move-result-object p1

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_e

    .line 58
    invoke-interface {p1}, Lcom/xiaopeng/speech/coreapi/ISubscriber;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_e
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 47
    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getActorBridge()Lcom/xiaopeng/speech/IActorBridge;

    move-result-object p1

    .line 49
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_f

    .line 50
    invoke-interface {p1}, Lcom/xiaopeng/speech/IActorBridge;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    :cond_f
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    return v1

    .line 42
    :cond_10
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
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
