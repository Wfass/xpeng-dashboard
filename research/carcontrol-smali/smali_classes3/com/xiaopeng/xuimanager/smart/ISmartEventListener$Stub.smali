.class public abstract Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;
.super Landroid/os/Binder;
.source "ISmartEventListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onError:I = 0x1

.field static final TRANSACTION_onLightEffectFinishEvent:I = 0x2

.field static final TRANSACTION_onLightEffectShowError:I = 0x6

.field static final TRANSACTION_onLightEffectShowFinishEvent:I = 0x5

.field static final TRANSACTION_onLightEffectShowStartEvent:I = 0x3

.field static final TRANSACTION_onLightEffectShowStopEvent:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.smart.ISmartEventListener"

    .line 47
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.smart.ISmartEventListener"

    .line 58
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 59
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    if-eqz v1, :cond_1

    .line 60
    check-cast v0, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    return-object v0

    .line 62
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;
    .locals 1

    .line 302
    sget-object v0, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;)Z
    .locals 1

    .line 292
    sget-object v0, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 296
    sput-object p0, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/smart/ISmartEventListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 293
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

    const-string v1, "com.xiaopeng.xuimanager.smart.ISmartEventListener"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 133
    :pswitch_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 137
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 138
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;->onLightEffectShowError(Ljava/lang/String;I)V

    return v0

    .line 123
    :pswitch_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 128
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;->onLightEffectShowFinishEvent(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 113
    :pswitch_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;->onLightEffectShowStopEvent(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 103
    :pswitch_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 108
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;->onLightEffectShowStartEvent(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 93
    :pswitch_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 98
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;->onLightEffectFinishEvent(II)V

    return v0

    .line 83
    :pswitch_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/smart/ISmartEventListener$Stub;->onError(II)V

    return v0

    .line 75
    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
