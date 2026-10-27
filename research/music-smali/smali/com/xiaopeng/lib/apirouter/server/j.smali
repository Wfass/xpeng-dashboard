.class public Lcom/xiaopeng/lib/apirouter/server/j;
.super Landroid/os/Binder;
.source "MusicVuiObserver_Stub.java"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field public a:Lcom/xiaopeng/musicradio/MusicVuiObserver;

.field public b:Lcom/xiaopeng/lib/apirouter/server/i;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 21
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 22
    new-instance v0, Lcom/xiaopeng/musicradio/MusicVuiObserver;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/MusicVuiObserver;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/apirouter/server/j;->a:Lcom/xiaopeng/musicradio/MusicVuiObserver;

    .line 23
    new-instance v0, Lcom/xiaopeng/lib/apirouter/server/i;

    invoke-direct {v0}, Lcom/xiaopeng/lib/apirouter/server/i;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/lib/apirouter/server/j;->b:Lcom/xiaopeng/lib/apirouter/server/i;

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3

    const-string v0, "com.xiaopeng.musicradio.MusicVuiObserver"

    const-string v1, "java.lang.String"

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    if-eq p1, v2, :cond_1

    const v1, 0x5f4e5446

    if-eq p1, v1, :cond_0

    .line 73
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p1

    return p1

    .line 35
    :cond_0
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    .line 56
    :cond_1
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 57
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    const/4 p2, 0x0

    :try_start_0
    const-string p4, "event"

    .line 60
    invoke-virtual {p1, p4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    invoke-static {p4, v1}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    const-string v0, "data"

    .line 61
    invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/lib/apirouter/server/j;->a:Lcom/xiaopeng/musicradio/MusicVuiObserver;

    invoke-virtual {v0, p4, p1}, Lcom/xiaopeng/musicradio/MusicVuiObserver;->onEvent(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 69
    invoke-static {p3, p2}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->reply(Landroid/os/Parcel;Ljava/lang/Object;)V

    return v2

    :catch_0
    move-exception p1

    .line 64
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 65
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    return v2

    .line 39
    :cond_2
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 40
    sget-object p1, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    :try_start_1
    const-string p2, "sceneId"

    .line 43
    invoke-virtual {p1, p2}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2, v1}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    const-string p4, "elementId"

    .line 44
    invoke-virtual {p1, p4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 45
    iget-object p4, p0, Lcom/xiaopeng/lib/apirouter/server/j;->a:Lcom/xiaopeng/musicradio/MusicVuiObserver;

    invoke-virtual {p4, p2, p1}, Lcom/xiaopeng/musicradio/MusicVuiObserver;->getElementState(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 51
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 52
    invoke-static {p3, p1}, Lcom/xiaopeng/lib/apirouter/server/TransactTranslator;->reply(Landroid/os/Parcel;Ljava/lang/Object;)V

    return v2

    :catch_1
    move-exception p1

    .line 47
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 48
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p2}, Landroid/os/Parcel;->writeException(Ljava/lang/Exception;)V

    return v2
.end method
