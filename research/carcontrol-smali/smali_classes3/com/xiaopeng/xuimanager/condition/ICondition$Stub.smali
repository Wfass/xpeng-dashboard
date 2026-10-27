.class public abstract Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;
.super Landroid/os/Binder;
.source "ICondition.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/condition/ICondition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/condition/ICondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/condition/ICondition$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_addConditionListener:I = 0x6

.field static final TRANSACTION_createCondition:I = 0x1

.field static final TRANSACTION_getBrightnessLevel:I = 0xb

.field static final TRANSACTION_getTwilightState:I = 0x8

.field static final TRANSACTION_isConditionMatch:I = 0x3

.field static final TRANSACTION_registerBrightnessLevelListener:I = 0xc

.field static final TRANSACTION_registerTwilightStateListener:I = 0x9

.field static final TRANSACTION_releaseCondition:I = 0x2

.field static final TRANSACTION_removeConditionListener:I = 0x7

.field static final TRANSACTION_startWatchCondition:I = 0x4

.field static final TRANSACTION_stopWatchCondition:I = 0x5

.field static final TRANSACTION_unregisterBrightnessLevelListener:I = 0xd

.field static final TRANSACTION_unregisterTwilightStateListener:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.condition.ICondition"

    .line 66
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/condition/ICondition;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.condition.ICondition"

    .line 77
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 78
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/condition/ICondition;

    if-eqz v1, :cond_1

    .line 79
    check-cast v0, Lcom/xiaopeng/xuimanager/condition/ICondition;

    return-object v0

    .line 81
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/ICondition;
    .locals 1

    .line 564
    sget-object v0, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/condition/ICondition;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/condition/ICondition;)Z
    .locals 1

    .line 554
    sget-object v0, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/condition/ICondition;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 558
    sput-object p0, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/condition/ICondition;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 555
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

    const-string v1, "com.xiaopeng.xuimanager.condition.ICondition"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1

    packed-switch p1, :pswitch_data_0

    .line 229
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 220
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;

    move-result-object p1

    .line 223
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->unregisterBrightnessLevelListener(Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 211
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 213
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;

    move-result-object p1

    .line 214
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->registerBrightnessLevelListener(Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;)V

    .line 215
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 203
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getBrightnessLevel()I

    move-result p1

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 206
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 194
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 196
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;

    move-result-object p1

    .line 197
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->unregisterTwilightStateListener(Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;)V

    .line 198
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 185
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;

    move-result-object p1

    .line 188
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->registerTwilightStateListener(Lcom/xiaopeng/xuimanager/condition/ITwilightStateListener;)V

    .line 189
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 171
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 172
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->getTwilightState()Lcom/xiaopeng/xuimanager/condition/TwilightState;

    move-result-object p1

    .line 173
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p1, :cond_0

    .line 175
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 176
    invoke-virtual {p1, p3, v0}, Lcom/xiaopeng/xuimanager/condition/TwilightState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 179
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v0

    .line 160
    :pswitch_6
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 164
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/condition/IConditionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/condition/IConditionListener;

    move-result-object p2

    .line 165
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->removeConditionListener(ILcom/xiaopeng/xuimanager/condition/IConditionListener;)V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 149
    :pswitch_7
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/xuimanager/condition/IConditionListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/condition/IConditionListener;

    move-result-object p2

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->addConditionListener(ILcom/xiaopeng/xuimanager/condition/IConditionListener;)V

    .line 155
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 140
    :pswitch_8
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 143
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->stopWatchCondition(I)V

    .line 144
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 131
    :pswitch_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 134
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->startWatchCondition(I)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 121
    :pswitch_a
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 124
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->isConditionMatch(I)Z

    move-result p1

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 112
    :pswitch_b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 115
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->releaseCondition(I)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 102
    :pswitch_c
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/condition/ICondition$Stub;->createCondition(Ljava/lang/String;)I

    move-result p1

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeInt(I)V

    return v0

    .line 94
    :cond_1
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
