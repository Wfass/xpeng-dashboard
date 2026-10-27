.class public abstract Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub;
.super Landroid/os/Binder;
.source "ISoundResource.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getActiveBootSoundResource:I = 0xb

.field static final TRANSACTION_getActiveSoundEffectResource:I = 0x6

.field static final TRANSACTION_getActiveSoundEffectTheme:I = 0x2

.field static final TRANSACTION_getAvailableThemes:I = 0x1

.field static final TRANSACTION_getBootSoundOnOff:I = 0x8

.field static final TRANSACTION_getBootSoundResource:I = 0x9

.field static final TRANSACTION_getSoundEffectPlayResource:I = 0x4

.field static final TRANSACTION_getSoundEffectPreviewResource:I = 0x5

.field static final TRANSACTION_registerListener:I = 0xc

.field static final TRANSACTION_selectSoundEffectTheme:I = 0x3

.field static final TRANSACTION_setBootSoundOnOff:I = 0x7

.field static final TRANSACTION_setBootSoundResource:I = 0xa

.field static final TRANSACTION_unRegisterListener:I = 0xd


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 70
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.soundresource.ISoundResource"

    .line 71
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.soundresource.ISoundResource"

    .line 82
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 83
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    if-eqz v1, :cond_1

    .line 84
    check-cast v0, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    return-object v0

    .line 86
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;
    .locals 1

    .line 585
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;)Z
    .locals 1

    .line 575
    sget-object v0, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 579
    sput-object p0, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/soundresource/ISoundResource;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 576
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

    const-string v1, "com.xiaopeng.xuimanager.soundresource.ISoundResource"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_3

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 237
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 228
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;

    move-result-object p1

    .line 231
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub;->unRegisterListener(Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;)V

    .line 232
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 219
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 221
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;

    move-result-object p1

    .line 222
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub;->registerListener(Lcom/xiaopeng/xuimanager/soundresource/ISoundResourceListener;)V

    .line 223
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 205
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub;->getActiveBootSoundResource()Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;

    move-result-object p1

    .line 207
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 209
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    invoke-virtual {p1, p3, v0}, Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 213
    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 195
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 198
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub;->setBootSoundResource(I)I

    move-result p1

    .line 199
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 187
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub;->getBootSoundResource()[Lcom/xiaopeng/xuimanager/soundresource/data/BootSoundResource;

    move-result-object p1

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    invoke-virtual {p3, p1, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v0

    .line 179
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub;->getBootSoundOnOff()I

    move-result p1

    .line 181
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 169
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v2, v0

    .line 172
    :cond_1
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub;->setBootSoundOnOff(Z)I

    move-result p1

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 153
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 156
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub;->getActiveSoundEffectResource(I)Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;

    move-result-object p1

    .line 157
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_2

    .line 159
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    invoke-virtual {p1, p3, v0}, Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    .line 163
    :cond_2
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v0

    .line 143
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 146
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub;->getSoundEffectPreviewResource(I)[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;

    move-result-object p1

    .line 147
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, p1, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v0

    .line 133
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 136
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub;->getSoundEffectPlayResource(I)[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectResource;

    move-result-object p1

    .line 137
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, p1, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v0

    .line 123
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 126
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub;->selectSoundEffectTheme(I)I

    move-result p1

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 128
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 115
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub;->getActiveSoundEffectTheme()I

    move-result p1

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 107
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/soundresource/ISoundResource$Stub;->getAvailableThemes()[Lcom/xiaopeng/xuimanager/soundresource/data/SoundEffectTheme;

    move-result-object p1

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    invoke-virtual {p3, p1, v0}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    return v0

    .line 99
    :cond_3
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
