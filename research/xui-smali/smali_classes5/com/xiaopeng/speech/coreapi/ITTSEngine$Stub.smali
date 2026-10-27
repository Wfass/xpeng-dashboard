.class public abstract Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;
.super Landroid/os/Binder;
.source "ITTSEngine.java"

# interfaces
.implements Lcom/xiaopeng/speech/coreapi/ITTSEngine;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/coreapi/ITTSEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.speech.coreapi.ITTSEngine"

.field static final TRANSACTION_addListener:I = 0x9

.field static final TRANSACTION_getSpeaker:I = 0x3

.field static final TRANSACTION_getSpeed:I = 0x5

.field static final TRANSACTION_getVolume:I = 0x7

.field static final TRANSACTION_isSingleTTS:I = 0xc

.field static final TRANSACTION_isTTSSupportSpell:I = 0xd

.field static final TRANSACTION_removeListener:I = 0xa

.field static final TRANSACTION_setMode:I = 0xf

.field static final TRANSACTION_setSingleTTS:I = 0xb

.field static final TRANSACTION_setSoloMode:I = 0x10

.field static final TRANSACTION_setSoloModeByChannel:I = 0x13

.field static final TRANSACTION_setSpeaker:I = 0x2

.field static final TRANSACTION_setSpeed:I = 0x4

.field static final TRANSACTION_setVolume:I = 0x6

.field static final TRANSACTION_shutup:I = 0x8

.field static final TRANSACTION_shutupByChannel:I = 0x15

.field static final TRANSACTION_shutupByReason:I = 0x11

.field static final TRANSACTION_speak:I = 0x1

.field static final TRANSACTION_speakEnhance:I = 0xe

.field static final TRANSACTION_speakEnhanceByVoicePosition:I = 0x12

.field static final TRANSACTION_speakParam:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.xiaopeng.speech.coreapi.ITTSEngine"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/coreapi/ITTSEngine;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v0, 0x0

    return-object v0

    .line 29
    :cond_0
    const-string v0, "com.xiaopeng.speech.coreapi.ITTSEngine"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/speech/coreapi/ITTSEngine;

    if-eqz v1, :cond_1

    .line 31
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/speech/coreapi/ITTSEngine;

    return-object v1

    .line 33
    :cond_1
    new-instance v1, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 25
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v10, p0

    move/from16 v11, p1

    move-object/from16 v12, p2

    move-object/from16 v13, p3

    .line 41
    const-string v14, "com.xiaopeng.speech.coreapi.ITTSEngine"

    .line 42
    .local v14, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v15, 0x1

    if-eq v11, v0, :cond_3

    const/4 v0, 0x0

    packed-switch v11, :pswitch_data_0

    .line 279
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 270
    :pswitch_0
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 273
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;->shutupByChannel(I)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    return v15

    .line 258
    .end local v0    # "_arg0":I
    :pswitch_1
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 262
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 263
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;->speakParam(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 264
    .local v2, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 265
    invoke-virtual {v13, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 266
    return v15

    .line 247
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":Z
    :pswitch_2
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 251
    .local v1, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_0

    move v0, v15

    nop

    .line 252
    .local v0, "_arg1":Z
    :cond_0
    invoke-virtual {v10, v1, v0}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;->setSoloModeByChannel(IZ)V

    .line 253
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    return v15

    .line 223
    .end local v0    # "_arg1":Z
    .end local v1    # "_arg0":I
    :pswitch_3
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v16

    .line 227
    .local v16, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 229
    .local v17, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 231
    .local v18, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 233
    .local v19, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 235
    .local v20, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    .line 237
    .local v21, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v22

    .line 239
    .local v22, "_arg6":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v24

    .line 240
    .local v24, "_arg7":I
    move-object v0, v10

    move-object/from16 v1, v16

    move/from16 v2, v17

    move-object/from16 v3, v18

    move/from16 v4, v19

    move/from16 v5, v20

    move/from16 v6, v21

    move-wide/from16 v7, v22

    move/from16 v9, v24

    invoke-virtual/range {v0 .. v9}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;->speakEnhanceByVoicePosition(Ljava/lang/String;ILjava/lang/String;IIIJI)Z

    move-result v0

    .line 241
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    return v15

    .line 212
    .end local v0    # "_result":Z
    .end local v16    # "_arg0":Ljava/lang/String;
    .end local v17    # "_arg1":I
    .end local v18    # "_arg2":Ljava/lang/String;
    .end local v19    # "_arg3":I
    .end local v20    # "_arg4":I
    .end local v21    # "_arg5":I
    .end local v22    # "_arg6":J
    .end local v24    # "_arg7":I
    :pswitch_4
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 216
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 217
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {v10, v0, v1}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;->shutupByReason(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 219
    return v15

    .line 203
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :pswitch_5
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    move v0, v15

    nop

    .line 206
    .local v0, "_arg0":Z
    :cond_1
    invoke-virtual {v10, v0}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;->setSoloMode(Z)V

    .line 207
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    return v15

    .line 194
    .end local v0    # "_arg0":Z
    :pswitch_6
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 197
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;->setMode(I)V

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    return v15

    .line 172
    .end local v0    # "_arg0":I
    :pswitch_7
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 174
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 176
    .local v9, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 178
    .local v16, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 180
    .local v17, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v18

    .line 182
    .local v18, "_arg3":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v19

    .line 184
    .local v19, "_arg4":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v20

    .line 186
    .local v20, "_arg5":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v21

    .line 187
    .local v21, "_arg6":J
    move-object v0, v10

    move-object v1, v9

    move/from16 v2, v16

    move-object/from16 v3, v17

    move/from16 v4, v18

    move/from16 v5, v19

    move/from16 v6, v20

    move-wide/from16 v7, v21

    invoke-virtual/range {v0 .. v8}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;->speakEnhance(Ljava/lang/String;ILjava/lang/String;IIIJ)Z

    move-result v0

    .line 188
    .local v0, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    return v15

    .line 164
    .end local v0    # "_result":Z
    .end local v9    # "_arg0":Ljava/lang/String;
    .end local v16    # "_arg1":I
    .end local v17    # "_arg2":Ljava/lang/String;
    .end local v18    # "_arg3":I
    .end local v19    # "_arg4":I
    .end local v20    # "_arg5":I
    .end local v21    # "_arg6":J
    :pswitch_8
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;->isTTSSupportSpell()Z

    move-result v0

    .line 166
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return v15

    .line 156
    .end local v0    # "_result":Z
    :pswitch_9
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 157
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;->isSingleTTS()Z

    move-result v0

    .line 158
    .restart local v0    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 159
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    return v15

    .line 145
    .end local v0    # "_result":Z
    :pswitch_a
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_2

    move v0, v15

    nop

    .line 149
    .local v0, "_arg0":Z
    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 150
    .local v1, "_arg1":Landroid/os/IBinder;
    invoke-virtual {v10, v0, v1}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;->setSingleTTS(ZLandroid/os/IBinder;)V

    .line 151
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 152
    return v15

    .line 136
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/os/IBinder;
    :pswitch_b
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/coreapi/ITTSCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/coreapi/ITTSCallback;

    move-result-object v0

    .line 139
    .local v0, "_arg0":Lcom/xiaopeng/speech/coreapi/ITTSCallback;
    invoke-virtual {v10, v0}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;->removeListener(Lcom/xiaopeng/speech/coreapi/ITTSCallback;)V

    .line 140
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 141
    return v15

    .line 127
    .end local v0    # "_arg0":Lcom/xiaopeng/speech/coreapi/ITTSCallback;
    :pswitch_c
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/coreapi/ITTSCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/speech/coreapi/ITTSCallback;

    move-result-object v0

    .line 130
    .restart local v0    # "_arg0":Lcom/xiaopeng/speech/coreapi/ITTSCallback;
    invoke-virtual {v10, v0}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;->addListener(Lcom/xiaopeng/speech/coreapi/ITTSCallback;)V

    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    return v15

    .line 118
    .end local v0    # "_arg0":Lcom/xiaopeng/speech/coreapi/ITTSCallback;
    :pswitch_d
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v10, v0}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;->shutup(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    return v15

    .line 110
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_e
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;->getVolume()I

    move-result v0

    .line 112
    .local v0, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 113
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    return v15

    .line 101
    .end local v0    # "_result":I
    :pswitch_f
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .local v0, "_arg0":I
    invoke-virtual {v10, v0}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;->setVolume(I)V

    .line 105
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 106
    return v15

    .line 93
    .end local v0    # "_arg0":I
    :pswitch_10
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;->getSpeed()F

    move-result v0

    .line 95
    .local v0, "_result":F
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 97
    return v15

    .line 84
    .end local v0    # "_result":F
    :pswitch_11
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 87
    .local v0, "_arg0":F
    invoke-virtual {v10, v0}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;->setSpeed(F)V

    .line 88
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    return v15

    .line 76
    .end local v0    # "_arg0":F
    :pswitch_12
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;->getSpeaker()Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    invoke-virtual {v13, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return v15

    .line 67
    .end local v0    # "_result":Ljava/lang/String;
    :pswitch_13
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {v10, v0}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;->setSpeaker(Ljava/lang/String;)V

    .line 71
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    return v15

    .line 51
    .end local v0    # "_arg0":Ljava/lang/String;
    :pswitch_14
    invoke-virtual {v12, v14}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 57
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 59
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 60
    .local v3, "_arg3":I
    invoke-virtual {v10, v0, v1, v2, v3}, Lcom/xiaopeng/speech/coreapi/ITTSEngine$Stub;->speak(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result v4

    .line 61
    .local v4, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {v13, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return v15

    .line 46
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":Ljava/lang/String;
    .end local v3    # "_arg3":I
    .end local v4    # "_result":Z
    :cond_3
    invoke-virtual {v13, v14}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    return v15

    :pswitch_data_0
    .packed-switch 0x1
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
