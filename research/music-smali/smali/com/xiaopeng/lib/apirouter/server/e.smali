.class public Lcom/xiaopeng/lib/apirouter/server/e;
.super Landroid/os/Binder;
.source "IpcRouterService_Stub.java"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public a:Lcom/xiaopeng/musicradio/IpcRouterService;

.field public b:Lcom/xiaopeng/lib/apirouter/server/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 22
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 23
    new-instance v0, Lcom/xiaopeng/musicradio/IpcRouterService;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/IpcRouterService;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/apirouter/server/e;->a:Lcom/xiaopeng/musicradio/IpcRouterService;

    .line 24
    new-instance v0, Lcom/xiaopeng/lib/apirouter/server/d;

    invoke-direct {v0}, Lcom/xiaopeng/lib/apirouter/server/d;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/apirouter/server/e;->b:Lcom/xiaopeng/lib/apirouter/server/d;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "com.xiaopeng.musicradio.IpcRouterService"

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    .line 57
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 36
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    .line 40
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 41
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    const/4 p2, 0x0

    :try_start_0
    const-string p4, "id"

    .line 44
    invoke-virtual {p1, p4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    const-string v0, "int"

    invoke-static {p4, v0}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    const-string v0, "bundle"

    .line 45
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "java.lang.String"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/server/e;->a:Lcom/xiaopeng/musicradio/IpcRouterService;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-virtual {v0, p4, p1}, Lcom/xiaopeng/musicradio/IpcRouterService;->onReceiverData(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 53
    invoke-static {p3, p2}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->reply(Landroid/os/Parcel;Ljava/lang/Object;)V

    return v1

    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 49
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    return v1
.end method
