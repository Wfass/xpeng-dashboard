.class public abstract Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub;
.super Landroid/os/Binder;
.source "IContextInfo.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getIntelligentEffectEnable:I = 0x7

.field static final TRANSACTION_getWeather:I = 0xa

.field static final TRANSACTION_registerListener:I = 0x1

.field static final TRANSACTION_registerListeners:I = 0xd

.field static final TRANSACTION_sendContextEvent:I = 0xc

.field static final TRANSACTION_setCarAngular:I = 0x4

.field static final TRANSACTION_setCarAngularVelocity:I = 0x5

.field static final TRANSACTION_setCarSpeed:I = 0x3

.field static final TRANSACTION_setIntelligentEffectEnable:I = 0x6

.field static final TRANSACTION_setNavigationEnable:I = 0x9

.field static final TRANSACTION_setNavigationInfo:I = 0x8

.field static final TRANSACTION_unregisterListener:I = 0x2

.field static final TRANSACTION_updateWeatherFromServer:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.contextinfo.IContextInfo"

    .line 63
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.contextinfo.IContextInfo"

    .line 74
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 75
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    if-eqz v1, :cond_1

    .line 76
    check-cast v0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    return-object v0

    .line 78
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;
    .locals 1

    .line 546
    sget-object v0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;)Z
    .locals 1

    .line 536
    sget-object v0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 540
    sput-object p0, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 537
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

    const-string v1, "com.xiaopeng.xuimanager.contextinfo.IContextInfo"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 220
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 209
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object p1

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 214
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub;->registerListeners(Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;I)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 198
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 203
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub;->sendContextEvent(II)V

    .line 204
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 191
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 192
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub;->updateWeatherFromServer()V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 183
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 184
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub;->getWeather()Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 186
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    .line 174
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move v2, v0

    .line 177
    :cond_0
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub;->setNavigationEnable(Z)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 165
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 168
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub;->setNavigationInfo(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 157
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub;->getIntelligentEffectEnable()Z

    move-result p1

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 160
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 148
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    move v2, v0

    .line 151
    :cond_1
    invoke-virtual {p0, v2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub;->setIntelligentEffectEnable(Z)V

    .line 152
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 139
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 142
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub;->setCarAngularVelocity(F)V

    .line 143
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 128
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 133
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub;->setCarAngular(FI)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 117
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    .line 121
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 122
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub;->setCarSpeed(FI)V

    .line 123
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 108
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object p1

    .line 111
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub;->unregisterListener(Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;)V

    .line 112
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 99
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;

    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/contextinfo/IContextInfo$Stub;->registerListener(Lcom/xiaopeng/xuimanager/contextinfo/IContextInfoEventListener;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 91
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    nop

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
