.class public abstract Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;
.super Landroid/os/Binder;
.source "ILightLanuage.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getDanceEffectRunnable:I = 0x14

.field static final TRANSACTION_getLightEffect:I = 0x4

.field static final TRANSACTION_getLightEffectEnable:I = 0xc

.field static final TRANSACTION_getLocalDanceEffectInfo:I = 0x7

.field static final TRANSACTION_getMcuEffect:I = 0xe

.field static final TRANSACTION_getRhythmEffect:I = 0x10

.field static final TRANSACTION_getRhythmEffectEnable:I = 0xa

.field static final TRANSACTION_getRunningEffect:I = 0x12

.field static final TRANSACTION_getSayhiEffectEnable:I = 0x8

.field static final TRANSACTION_getUserEffectInfo:I = 0x6

.field static final TRANSACTION_getUserEffectInfoList:I = 0x5

.field static final TRANSACTION_isDanceEffectRunning:I = 0x13

.field static final TRANSACTION_loadLightEffect:I = 0x3

.field static final TRANSACTION_playEffect:I = 0x15

.field static final TRANSACTION_playSmartEffect:I = 0x17

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_setLightEffectEnable:I = 0xd

.field static final TRANSACTION_setMcuEffect:I = 0xf

.field static final TRANSACTION_setRhythmEffect:I = 0x11

.field static final TRANSACTION_setRhythmEffectEnable:I = 0xb

.field static final TRANSACTION_setSayhiEffectEnable:I = 0x9

.field static final TRANSACTION_stopEffect:I = 0x16

.field static final TRANSACTION_stopSmartEffect:I = 0x18

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 109
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    .line 120
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 121
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    if-eqz v1, :cond_1

    .line 122
    check-cast v0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    return-object v0

    .line 124
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;
    .locals 1

    .line 930
    sget-object v0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;)Z
    .locals 1

    .line 920
    sget-object v0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 924
    sput-object p0, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 921
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

    const-string v1, "com.xiaopeng.xuimanager.lightlanuage.ILightLanuage"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 352
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 345
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->stopSmartEffect()V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 336
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 339
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->playSmartEffect(I)V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 329
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->stopEffect()V

    .line 331
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 317
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 319
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 321
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 322
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->playEffect(Ljava/lang/String;I)I

    move-result p1

    .line 323
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 309
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 310
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getDanceEffectRunnable()I

    move-result p1

    .line 311
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 301
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 302
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->isDanceEffectRunning()Z

    move-result p1

    .line 303
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 293
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 294
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getRunningEffect()Ljava/lang/String;

    move-result-object p1

    .line 295
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 296
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 284
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 286
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 287
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->setRhythmEffect(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 276
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 277
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getRhythmEffect()Ljava/lang/String;

    move-result-object p1

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 279
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 265
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 269
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->setMcuEffect(II)V

    .line 271
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 255
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 257
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 258
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getMcuEffect(I)I

    move-result p1

    .line 259
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 246
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 248
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v2, v0

    .line 249
    :cond_0
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->setLightEffectEnable(Z)V

    .line 250
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 238
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getLightEffectEnable()Z

    move-result p1

    .line 240
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 229
    :pswitch_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v2, v0

    .line 232
    :cond_1
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->setRhythmEffectEnable(Z)V

    .line 233
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 221
    :pswitch_e
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getRhythmEffectEnable()Z

    move-result p1

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 212
    :pswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 214
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    move v2, v0

    .line 215
    :cond_2
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->setSayhiEffectEnable(Z)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 204
    :pswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getSayhiEffectEnable()Z

    move-result p1

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 207
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 196
    :pswitch_11
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getLocalDanceEffectInfo()Ljava/lang/String;

    move-result-object p1

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 199
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 186
    :pswitch_12
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 189
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getUserEffectInfo(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 190
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 191
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 178
    :pswitch_13
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 179
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getUserEffectInfoList()Ljava/lang/String;

    move-result-object p1

    .line 180
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 181
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 170
    :pswitch_14
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->getLightEffect()Ljava/util/List;

    move-result-object p1

    .line 172
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 173
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    .line 163
    :pswitch_15
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 164
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->loadLightEffect()V

    .line 165
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 154
    :pswitch_16
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;

    move-result-object p1

    .line 157
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->unregisterListener(Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;)V

    .line 158
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 145
    :pswitch_17
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;

    move-result-object p1

    .line 148
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuage$Stub;->registerListener(Lcom/xiaopeng/xuimanager/lightlanuage/ILightLanuageEventListener;)V

    .line 149
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 137
    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
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
