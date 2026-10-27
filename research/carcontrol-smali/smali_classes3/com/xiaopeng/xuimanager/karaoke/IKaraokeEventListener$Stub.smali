.class public abstract Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub;
.super Landroid/os/Binder;
.source "IKaraokeEventListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_MicDevChangeCallBack:I = 0x1

.field static final TRANSACTION_onError:I = 0x2

.field static final TRANSACTION_volumeEffectCallBack:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.karaoke.IKaraokeEventListener"

    .line 38
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.karaoke.IKaraokeEventListener"

    .line 49
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 50
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    if-eqz v1, :cond_1

    .line 51
    check-cast v0, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    return-object v0

    .line 53
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;
    .locals 1

    .line 200
    sget-object v0, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;)Z
    .locals 1

    .line 190
    sget-object v0, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 194
    sput-object p0, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 191
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

    const-string v1, "com.xiaopeng.xuimanager.karaoke.IKaraokeEventListener"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_3

    if-eq p1, v0, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_1

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 102
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 92
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 97
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub;->volumeEffectCallBack(II)V

    return v0

    .line 82
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 87
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub;->onError(II)V

    return v0

    .line 74
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 77
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/karaoke/IKaraokeEventListener$Stub;->MicDevChangeCallBack(I)V

    return v0

    .line 66
    :cond_3
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
