.class public abstract Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub;
.super Landroid/os/Binder;
.source "IMakeupLight.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getColorTemperature:I = 0x9

.field static final TRANSACTION_getLuminance:I = 0xb

.field static final TRANSACTION_getMakeupAvailable:I = 0x6

.field static final TRANSACTION_loadMakeupEffect:I = 0x3

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_runEffect:I = 0xc

.field static final TRANSACTION_setAliasColorTemperature:I = 0x8

.field static final TRANSACTION_setColorTemperature:I = 0x7

.field static final TRANSACTION_setLuminance:I = 0xa

.field static final TRANSACTION_showAliasColorTemperature:I = 0x5

.field static final TRANSACTION_showMakeupEffect:I = 0x4

.field static final TRANSACTION_stopEffect:I = 0xd

.field static final TRANSACTION_unregisterListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 72
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.makeuplight.IMakeupLight"

    .line 73
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.makeuplight.IMakeupLight"

    .line 84
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 85
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    if-eqz v1, :cond_1

    .line 86
    check-cast v0, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    return-object v0

    .line 88
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;
    .locals 1

    .line 562
    sget-object v0, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;)Z
    .locals 1

    .line 552
    sget-object v0, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 556
    sput-object p0, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 553
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

    const-string v1, "com.xiaopeng.xuimanager.makeuplight.IMakeupLight"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 226
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 218
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 219
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub;->stopEffect()I

    move-result p1

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 221
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 206
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 210
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 211
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub;->runEffect(Ljava/lang/String;I)I

    move-result p1

    .line 212
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 198
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub;->getLuminance()I

    move-result p1

    .line 200
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 188
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 190
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 191
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub;->setLuminance(I)I

    move-result p1

    .line 192
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 193
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 180
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub;->getColorTemperature()Ljava/util/List;

    move-result-object p1

    .line 182
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 183
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    .line 170
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 173
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub;->setAliasColorTemperature(Ljava/lang/String;)I

    move-result p1

    .line 174
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 175
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 158
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 163
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub;->setColorTemperature(II)I

    move-result p1

    .line 164
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 150
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub;->getMakeupAvailable()I

    move-result p1

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 142
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub;->showAliasColorTemperature()Ljava/util/List;

    move-result-object p1

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 145
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    .line 134
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub;->showMakeupEffect()Ljava/util/List;

    move-result-object p1

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    return v0

    .line 127
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub;->loadMakeupEffect()V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 118
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;

    move-result-object p1

    .line 121
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub;->unregisterListener(Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;)V

    .line 122
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 109
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;

    move-result-object p1

    .line 112
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLight$Stub;->registerListener(Lcom/xiaopeng/xuimanager/makeuplight/IMakeupLightEventListener;)V

    .line 113
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 101
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
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
