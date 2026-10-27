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

    .line 14
    const-string v0, "com.xiaopeng.speech.ISpeechEngine"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/ISpeechEngine;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 22
    if-nez p0, :cond_0

    .line 23
    const/4 v0, 0x0

    return-object v0

    .line 25
    :cond_0
    const-string v0, "com.xiaopeng.speech.ISpeechEngine"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 26
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/speech/ISpeechEngine;

    if-eqz v1, :cond_1

    .line 27
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/speech/ISpeechEngine;

    return-object v1

    .line 29
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/ISpeechEngine$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 33
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

    .line 37
    const-string v0, "com.xiaopeng.speech.ISpeechEngine"

    .line 38
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_10

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 192
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 183
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Lcom/xiaopeng/speech/IInitCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/IInitCallback;

    move-result-object v1

    .line 186
    .local v1, "_arg0":Lcom/xiaopeng/speech/IInitCallback;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->addInitCallback(Lcom/xiaopeng/speech/IInitCallback;)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 188
    return v2

    .line 175
    .end local v1    # "_arg0":Lcom/xiaopeng/speech/IInitCallback;
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->isInitialized()Z

    move-result v1

    .line 177
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 178
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    return v2

    .line 167
    .end local v1    # "_result":Z
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getVadEngine()Lcom/xiaopeng/speech/coreapi/IVADEngine;

    move-result-object v3

    .line 169
    .local v3, "_result":Lcom/xiaopeng/speech/coreapi/IVADEngine;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/xiaopeng/speech/coreapi/IVADEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 171
    return v2

    .line 159
    .end local v3    # "_result":Lcom/xiaopeng/speech/coreapi/IVADEngine;
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getCarSystemProperty()Lcom/xiaopeng/speech/ICarSystemProperty;

    move-result-object v3

    .line 161
    .local v3, "_result":Lcom/xiaopeng/speech/ICarSystemProperty;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/xiaopeng/speech/ICarSystemProperty;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 163
    return v2

    .line 151
    .end local v3    # "_result":Lcom/xiaopeng/speech/ICarSystemProperty;
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getHotwordEngine()Lcom/xiaopeng/speech/coreapi/IHotwordEngine;

    move-result-object v3

    .line 153
    .local v3, "_result":Lcom/xiaopeng/speech/coreapi/IHotwordEngine;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    if-eqz v3, :cond_2

    invoke-interface {v3}, Lcom/xiaopeng/speech/coreapi/IHotwordEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 155
    return v2

    .line 143
    .end local v3    # "_result":Lcom/xiaopeng/speech/coreapi/IHotwordEngine;
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getRecognizer()Lcom/xiaopeng/speech/asr/IRecognizer;

    move-result-object v3

    .line 145
    .local v3, "_result":Lcom/xiaopeng/speech/asr/IRecognizer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/xiaopeng/speech/asr/IRecognizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 147
    return v2

    .line 135
    .end local v3    # "_result":Lcom/xiaopeng/speech/asr/IRecognizer;
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getWindowEngine()Lcom/xiaopeng/speech/IWindowEngine;

    move-result-object v3

    .line 137
    .local v3, "_result":Lcom/xiaopeng/speech/IWindowEngine;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lcom/xiaopeng/speech/IWindowEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 139
    return v2

    .line 127
    .end local v3    # "_result":Lcom/xiaopeng/speech/IWindowEngine;
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getRecordEngine()Lcom/xiaopeng/speech/coreapi/IRecordEngine;

    move-result-object v3

    .line 129
    .local v3, "_result":Lcom/xiaopeng/speech/coreapi/IRecordEngine;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    if-eqz v3, :cond_5

    invoke-interface {v3}, Lcom/xiaopeng/speech/coreapi/IRecordEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 131
    return v2

    .line 119
    .end local v3    # "_result":Lcom/xiaopeng/speech/coreapi/IRecordEngine;
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getQueryInjector()Lcom/xiaopeng/speech/IQueryInjector;

    move-result-object v3

    .line 121
    .local v3, "_result":Lcom/xiaopeng/speech/IQueryInjector;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lcom/xiaopeng/speech/IQueryInjector;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_6
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 123
    return v2

    .line 111
    .end local v3    # "_result":Lcom/xiaopeng/speech/IQueryInjector;
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getASREngine()Lcom/xiaopeng/speech/coreapi/IASREngine;

    move-result-object v3

    .line 113
    .local v3, "_result":Lcom/xiaopeng/speech/coreapi/IASREngine;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v3, :cond_7

    invoke-interface {v3}, Lcom/xiaopeng/speech/coreapi/IASREngine;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_7
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 115
    return v2

    .line 103
    .end local v3    # "_result":Lcom/xiaopeng/speech/coreapi/IASREngine;
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getSoundLockState()Lcom/xiaopeng/speech/ISoundLockState;

    move-result-object v3

    .line 105
    .local v3, "_result":Lcom/xiaopeng/speech/ISoundLockState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    if-eqz v3, :cond_8

    invoke-interface {v3}, Lcom/xiaopeng/speech/ISoundLockState;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_8
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 107
    return v2

    .line 95
    .end local v3    # "_result":Lcom/xiaopeng/speech/ISoundLockState;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getSpeechState()Lcom/xiaopeng/speech/ISpeechState;

    move-result-object v3

    .line 97
    .local v3, "_result":Lcom/xiaopeng/speech/ISpeechState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    if-eqz v3, :cond_9

    invoke-interface {v3}, Lcom/xiaopeng/speech/ISpeechState;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_9
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 99
    return v2

    .line 87
    .end local v3    # "_result":Lcom/xiaopeng/speech/ISpeechState;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getAppMgr()Lcom/xiaopeng/speech/coreapi/IAppMgr;

    move-result-object v3

    .line 89
    .local v3, "_result":Lcom/xiaopeng/speech/coreapi/IAppMgr;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 90
    if-eqz v3, :cond_a

    invoke-interface {v3}, Lcom/xiaopeng/speech/coreapi/IAppMgr;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_a
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 91
    return v2

    .line 79
    .end local v3    # "_result":Lcom/xiaopeng/speech/coreapi/IAppMgr;
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getAgent()Lcom/xiaopeng/speech/coreapi/IAgent;

    move-result-object v3

    .line 81
    .local v3, "_result":Lcom/xiaopeng/speech/coreapi/IAgent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    if-eqz v3, :cond_b

    invoke-interface {v3}, Lcom/xiaopeng/speech/coreapi/IAgent;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 83
    return v2

    .line 71
    .end local v3    # "_result":Lcom/xiaopeng/speech/coreapi/IAgent;
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getWakeupEngine()Lcom/xiaopeng/speech/coreapi/IWakeupEngine;

    move-result-object v3

    .line 73
    .local v3, "_result":Lcom/xiaopeng/speech/coreapi/IWakeupEngine;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 74
    if-eqz v3, :cond_c

    invoke-interface {v3}, Lcom/xiaopeng/speech/coreapi/IWakeupEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 75
    return v2

    .line 63
    .end local v3    # "_result":Lcom/xiaopeng/speech/coreapi/IWakeupEngine;
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getTTSEngine()Lcom/xiaopeng/speech/coreapi/ITTSEngine;

    move-result-object v3

    .line 65
    .local v3, "_result":Lcom/xiaopeng/speech/coreapi/ITTSEngine;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    if-eqz v3, :cond_d

    invoke-interface {v3}, Lcom/xiaopeng/speech/coreapi/ITTSEngine;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_d
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 67
    return v2

    .line 55
    .end local v3    # "_result":Lcom/xiaopeng/speech/coreapi/ITTSEngine;
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getSubscriber()Lcom/xiaopeng/speech/coreapi/ISubscriber;

    move-result-object v3

    .line 57
    .local v3, "_result":Lcom/xiaopeng/speech/coreapi/ISubscriber;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    if-eqz v3, :cond_e

    invoke-interface {v3}, Lcom/xiaopeng/speech/coreapi/ISubscriber;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_e
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 59
    return v2

    .line 47
    .end local v3    # "_result":Lcom/xiaopeng/speech/coreapi/ISubscriber;
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechEngine$Stub;->getActorBridge()Lcom/xiaopeng/speech/IActorBridge;

    move-result-object v3

    .line 49
    .local v3, "_result":Lcom/xiaopeng/speech/IActorBridge;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 50
    if-eqz v3, :cond_f

    invoke-interface {v3}, Lcom/xiaopeng/speech/IActorBridge;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    nop

    :cond_f
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 51
    return v2

    .line 42
    .end local v3    # "_result":Lcom/xiaopeng/speech/IActorBridge;
    :cond_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    return v2

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
