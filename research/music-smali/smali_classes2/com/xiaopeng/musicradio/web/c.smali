.class public Lcom/xiaopeng/musicradio/web/c;
.super Ljava/lang/Object;
.source "WebServiceConnection.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/web/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/os/Messenger;

.field private volatile b:Z

.field private c:Lcom/xiaopeng/musicradio/web/c$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/web/c;)Landroid/os/Messenger;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/xiaopeng/musicradio/web/c;->a:Landroid/os/Messenger;

    return-object p0
.end method

.method private a()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/c;->a:Landroid/os/Messenger;

    if-eqz v0, :cond_0

    .line 64
    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/web/c;->c:Lcom/xiaopeng/musicradio/web/c$a;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/xiaopeng/musicradio/web/c;->a:Landroid/os/Messenger;

    .line 66
    iput-boolean v2, p0, Lcom/xiaopeng/musicradio/web/c;->b:Z

    .line 67
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/web/c;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/web/c;->a()V

    return-void
.end method


# virtual methods
.method public a(ILandroid/os/Bundle;)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/musicradio/web/c;->a:Landroid/os/Messenger;

    if-nez v0, :cond_0

    return-void

    .line 52
    :cond_0
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 53
    iput p1, v0, Landroid/os/Message;->what:I

    .line 54
    invoke-virtual {v0, p2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 56
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/c;->a:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public onFocusPlay(Lcom/xiaopeng/musicradio/event/common/CommonEvent$p;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    const/4 p1, 0x2

    const/4 v0, 0x0

    .line 90
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/web/c;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onPlayStateChanged(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
    .end annotation

    .line 95
    new-instance v0, Landroid/os/Bundle;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 96
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result v1

    const-string v2, "audio_type"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 97
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result p1

    const-string v1, "play_state"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 p1, 0x1

    .line 98
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/web/c;->a(ILandroid/os/Bundle;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 73
    new-instance p1, Landroid/os/Messenger;

    invoke-direct {p1, p2}, Landroid/os/Messenger;-><init>(Landroid/os/IBinder;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/c;->a:Landroid/os/Messenger;

    .line 74
    new-instance p1, Lcom/xiaopeng/musicradio/web/c$a;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/xiaopeng/musicradio/web/c$a;-><init>(Lcom/xiaopeng/musicradio/web/c;Lcom/xiaopeng/musicradio/web/c$1;)V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/web/c;->c:Lcom/xiaopeng/musicradio/web/c$a;

    .line 76
    :try_start_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/web/c;->a:Landroid/os/Messenger;

    invoke-virtual {p1}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/web/c;->c:Lcom/xiaopeng/musicradio/web/c$a;

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 78
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 80
    :goto_0
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    .line 85
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/web/c;->a()V

    return-void
.end method
