.class public abstract Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub;
.super Landroid/os/Binder;
.source "IAvrcpEventListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onConnectedChanged:I = 0x1

.field static final TRANSACTION_onMeteDataChanged:I = 0x4

.field static final TRANSACTION_onPlaybackChanged:I = 0x2

.field static final TRANSACTION_onPositionChanged:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.mediacenter.bluetooth.IAvrcpEventListener"

    .line 33
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.mediacenter.bluetooth.IAvrcpEventListener"

    .line 44
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 45
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;

    if-eqz v1, :cond_1

    .line 46
    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;

    return-object v0

    .line 48
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;
    .locals 1

    .line 245
    sget-object v0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;)Z
    .locals 1

    .line 235
    sget-object v0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 239
    sput-object p0, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 236
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

    const-string v1, "com.xiaopeng.xuimanager.mediacenter.bluetooth.IAvrcpEventListener"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_5

    if-eq p1, v0, :cond_4

    const/4 v2, 0x2

    if-eq p1, v2, :cond_3

    const/4 v2, 0x3

    if-eq p1, v2, :cond_2

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    .line 114
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 100
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 102
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    .line 103
    sget-object p1, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 108
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub;->onMeteDataChanged(Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/AvrcpMeteData;)V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 89
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v1

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    .line 94
    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub;->onPositionChanged(JJ)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 80
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 83
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub;->onPlaybackChanged(I)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 69
    :cond_4
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 74
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/bluetooth/IAvrcpEventListener$Stub;->onConnectedChanged(II)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 61
    :cond_5
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
