.class public abstract Lcom/xiaopeng/screen/IScreenTaskListener$Stub;
.super Landroid/os/Binder;
.source "IScreenTaskListener.java"

# interfaces
.implements Lcom/xiaopeng/screen/IScreenTaskListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/screen/IScreenTaskListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/screen/IScreenTaskListener$Stub$Proxy;
    }
.end annotation


# static fields
.field static final TRANSACTION_onActivityChanged:I = 0x2

.field static final TRANSACTION_onEventChanged:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.xiaopeng.screen.IScreenTaskListener"

    .line 32
    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/screen/IScreenTaskListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/screen/IScreenTaskListener;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.xiaopeng.screen.IScreenTaskListener"

    .line 43
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 44
    instance-of v1, v0, Lcom/xiaopeng/screen/IScreenTaskListener;

    if-eqz v1, :cond_1

    .line 45
    check-cast v0, Lcom/xiaopeng/screen/IScreenTaskListener;

    return-object v0

    .line 47
    :cond_1
    new-instance v0, Lcom/xiaopeng/screen/IScreenTaskListener$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/xiaopeng/screen/IScreenTaskListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/screen/IScreenTaskListener;
    .locals 1

    .line 166
    sget-object v0, Lcom/xiaopeng/screen/IScreenTaskListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/screen/IScreenTaskListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/screen/IScreenTaskListener;)Z
    .locals 1

    .line 156
    sget-object v0, Lcom/xiaopeng/screen/IScreenTaskListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/screen/IScreenTaskListener;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    .line 160
    sput-object p0, Lcom/xiaopeng/screen/IScreenTaskListener$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/screen/IScreenTaskListener;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 157
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

    const-string v1, "com.xiaopeng.screen.IScreenTaskListener"

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_2

    if-eq p1, v0, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    .line 90
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 80
    :cond_0
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 85
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/screen/IScreenTaskListener$Stub;->onActivityChanged(ILjava/lang/String;)V

    return v0

    .line 68
    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    .line 74
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p2

    .line 75
    invoke-virtual {p0, p1, p3, p2}, Lcom/xiaopeng/screen/IScreenTaskListener$Stub;->onEventChanged(IILjava/lang/String;)V

    return v0

    .line 60
    :cond_2
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
