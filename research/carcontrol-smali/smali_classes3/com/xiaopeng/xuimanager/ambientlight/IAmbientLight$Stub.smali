.class public abstract Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;
.super Landroid/os/Binder;
.source "IAmbientLight.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getAmbientLightBright:I = 0x14

.field static final TRANSACTION_getAmbientLightDoubleFirstColor:I = 0x9

.field static final TRANSACTION_getAmbientLightDoubleSecondColor:I = 0xa

.field static final TRANSACTION_getAmbientLightEffectType:I = 0xd

.field static final TRANSACTION_getAmbientLightEffectTypeList:I = 0x11

.field static final TRANSACTION_getAmbientLightMonoColor:I = 0x7

.field static final TRANSACTION_getAmbientLightOpen:I = 0xf

.field static final TRANSACTION_getDoubleThemeColorEnable:I = 0xb

.field static final TRANSACTION_getMusicSpectrumEnable:I = 0x3

.field static final TRANSACTION_isSupportDoubleThemeColor:I = 0x12

.field static final TRANSACTION_pausePlay:I = 0x16

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_requestPermission:I = 0x19

.field static final TRANSACTION_setAmbientLightBright:I = 0x13

.field static final TRANSACTION_setAmbientLightDoubleColor:I = 0x8

.field static final TRANSACTION_setAmbientLightEffectType:I = 0xe

.field static final TRANSACTION_setAmbientLightMemoryBright:I = 0x18

.field static final TRANSACTION_setAmbientLightMonoColor:I = 0x6

.field static final TRANSACTION_setAmbientLightOpen:I = 0x10

.field static final TRANSACTION_setDoubleThemeColorEnable:I = 0xc

.field static final TRANSACTION_setMusicRhythmMode:I = 0x5

.field static final TRANSACTION_setMusicSpectrumEnable:I = 0x4

.field static final TRANSACTION_startPlay:I = 0x15

.field static final TRANSACTION_stopPlay:I = 0x17

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 112
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.ambientlight.IAmbientLight"

    .line 113
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.ambientlight.IAmbientLight"

    .line 124
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 125
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    if-eqz v1, :cond_1

    .line 126
    check-cast v0, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    return-object v0

    .line 128
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;
    .locals 1

    .line 992
    sget-object v0, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;)Z
    .locals 1

    .line 982
    sget-object v0, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 986
    sput-object p0, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 983
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

    const-string v1, "com.xiaopeng.xuimanager.ambientlight.IAmbientLight"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_5

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 382
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 372
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v2, v0

    .line 375
    :cond_0
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->requestPermission(Z)I

    move-result p1

    .line 376
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 377
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 363
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 366
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->setAmbientLightMemoryBright(I)V

    .line 367
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 355
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->stopPlay()I

    move-result p1

    .line 357
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 347
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 348
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->pausePlay()I

    move-result p1

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 337
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object p1

    .line 340
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->startPlay([Ljava/lang/String;)I

    move-result p1

    .line 341
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 342
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 329
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->getAmbientLightBright()I

    move-result p1

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 320
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 323
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->setAmbientLightBright(I)V

    .line 324
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 310
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 313
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->isSupportDoubleThemeColor(Ljava/lang/String;)Z

    move-result p1

    .line 314
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 315
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 302
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 303
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->getAmbientLightEffectTypeList()Ljava/util/List;

    move-result-object p1

    .line 304
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 305
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    .line 293
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 295
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v2, v0

    .line 296
    :cond_1
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->setAmbientLightOpen(Z)V

    .line 297
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 285
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->getAmbientLightOpen()Z

    move-result p1

    .line 287
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 288
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 276
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->setAmbientLightEffectType(Ljava/lang/String;)V

    .line 280
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 268
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 269
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->getAmbientLightEffectType()Ljava/lang/String;

    move-result-object p1

    .line 270
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 271
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 257
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    if-eqz p2, :cond_2

    move v2, v0

    .line 262
    :cond_2
    invoke-virtual {p0, p1, v2}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->setDoubleThemeColorEnable(Ljava/lang/String;Z)V

    .line 263
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 247
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 250
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->getDoubleThemeColorEnable(Ljava/lang/String;)Z

    move-result p1

    .line 251
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 252
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 237
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 240
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->getAmbientLightDoubleSecondColor(Ljava/lang/String;)I

    move-result p1

    .line 241
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 227
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 229
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 230
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->getAmbientLightDoubleFirstColor(Ljava/lang/String;)I

    move-result p1

    .line 231
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 214
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 221
    invoke-virtual {p0, p1, p4, p2}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->setAmbientLightDoubleColor(Ljava/lang/String;II)V

    .line 222
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 204
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 207
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->getAmbientLightMonoColor(Ljava/lang/String;)I

    move-result p1

    .line 208
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 193
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 198
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->setAmbientLightMonoColor(Ljava/lang/String;I)V

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 184
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_3

    move v2, v0

    .line 187
    :cond_3
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->setMusicRhythmMode(Z)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 175
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_4

    move v2, v0

    .line 178
    :cond_4
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->setMusicSpectrumEnable(Z)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 167
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->getMusicSpectrumEnable()Z

    move-result p1

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 158
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener;

    move-result-object p1

    .line 161
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->unregisterListener(Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener;)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 149
    :pswitch_18
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener;

    move-result-object p1

    .line 152
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLight$Stub;->registerListener(Lcom/xiaopeng/xuimanager/ambientlight/IAmbientLightEventListener;)V

    .line 153
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 141
    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
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
