.class public abstract Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener$Stub;
.super Landroid/os/Binder;
.source "IBrightnessLevelListener.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onBrightnessLevelChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.xuimanager.condition.IBrightnessLevelListener"

    .line 24
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.xuimanager.condition.IBrightnessLevelListener"

    .line 35
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 36
    instance-of v1, v0, Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;

    return-object v0

    .line 39
    :cond_1
    new-instance v0, Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;
    .locals 1

    .line 125
    sget-object v0, Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;)Z
    .locals 1

    .line 115
    sget-object v0, Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 119
    sput-object p0, Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 116
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

    const-string v1, "com.xiaopeng.xuimanager.condition.IBrightnessLevelListener"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_1

    if-eq p1, v0, :cond_0

    .line 70
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 60
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    .line 65
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuimanager/condition/IBrightnessLevelListener$Stub;->onBrightnessLevelChanged(II)V

    return v0

    .line 52
    :cond_1
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
