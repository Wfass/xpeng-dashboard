.class public abstract Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub;
.super Landroid/os/Binder;
.source "IPlaybackInfoListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_OnMediaInfoNotify:I = 0x3

.field static final TRANSACTION_OnPlaybackChanged:I = 0x1

.field static final TRANSACTION_OnUpdatePosition:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.mediacenter.IPlaybackInfoListener"

    .line 34
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.mediacenter.IPlaybackInfoListener"

    .line 45
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 46
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;

    if-eqz v1, :cond_1

    .line 47
    check-cast v0, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;

    return-object v0

    .line 49
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;
    .locals 1

    .line 209
    sget-object v0, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;)Z
    .locals 1

    .line 199
    sget-object v0, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 203
    sput-object p0, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 200
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
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.xiaopeng.xuimanager.mediacenter.IPlaybackInfoListener"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_0

    .line 107
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

    move-result p3

    if-eqz p3, :cond_1

    .line 97
    sget-object p3, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xuimanager/mediacenter/MediaInfo;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 102
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub;->OnMediaInfoNotify(ILcom/xiaopeng/xuimanager/mediacenter/MediaInfo;)V

    return v0

    .line 80
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v3

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v5

    move-object v1, p0

    .line 87
    invoke-virtual/range {v1 .. v6}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub;->OnUpdatePosition(IJJ)V

    return v0

    .line 70
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 75
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/mediacenter/IPlaybackInfoListener$Stub;->OnPlaybackChanged(II)V

    return v0

    .line 62
    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
