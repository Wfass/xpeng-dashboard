.class public Lcom/xiaopeng/musicradio/model/bluetooth/k;
.super Ljava/lang/Object;
.source "XpMusicBluetoothModel.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/model/bluetooth/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/model/bluetooth/k$a;
    }
.end annotation


# instance fields
.field private a:Lcom/xiaopeng/musicradio/model/bluetooth/f;

.field private b:Lio/reactivex/disposables/Disposable;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/os/Handler;

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/lang/Runnable;

.field private h:Lcom/lzy/okgo/adapter/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/MusicMatchBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->c:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->d:Ljava/util/List;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->e:Landroid/os/Handler;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->f:Ljava/util/Map;

    .line 166
    new-instance v0, Lcom/xiaopeng/musicradio/model/bluetooth/k$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/bluetooth/k$1;-><init>(Lcom/xiaopeng/musicradio/model/bluetooth/k;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->g:Ljava/lang/Runnable;

    .line 87
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->a(Lcom/xiaopeng/musicradio/model/bluetooth/c;)V

    .line 88
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 89
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    .line 91
    :cond_0
    new-instance v0, Lcom/xiaopeng/musicradio/model/bluetooth/f;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/f;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a:Lcom/xiaopeng/musicradio/model/bluetooth/f;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/model/bluetooth/k$1;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/k;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/bluetooth/k;Lcom/lzy/okgo/adapter/Call;)Lcom/lzy/okgo/adapter/Call;
    .locals 0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->h:Lcom/lzy/okgo/adapter/Call;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/bluetooth/k;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->d:Ljava/util/List;

    return-object p0
.end method

.method private a(I)Z
    .locals 1

    .line 377
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbdm;->a(I)Lbeg;

    move-result-object p1

    invoke-interface {p1}, Lbeg;->g()Z

    move-result p1

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/model/bluetooth/k;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->c:Ljava/util/List;

    return-object p0
.end method

.method public static c()Lcom/xiaopeng/musicradio/model/bluetooth/k;
    .locals 1

    .line 95
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/k$a;->a()Lcom/xiaopeng/musicradio/model/bluetooth/k;

    move-result-object v0

    return-object v0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/model/bluetooth/k;)Z
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->f()Z

    move-result p0

    return p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/model/bluetooth/k;)I
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->g()I

    move-result p0

    return p0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 2

    .line 143
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->l()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object v1

    invoke-virtual {v1}, Lbaf;->b()Lbae;

    move-result-object v1

    invoke-virtual {v1, v0}, Lbae;->c(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 149
    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object v0

    invoke-virtual {v0}, Lbaf;->b()Lbae;

    move-result-object v0

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbae;->d(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-nez v0, :cond_1

    .line 151
    invoke-static {}, Lbaf;->a()Lbaf;

    move-result-object v0

    invoke-virtual {v0}, Lbaf;->b()Lbae;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lbae;->c(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method private e()V
    .locals 5

    .line 345
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSong()Ljava/lang/String;

    move-result-object v0

    .line 346
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getSinger()Ljava/lang/String;

    move-result-object v1

    .line 347
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->getDuration()I

    move-result v2

    .line 348
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->r()Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz v0, :cond_0

    sget-object v3, Lcom/xiaopeng/musicradio/model/bluetooth/a;->a:Ljava/lang/String;

    .line 349
    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/xiaopeng/musicradio/model/bluetooth/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v3, Lcom/xiaopeng/musicradio/model/bluetooth/a;->c:Ljava/lang/String;

    .line 350
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->f()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 351
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 353
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "savePlayingInfo song: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",singer: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",duration: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpMusicBluetoothModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 354
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a(ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/xiaopeng/musicradio/model/bluetooth/k;)Z
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->h()Z

    move-result p0

    return p0
.end method

.method private f()Z
    .locals 2

    const/4 v0, 0x1

    .line 359
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a(I)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method

.method private g()I
    .locals 2

    const/4 v0, 0x1

    .line 366
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    const/4 v0, 0x4

    .line 368
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x2

    .line 370
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a(I)Z

    move-result v1

    if-eqz v1, :cond_2

    return v0

    .line 373
    :cond_2
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    return v0
.end method

.method private h()Z
    .locals 2

    .line 381
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 7

    .line 106
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a:Lcom/xiaopeng/musicradio/model/bluetooth/f;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->a:Lcom/xiaopeng/musicradio/model/bluetooth/f;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, p1, v4}, Lcom/xiaopeng/musicradio/model/bluetooth/f;->b(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 109
    array-length v4, v0

    if-ne v4, v3, :cond_0

    .line 110
    aget-object p1, v0, v2

    .line 111
    aget-object p2, v0, v1

    .line 118
    :cond_0
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v2

    aput-object p2, v0, v1

    const-string v4, "%s_%s"

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 119
    iget-object v5, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->f:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 120
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->f:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-object p1

    .line 122
    :cond_1
    new-array v5, v3, [Ljava/lang/Object;

    aput-object p2, v5, v2

    aput-object p1, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 123
    iget-object v6, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->f:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 124
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->f:Ljava/util/Map;

    invoke-interface {p1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-object p1

    .line 128
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v5

    if-nez v5, :cond_3

    .line 130
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p2, v0, v2

    aput-object p1, v0, v1

    invoke-static {v4, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 131
    invoke-direct {p0, p2, p1}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->d(Ljava/lang/String;Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v5

    :cond_3
    if-eqz v5, :cond_4

    .line 134
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->f:Ljava/util/Map;

    invoke-interface {p1, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    const/16 p2, 0x3e8

    if-le p1, p2, :cond_5

    .line 137
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->f:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->clear()V

    :cond_5
    return-object v5
.end method

.method public a()V
    .locals 0

    .line 69
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 322
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onLrcLoadStateChanged() called with: state = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpMusicBluetoothModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 332
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object p1

    const-string p2, ""

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->setLrcContent(Ljava/lang/String;)V

    goto :goto_0

    .line 329
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->setLrcContent(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_2
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->setLrcContent(Ljava/lang/String;)V

    .line 335
    :goto_0
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->u()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 3

    .line 159
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->g:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 163
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->g:Ljava/lang/Runnable;

    const-wide/16 v1, 0x1388

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public b()V
    .locals 0

    .line 74
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCoverLoaded() called with: url = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "XpMusicBluetoothModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->m()Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/blue/BtMusicBean;->setLogo(Ljava/lang/String;)V

    .line 341
    invoke-static {}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->k()Lcom/xiaopeng/musicradio/model/bluetooth/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/bluetooth/a;->u()V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->b:Lio/reactivex/disposables/Disposable;

    if-eqz v0, :cond_0

    .line 196
    invoke-interface {v0}, Lio/reactivex/disposables/Disposable;->dispose()V

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->h:Lcom/lzy/okgo/adapter/Call;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->isExecuted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->h:Lcom/lzy/okgo/adapter/Call;

    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->cancel()V

    :cond_1
    const-string v0, "XpMusicBluetoothModel"

    const-string v1, "saveBlueHistory: ========== "

    .line 202
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x1

    .line 204
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, v2}, Lio/reactivex/Observable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/xiaopeng/musicradio/model/bluetooth/k$2;-><init>(Lcom/xiaopeng/musicradio/model/bluetooth/k;Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->subscribe(Lio/reactivex/functions/Consumer;)Lio/reactivex/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->b:Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 392
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/bluetooth/k;->c:Ljava/util/List;

    return-object v0
.end method

.method public onKugouBinded(Lasj$m;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN_ORDERED:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 317
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->e()V

    return-void
.end method

.method public onSaveBtPlayingInfo(Lasa$h;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 312
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/bluetooth/k;->e()V

    return-void
.end method
