.class public abstract Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;
.super Landroid/os/Binder;
.source "UiCallbackAvrcp.java"

# interfaces
.implements Lcom/nforetek/bt/aidl/UiCallbackAvrcp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nforetek/bt/aidl/UiCallbackAvrcp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.nforetek.bt.aidl.UiCallbackAvrcp"

.field static final TRANSACTION_onAvrcp13EventBatteryStatusChanged:I = 0x11

.field static final TRANSACTION_onAvrcp13EventPlaybackPosChanged:I = 0x10

.field static final TRANSACTION_onAvrcp13EventPlaybackStatusChanged:I = 0xc

.field static final TRANSACTION_onAvrcp13EventPlayerSettingChanged:I = 0x13

.field static final TRANSACTION_onAvrcp13EventSystemStatusChanged:I = 0x12

.field static final TRANSACTION_onAvrcp13EventTrackChanged:I = 0xd

.field static final TRANSACTION_onAvrcp13EventTrackReachedEnd:I = 0xe

.field static final TRANSACTION_onAvrcp13EventTrackReachedStart:I = 0xf

.field static final TRANSACTION_onAvrcp13RegisterEventWatcherFail:I = 0xb

.field static final TRANSACTION_onAvrcp13RegisterEventWatcherSuccess:I = 0xa

.field static final TRANSACTION_onAvrcp14EventAddressedPlayerChanged:I = 0x16

.field static final TRANSACTION_onAvrcp14EventAvailablePlayerChanged:I = 0x15

.field static final TRANSACTION_onAvrcp14EventNowPlayingContentChanged:I = 0x14

.field static final TRANSACTION_onAvrcp14EventUidsChanged:I = 0x17

.field static final TRANSACTION_onAvrcp14EventVolumeChanged:I = 0x18

.field static final TRANSACTION_onAvrcpErrorResponse:I = 0x23

.field static final TRANSACTION_onAvrcpServiceReady:I = 0x1

.field static final TRANSACTION_onAvrcpStateChanged:I = 0x2

.field static final TRANSACTION_retAvrcp13CapabilitiesSupportEvent:I = 0x3

.field static final TRANSACTION_retAvrcp13ElementAttributesPlaying:I = 0x8

.field static final TRANSACTION_retAvrcp13PlayStatus:I = 0x9

.field static final TRANSACTION_retAvrcp13PlayerSettingAttributesList:I = 0x4

.field static final TRANSACTION_retAvrcp13PlayerSettingCurrentValues:I = 0x6

.field static final TRANSACTION_retAvrcp13PlayerSettingValuesList:I = 0x5

.field static final TRANSACTION_retAvrcp13SetPlayerSettingValueSuccess:I = 0x7

.field static final TRANSACTION_retAvrcp14AddToNowPlayingSuccess:I = 0x21

.field static final TRANSACTION_retAvrcp14ChangePathSuccess:I = 0x1d

.field static final TRANSACTION_retAvrcp14FolderItems:I = 0x1b

.field static final TRANSACTION_retAvrcp14ItemAttributes:I = 0x1e

.field static final TRANSACTION_retAvrcp14MediaItems:I = 0x1c

.field static final TRANSACTION_retAvrcp14PlaySelectedItemSuccess:I = 0x1f

.field static final TRANSACTION_retAvrcp14SearchResult:I = 0x20

.field static final TRANSACTION_retAvrcp14SetAbsoluteVolumeSuccess:I = 0x22

.field static final TRANSACTION_retAvrcp14SetAddressedPlayerSuccess:I = 0x19

.field static final TRANSACTION_retAvrcp14SetBrowsedPlayerSuccess:I = 0x1a

.field static final TRANSACTION_retAvrcpUpdateSongStatus:I = 0x24


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 33
    const-string v0, "com.nforetek.bt.aidl.UiCallbackAvrcp"

    invoke-virtual {p0, p0, v0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 34
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/nforetek/bt/aidl/UiCallbackAvrcp;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .line 41
    if-nez p0, :cond_0

    .line 42
    const/4 v0, 0x0

    return-object v0

    .line 44
    :cond_0
    const-string v0, "com.nforetek.bt.aidl.UiCallbackAvrcp"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 45
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/nforetek/bt/aidl/UiCallbackAvrcp;

    if-eqz v1, :cond_1

    .line 46
    move-object v1, v0

    check-cast v1, Lcom/nforetek/bt/aidl/UiCallbackAvrcp;

    return-object v1

    .line 48
    :cond_1
    new-instance v1, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 52
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 16
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    .line 56
    const-string v9, "com.nforetek.bt.aidl.UiCallbackAvrcp"

    .line 57
    .local v9, "descriptor":Ljava/lang/String;
    const v0, 0x5f4e5446

    const/4 v10, 0x1

    if-eq v7, v0, :cond_0

    packed-switch v7, :pswitch_data_0

    .line 410
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    return v0

    .line 397
    :pswitch_0
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 399
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 401
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 404
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {v6, v0, v1, v2}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->retAvrcpUpdateSongStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 406
    return v10

    .line 384
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :pswitch_1
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 388
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 390
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v2

    .line 391
    .local v2, "_arg2":B
    invoke-virtual {v6, v0, v1, v2}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->onAvrcpErrorResponse(IIB)V

    .line 392
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    return v10

    .line 375
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":B
    :pswitch_2
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 377
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 378
    .local v0, "_arg0":B
    invoke-virtual {v6, v0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->retAvrcp14SetAbsoluteVolumeSuccess(B)V

    .line 379
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    return v10

    .line 368
    .end local v0    # "_arg0":B
    :pswitch_3
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 369
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->retAvrcp14AddToNowPlayingSuccess()V

    .line 370
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 371
    return v10

    .line 357
    :pswitch_4
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 361
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 362
    .local v1, "_arg1":J
    invoke-virtual {v6, v0, v1, v2}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->retAvrcp14SearchResult(IJ)V

    .line 363
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    return v10

    .line 350
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :pswitch_5
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->retAvrcp14PlaySelectedItemSuccess()V

    .line 352
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 353
    return v10

    .line 339
    :pswitch_6
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 343
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 344
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->retAvrcp14ItemAttributes([I[Ljava/lang/String;)V

    .line 345
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 346
    return v10

    .line 330
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_7
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 333
    .local v0, "_arg0":J
    invoke-virtual {v6, v0, v1}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->retAvrcp14ChangePathSuccess(J)V

    .line 334
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 335
    return v10

    .line 319
    .end local v0    # "_arg0":J
    :pswitch_8
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 321
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 323
    .local v0, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 324
    .local v1, "_arg1":J
    invoke-virtual {v6, v0, v1, v2}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->retAvrcp14MediaItems(IJ)V

    .line 325
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    return v10

    .line 308
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :pswitch_9
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 312
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 313
    .restart local v1    # "_arg1":J
    invoke-virtual {v6, v0, v1, v2}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->retAvrcp14FolderItems(IJ)V

    .line 314
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    return v10

    .line 295
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":J
    :pswitch_a
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 299
    .local v0, "_arg0":[Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 301
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 302
    .local v2, "_arg2":J
    invoke-virtual {v6, v0, v1, v2, v3}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->retAvrcp14SetBrowsedPlayerSuccess([Ljava/lang/String;IJ)V

    .line 303
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    return v10

    .line 288
    .end local v0    # "_arg0":[Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":J
    :pswitch_b
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 289
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->retAvrcp14SetAddressedPlayerSuccess()V

    .line 290
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 291
    return v10

    .line 279
    :pswitch_c
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 282
    .local v0, "_arg0":B
    invoke-virtual {v6, v0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->onAvrcp14EventVolumeChanged(B)V

    .line 283
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    return v10

    .line 270
    .end local v0    # "_arg0":B
    :pswitch_d
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 273
    .local v0, "_arg0":I
    invoke-virtual {v6, v0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->onAvrcp14EventUidsChanged(I)V

    .line 274
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    return v10

    .line 259
    .end local v0    # "_arg0":I
    :pswitch_e
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 263
    .restart local v0    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 264
    .restart local v1    # "_arg1":I
    invoke-virtual {v6, v0, v1}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->onAvrcp14EventAddressedPlayerChanged(II)V

    .line 265
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 266
    return v10

    .line 252
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :pswitch_f
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 253
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->onAvrcp14EventAvailablePlayerChanged()V

    .line 254
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 255
    return v10

    .line 245
    :pswitch_10
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->onAvrcp14EventNowPlayingContentChanged()V

    .line 247
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 248
    return v10

    .line 234
    :pswitch_11
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 238
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 239
    .local v1, "_arg1":[B
    invoke-virtual {v6, v0, v1}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->onAvrcp13EventPlayerSettingChanged([B[B)V

    .line 240
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    return v10

    .line 225
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":[B
    :pswitch_12
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 228
    .local v0, "_arg0":B
    invoke-virtual {v6, v0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->onAvrcp13EventSystemStatusChanged(B)V

    .line 229
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    return v10

    .line 216
    .end local v0    # "_arg0":B
    :pswitch_13
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 219
    .restart local v0    # "_arg0":B
    invoke-virtual {v6, v0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->onAvrcp13EventBatteryStatusChanged(B)V

    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    return v10

    .line 207
    .end local v0    # "_arg0":B
    :pswitch_14
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 210
    .local v0, "_arg0":J
    invoke-virtual {v6, v0, v1}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->onAvrcp13EventPlaybackPosChanged(J)V

    .line 211
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 212
    return v10

    .line 200
    .end local v0    # "_arg0":J
    :pswitch_15
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 201
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->onAvrcp13EventTrackReachedStart()V

    .line 202
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 203
    return v10

    .line 193
    :pswitch_16
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->onAvrcp13EventTrackReachedEnd()V

    .line 195
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    return v10

    .line 184
    :pswitch_17
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 187
    .restart local v0    # "_arg0":J
    invoke-virtual {v6, v0, v1}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->onAvrcp13EventTrackChanged(J)V

    .line 188
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 189
    return v10

    .line 175
    .end local v0    # "_arg0":J
    :pswitch_18
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 178
    .local v0, "_arg0":B
    invoke-virtual {v6, v0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->onAvrcp13EventPlaybackStatusChanged(B)V

    .line 179
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    return v10

    .line 166
    .end local v0    # "_arg0":B
    :pswitch_19
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 169
    .restart local v0    # "_arg0":B
    invoke-virtual {v6, v0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->onAvrcp13RegisterEventWatcherFail(B)V

    .line 170
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    return v10

    .line 157
    .end local v0    # "_arg0":B
    :pswitch_1a
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 160
    .restart local v0    # "_arg0":B
    invoke-virtual {v6, v0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->onAvrcp13RegisterEventWatcherSuccess(B)V

    .line 161
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    return v10

    .line 144
    .end local v0    # "_arg0":B
    :pswitch_1b
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v11

    .line 148
    .local v11, "_arg0":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v13

    .line 150
    .local v13, "_arg1":J
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v15

    .line 151
    .local v15, "_arg2":B
    move-object v0, v6

    move-wide v1, v11

    move-wide v3, v13

    move v5, v15

    invoke-virtual/range {v0 .. v5}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->retAvrcp13PlayStatus(JJB)V

    .line 152
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    return v10

    .line 133
    .end local v11    # "_arg0":J
    .end local v13    # "_arg1":J
    .end local v15    # "_arg2":B
    :pswitch_1c
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 137
    .local v0, "_arg0":[I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v1

    .line 138
    .local v1, "_arg1":[Ljava/lang/String;
    invoke-virtual {v6, v0, v1}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->retAvrcp13ElementAttributesPlaying([I[Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 140
    return v10

    .line 126
    .end local v0    # "_arg0":[I
    .end local v1    # "_arg1":[Ljava/lang/String;
    :pswitch_1d
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->retAvrcp13SetPlayerSettingValueSuccess()V

    .line 128
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    return v10

    .line 115
    :pswitch_1e
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 119
    .local v0, "_arg0":[B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 120
    .local v1, "_arg1":[B
    invoke-virtual {v6, v0, v1}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->retAvrcp13PlayerSettingCurrentValues([B[B)V

    .line 121
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    return v10

    .line 104
    .end local v0    # "_arg0":[B
    .end local v1    # "_arg1":[B
    :pswitch_1f
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readByte()B

    move-result v0

    .line 108
    .local v0, "_arg0":B
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v1

    .line 109
    .restart local v1    # "_arg1":[B
    invoke-virtual {v6, v0, v1}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->retAvrcp13PlayerSettingValuesList(B[B)V

    .line 110
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    return v10

    .line 95
    .end local v0    # "_arg0":B
    .end local v1    # "_arg1":[B
    :pswitch_20
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 98
    .local v0, "_arg0":[B
    invoke-virtual {v6, v0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->retAvrcp13PlayerSettingAttributesList([B)V

    .line 99
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 100
    return v10

    .line 86
    .end local v0    # "_arg0":[B
    :pswitch_21
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    .line 89
    .restart local v0    # "_arg0":[B
    invoke-virtual {v6, v0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->retAvrcp13CapabilitiesSupportEvent([B)V

    .line 90
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 91
    return v10

    .line 73
    .end local v0    # "_arg0":[B
    :pswitch_22
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 77
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 79
    .local v1, "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 80
    .local v2, "_arg2":I
    invoke-virtual {v6, v0, v1, v2}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->onAvrcpStateChanged(Ljava/lang/String;II)V

    .line 81
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    return v10

    .line 66
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :pswitch_23
    invoke-virtual {v8, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/nforetek/bt/aidl/UiCallbackAvrcp$Stub;->onAvrcpServiceReady()V

    .line 68
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    return v10

    .line 61
    :cond_0
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    return v10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
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
