.class public abstract Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback$Stub;
.super Landroid/os/Binder;
.source "IHttpQueryCallback.java"

# interfaces
.implements Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.xiaopeng.appstore.storeprovider.IHttpQueryCallback"

.field static final TRANSACTION_onQueryFinish:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 27
    const-string v0, "com.xiaopeng.appstore.storeprovider.IHttpQueryCallback"

    invoke-virtual {p0, p0, v0}, Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    .line 35
    if-nez p0, :cond_0

    .line 36
    const/4 v0, 0x0

    return-object v0

    .line 38
    :cond_0
    const-string v0, "com.xiaopeng.appstore.storeprovider.IHttpQueryCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 39
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;

    if-eqz v1, :cond_1

    .line 40
    move-object v1, v0

    check-cast v1, Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;

    return-object v1

    .line 42
    :cond_1
    new-instance v1, Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback$Stub$Proxy;

    invoke-direct {v1, p0}, Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method

.method public static getDefaultImpl()Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;
    .locals 1

    .line 135
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;)Z
    .locals 2
    .param p0, "impl"    # Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    .line 125
    sget-object v0, Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;

    if-nez v0, :cond_1

    .line 128
    if-eqz p0, :cond_0

    .line 129
    sput-object p0, Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback$Stub$Proxy;->sDefaultImpl:Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback;

    .line 130
    const/4 v0, 0x1

    return v0

    .line 132
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 126
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setDefaultImpl() called twice"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .line 46
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 50
    const-string v0, "com.xiaopeng.appstore.storeprovider.IHttpQueryCallback"

    .line 51
    .local v0, "descriptor":Ljava/lang/String;
    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 74
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    return v1

    .line 55
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 56
    return v1

    .line 60
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_2

    .line 63
    sget-object v2, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;

    .local v2, "_arg0":Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;
    goto :goto_0

    .line 66
    .end local v2    # "_arg0":Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;
    :cond_2
    const/4 v2, 0x0

    .line 68
    .restart local v2    # "_arg0":Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;
    :goto_0
    invoke-virtual {p0, v2}, Lcom/xiaopeng/appstore/storeprovider/IHttpQueryCallback$Stub;->onQueryFinish(Lcom/xiaopeng/appstore/storeprovider/bean/HttpResponse;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    return v1
.end method
