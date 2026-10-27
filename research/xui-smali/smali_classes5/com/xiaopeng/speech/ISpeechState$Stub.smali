.class public abstract Lcom/xiaopeng/speech/ISpeechState$Stub;
.super Landroid/os/Binder;
.source "ISpeechState.java"

# interfaces
.implements Lcom/xiaopeng/speech/ISpeechState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/ISpeechState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/ISpeechState$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.speech.ISpeechState"

.field static final TRANSACTION_canExit:I = 0x9

.field static final TRANSACTION_canPerformASRToText:I = 0x15

.field static final TRANSACTION_changeCurrentTTS:I = 0xc

.field static final TRANSACTION_getCurrentTTS:I = 0xb

.field static final TRANSACTION_getFuncState:I = 0xe

.field static final TRANSACTION_getOOBEStatus:I = 0x7

.field static final TRANSACTION_getPhoneCallStatus:I = 0x3

.field static final TRANSACTION_isDMEndByPOISelect:I = 0x11

.field static final TRANSACTION_isDMStarted:I = 0xa

.field static final TRANSACTION_isHotWordEngineReady:I = 0x12

.field static final TRANSACTION_isInitOK:I = 0x1

.field static final TRANSACTION_isMicrophoneMute:I = 0x13

.field static final TRANSACTION_isNGCSpeechInitState:I = 0x16

.field static final TRANSACTION_isShowSpeechDialog:I = 0x5

.field static final TRANSACTION_isStateWaiting:I = 0xf

.field static final TRANSACTION_onWaiting:I = 0x10

.field static final TRANSACTION_setCanExitFlag:I = 0x8

.field static final TRANSACTION_setFuncState:I = 0xd

.field static final TRANSACTION_setOOBEStatus:I = 0x6

.field static final TRANSACTION_setPhoneCallStatus:I = 0x2

.field static final TRANSACTION_setPhoneCallStatusWithBinder:I = 0x14

.field static final TRANSACTION_setShowSpeechDialog:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.xiaopeng.speech.ISpeechState"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/speech/ISpeechState$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/ISpeechState;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 25
    if-nez p0, :cond_0

    .line 26
    const/4 v0, 0x0

    return-object v0

    .line 28
    :cond_0
    const-string v0, "com.xiaopeng.speech.ISpeechState"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/speech/ISpeechState;

    if-eqz v1, :cond_1

    .line 30
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/speech/ISpeechState;

    return-object v1

    .line 32
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/ISpeechState$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/ISpeechState$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
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
    const-string v0, "com.xiaopeng.speech.ISpeechState"

    .line 41
    .local v0, "descriptor":Ljava/lang/String;
    const v1, 0x5f4e5446

    const/4 v2, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    .line 241
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 233
    :pswitch_0
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechState$Stub;->isNGCSpeechInitState()I

    move-result v1

    .line 235
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    return v2

    .line 223
    .end local v1    # "_result":I
    :pswitch_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/speech/ISpeechState$Stub;->canPerformASRToText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 227
    .local v3, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 229
    return v2

    .line 212
    .end local v1    # "_arg0":Ljava/lang/String;
    .end local v3    # "_result":Ljava/lang/String;
    :pswitch_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 216
    .local v1, "_arg0":Landroid/os/IBinder;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 217
    .local v3, "_arg1":I
    invoke-virtual {p0, v1, v3}, Lcom/xiaopeng/speech/ISpeechState$Stub;->setPhoneCallStatusWithBinder(Landroid/os/IBinder;I)V

    .line 218
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    return v2

    .line 204
    .end local v1    # "_arg0":Landroid/os/IBinder;
    .end local v3    # "_arg1":I
    :pswitch_3
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechState$Stub;->isMicrophoneMute()Z

    move-result v1

    .line 206
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    return v2

    .line 196
    .end local v1    # "_result":Z
    :pswitch_4
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechState$Stub;->isHotWordEngineReady()Z

    move-result v1

    .line 198
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    return v2

    .line 188
    .end local v1    # "_result":Z
    :pswitch_5
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechState$Stub;->isDMEndByPOISelect()Z

    move-result v1

    .line 190
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    return v2

    .line 180
    .end local v1    # "_result":Z
    :pswitch_6
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechState$Stub;->onWaiting()Z

    move-result v1

    .line 182
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    return v2

    .line 172
    .end local v1    # "_result":Z
    :pswitch_7
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechState$Stub;->isStateWaiting()Z

    move-result v1

    .line 174
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    return v2

    .line 162
    .end local v1    # "_result":Z
    :pswitch_8
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 165
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/xiaopeng/speech/ISpeechState$Stub;->getFuncState(I)Z

    move-result v3

    .line 166
    .local v3, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return v2

    .line 151
    .end local v1    # "_arg0":I
    .end local v3    # "_result":Z
    :pswitch_9
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 155
    .local v3, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_0

    move v1, v2

    nop

    .line 156
    .local v1, "_arg1":Z
    :cond_0
    invoke-virtual {p0, v3, v1}, Lcom/xiaopeng/speech/ISpeechState$Stub;->setFuncState(IZ)V

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 158
    return v2

    .line 142
    .end local v1    # "_arg1":Z
    .end local v3    # "_arg0":I
    :pswitch_a
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/xiaopeng/speech/ISpeechState$Stub;->changeCurrentTTS(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    return v2

    .line 134
    .end local v1    # "_arg0":Ljava/lang/String;
    :pswitch_b
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechState$Stub;->getCurrentTTS()Ljava/lang/String;

    move-result-object v1

    .line 136
    .local v1, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 138
    return v2

    .line 126
    .end local v1    # "_result":Ljava/lang/String;
    :pswitch_c
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechState$Stub;->isDMStarted()Z

    move-result v1

    .line 128
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    return v2

    .line 118
    .end local v1    # "_result":Z
    :pswitch_d
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechState$Stub;->canExit()Z

    move-result v1

    .line 120
    .restart local v1    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 121
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    return v2

    .line 109
    .end local v1    # "_result":Z
    :pswitch_e
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    nop

    .line 112
    .local v1, "_arg0":Z
    :cond_1
    invoke-virtual {p0, v1}, Lcom/xiaopeng/speech/ISpeechState$Stub;->setCanExitFlag(Z)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    return v2

    .line 101
    .end local v1    # "_arg0":Z
    :pswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechState$Stub;->getOOBEStatus()I

    move-result v1

    .line 103
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    return v2

    .line 92
    .end local v1    # "_result":I
    :pswitch_10
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 95
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/xiaopeng/speech/ISpeechState$Stub;->setOOBEStatus(I)V

    .line 96
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    return v2

    .line 84
    .end local v1    # "_arg0":I
    :pswitch_11
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechState$Stub;->isShowSpeechDialog()Z

    move-result v1

    .line 86
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    return v2

    .line 75
    .end local v1    # "_result":Z
    :pswitch_12
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    nop

    .line 78
    .local v1, "_arg0":Z
    :cond_2
    invoke-virtual {p0, v1}, Lcom/xiaopeng/speech/ISpeechState$Stub;->setShowSpeechDialog(Z)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    return v2

    .line 67
    .end local v1    # "_arg0":Z
    :pswitch_13
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechState$Stub;->getPhoneCallStatus()I

    move-result v1

    .line 69
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return v2

    .line 58
    .end local v1    # "_result":I
    :pswitch_14
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 61
    .local v1, "_arg0":I
    invoke-virtual {p0, v1}, Lcom/xiaopeng/speech/ISpeechState$Stub;->setPhoneCallStatus(I)V

    .line 62
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 63
    return v2

    .line 50
    .end local v1    # "_arg0":I
    :pswitch_15
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0}, Lcom/xiaopeng/speech/ISpeechState$Stub;->isInitOK()Z

    move-result v1

    .line 52
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    return v2

    .line 45
    .end local v1    # "_result":Z
    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
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
