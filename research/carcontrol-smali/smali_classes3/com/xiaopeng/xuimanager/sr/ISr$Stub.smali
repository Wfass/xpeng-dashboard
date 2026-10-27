.class public abstract Lcom/xiaopeng/xuimanager/sr/ISr$Stub;
.super Landroid/os/Binder;
.source "ISr.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/sr/ISr;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/sr/ISr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/sr/ISr$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_getIcons:I = 0x3

.field static final TRANSACTION_registerSrListener:I = 0x1

.field static final TRANSACTION_reportIconClick:I = 0x4

.field static final TRANSACTION_unregisterSrListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.sr.ISr"

    .line 37
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/sr/ISr$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/sr/ISr;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.sr.ISr"

    .line 48
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 49
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/sr/ISr;

    if-eqz v1, :cond_1

    .line 50
    check-cast v0, Lcom/xiaopeng/xuimanager/sr/ISr;

    return-object v0

    .line 52
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/sr/ISr$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/sr/ISr$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/sr/ISr;
    .locals 1

    .line 232
    sget-object v0, Lcom/xiaopeng/xuimanager/sr/ISr$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/sr/ISr;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/sr/ISr;)Z
    .locals 1

    .line 222
    sget-object v0, Lcom/xiaopeng/xuimanager/sr/ISr$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/sr/ISr;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 226
    sput-object p0, Lcom/xiaopeng/xuimanager/sr/ISr$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/sr/ISr;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 223
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

    const-string v1, "com.xiaopeng.xuimanager.sr.ISr"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_4

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_0

    .line 108
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 99
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 102
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/sr/ISr$Stub;->reportIconClick(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 91
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/xuimanager/sr/ISr$Stub;->getIcons()Ljava/util/List;

    move-result-object p1

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, p1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    return v0

    .line 82
    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/sr/ISrListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/sr/ISrListener;

    move-result-object p1

    .line 85
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/sr/ISr$Stub;->unregisterSrListener(Lcom/xiaopeng/xuimanager/sr/ISrListener;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 73
    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/sr/ISrListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/sr/ISrListener;

    move-result-object p1

    .line 76
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/sr/ISr$Stub;->registerSrListener(Lcom/xiaopeng/xuimanager/sr/ISrListener;)V

    .line 77
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 65
    :cond_4
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
