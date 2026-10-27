.class public Lbri;
.super Ljava/lang/Object;
.source "RetrieverEngine.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbri$a;
    }
.end annotation


# instance fields
.field private a:Landroidx/collection/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/d<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lbrj;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrj<",
            "Lbrh;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lbrk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbrk<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lbrh$a;

.field private e:Landroid/os/Handler;

.field private f:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lbri;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 40
    new-instance v0, Landroidx/collection/d;

    invoke-direct {v0, p1}, Landroidx/collection/d;-><init>(I)V

    iput-object v0, p0, Lbri;->a:Landroidx/collection/d;

    .line 41
    new-instance p1, Lbrj;

    new-instance v0, Lbri$1;

    invoke-direct {v0, p0}, Lbri$1;-><init>(Lbri;)V

    const/4 v1, 0x5

    invoke-direct {p1, v1, v0}, Lbrj;-><init>(ILbrj$b;)V

    iput-object p1, p0, Lbri;->b:Lbrj;

    .line 48
    new-instance p1, Lbrk;

    invoke-direct {p1}, Lbrk;-><init>()V

    iput-object p1, p0, Lbri;->c:Lbrk;

    .line 49
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lbri;->e:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lbri;)Landroid/os/Handler;
    .locals 0

    .line 22
    iget-object p0, p0, Lbri;->e:Landroid/os/Handler;

    return-object p0
.end method

.method private a()V
    .locals 2

    .line 126
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage mRetrieveringCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbri;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbri;->c:Lbrk;

    invoke-virtual {v1}, Lbrk;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RetrieverEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lbri;->c:Lbrk;

    invoke-virtual {v0}, Lbrk;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0, v0}, Lbri;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Lbrh$a;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lbri;->d:Lbrh$a;

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 6

    .line 53
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 54
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 58
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse retrieverCount : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbri;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " info = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "RetrieverEngine"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-object v1, p0, Lbri;->a:Landroidx/collection/d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/collection/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

    if-eqz v1, :cond_2

    .line 61
    iget-object v0, p0, Lbri;->d:Lbrh$a;

    if-eqz v0, :cond_1

    .line 62
    invoke-interface {v0, p1, v1}, Lbrh$a;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V

    .line 64
    :cond_1
    invoke-direct {p0}, Lbri;->a()V

    goto :goto_0

    .line 67
    :cond_2
    iget-object v1, p0, Lbri;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    const/4 v3, 0x5

    if-lt v1, v3, :cond_3

    .line 68
    iget-object v0, p0, Lbri;->c:Lbrk;

    invoke-virtual {v0, p1}, Lbrk;->a(Ljava/lang/Object;)V

    goto :goto_0

    .line 70
    :cond_3
    iget-object v1, p0, Lbri;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 71
    iget-object v1, p0, Lbri;->b:Lbrj;

    invoke-virtual {v1}, Lbrj;->a()Lbrj$a;

    move-result-object v1

    check-cast v1, Lbrh;

    .line 72
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parse: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getData()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    new-instance v3, Lbri$2;

    invoke-direct {v3, p0, v1}, Lbri$2;-><init>(Lbri;Lbrh;)V

    invoke-virtual {v1, p1, v3}, Lbrh;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lbrh$a;)V

    .line 90
    :try_start_0
    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 91
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-static {v0}, Lcom/google/android/exoplayer2/MediaItem;->fromUri(Landroid/net/Uri;)Lcom/google/android/exoplayer2/MediaItem;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Lbrh;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/google/android/exoplayer2/MediaItem;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 94
    invoke-static {v2, v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 138
    iget-object v0, p0, Lbri;->c:Lbrk;

    invoke-virtual {v0, p1}, Lbrk;->a(Ljava/util/List;)V

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    .line 142
    iget-object v0, p0, Lbri;->c:Lbrk;

    invoke-virtual {v0, p1}, Lbrk;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;",
            ">;)V"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;

    .line 148
    iget-object v2, p0, Lbri;->a:Landroidx/collection/d;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/collection/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

    if-eqz v2, :cond_0

    .line 150
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/usb/bean/UsbLogo;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->setLogo(Ljava/lang/String;)V

    .line 151
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 154
    :cond_1
    invoke-static {}, Lbqy;->a()Lbqy;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbqy;->a(Ljava/util/List;)V

    return-void
.end method

.method public c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 3

    .line 159
    iget-object v0, p0, Lbri;->a:Landroidx/collection/d;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/collection/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->setDuration(J)V

    .line 163
    :cond_0
    invoke-static {}, Lbqy;->a()Lbqy;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbqy;->c(Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 102
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lbri$a;

    .line 103
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    iget-object p1, p0, Lbri;->b:Lbrj;

    iget-object v1, v0, Lbri$a;->a:Lbrh;

    invoke-virtual {p1, v1}, Lbrj;->a(Lbrj$a;)V

    .line 115
    iget-object p1, p0, Lbri;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 116
    iget-object p1, p0, Lbri;->d:Lbrh$a;

    if-eqz p1, :cond_1

    .line 117
    iget-object v1, v0, Lbri$a;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget-object v0, v0, Lbri$a;->b:Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

    invoke-interface {p1, v1, v0}, Lbrh$a;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V

    .line 119
    :cond_1
    invoke-direct {p0}, Lbri;->a()V

    goto :goto_0

    .line 105
    :cond_2
    iget-object p1, p0, Lbri;->a:Landroidx/collection/d;

    iget-object v1, v0, Lbri$a;->b:Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lbri$a;->b:Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

    invoke-virtual {p1, v1, v2}, Landroidx/collection/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    iget-object p1, p0, Lbri;->b:Lbrj;

    iget-object v1, v0, Lbri$a;->a:Lbrh;

    invoke-virtual {p1, v1}, Lbrj;->a(Lbrj$a;)V

    .line 107
    iget-object p1, p0, Lbri;->f:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 108
    iget-object p1, p0, Lbri;->d:Lbrh$a;

    if-eqz p1, :cond_3

    .line 109
    iget-object v1, v0, Lbri$a;->c:Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    iget-object v0, v0, Lbri$a;->b:Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;

    invoke-interface {p1, v1, v0}, Lbrh$a;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lcom/xiaopeng/musicradio/bean/db/AudioParseInfo;)V

    .line 111
    :cond_3
    invoke-direct {p0}, Lbri;->a()V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method
