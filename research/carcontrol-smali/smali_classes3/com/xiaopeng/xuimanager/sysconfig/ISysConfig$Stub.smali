.class public abstract Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig$Stub;
.super Landroid/os/Binder;
.source "ISysConfig.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_registerSysConfigListener:I = 0x1

.field static final TRANSACTION_unregisterSysConfigListener:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.sysconfig.ISysConfig"

    .line 30
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.sysconfig.ISysConfig"

    .line 41
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 42
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;

    if-eqz v1, :cond_1

    .line 43
    check-cast v0, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;

    return-object v0

    .line 45
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;
    .locals 1

    .line 163
    sget-object v0, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;)Z
    .locals 1

    .line 153
    sget-object v0, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 157
    sput-object p0, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 154
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

    const-string v1, "com.xiaopeng.xuimanager.sysconfig.ISysConfig"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 75
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;

    move-result-object p1

    .line 78
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig$Stub;->unregisterSysConfigListener(Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 66
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;

    move-result-object p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/xiaopeng/xuimanager/sysconfig/ISysConfig$Stub;->registerSysConfigListener(Lcom/xiaopeng/xuimanager/sysconfig/ISysConfigListener;)V

    .line 70
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v0

    .line 58
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
