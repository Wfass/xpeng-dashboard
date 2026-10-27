.class public Lcom/xiaopeng/musicradio/model/music/n;
.super Lcom/xiaopeng/musicradio/model/music/a;
.source "UserDataProvider.java"


# instance fields
.field private volatile f:Ljava/lang/Boolean;

.field private g:Ljava/lang/Object;

.field private h:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 55
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/a;-><init>()V

    const/4 v0, 0x0

    .line 49
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/model/music/n;->f:Ljava/lang/Boolean;

    .line 50
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/model/music/n;->g:Ljava/lang/Object;

    .line 51
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/model/music/n;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string v0, "music_user_play_mode"

    const/4 v1, 0x2

    .line 56
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/music/n;->b(I)V

    return-void
.end method

.method private B()V
    .locals 1

    .line 103
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->H()V

    return-void
.end method

.method private C()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 7

    .line 306
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/n;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 311
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/n;->d:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/n;->d:I

    :goto_0
    move v2, v0

    .line 312
    :goto_1
    iget-object v4, p0, Lcom/xiaopeng/musicradio/model/music/n;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x2

    if-ge v2, v4, :cond_3

    .line 313
    iget-object v4, p0, Lcom/xiaopeng/musicradio/model/music/n;->a:Ljava/util/List;

    iget-object v6, p0, Lcom/xiaopeng/musicradio/model/music/n;->b:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 314
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getInfoType()I

    move-result v6

    if-ne v6, v5, :cond_2

    move-object v1, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v1, :cond_5

    :goto_3
    if-ge v3, v0, :cond_5

    .line 321
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/n;->a:Ljava/util/List;

    iget-object v4, p0, Lcom/xiaopeng/musicradio/model/music/n;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 322
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getInfoType()I

    move-result v4

    if-ne v4, v5, :cond_4

    move-object v1, v2

    goto :goto_4

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_5
    :goto_4
    return-object v1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/music/n;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/n;->f:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/music/n;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/music/n;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private a(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 167
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/UserDataList;->getHashList()[Ljava/lang/String;

    move-result-object v1

    .line 169
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 170
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz v6, :cond_0

    .line 171
    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/xiaopeng/musicradio/utils/bq;->a(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 172
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 177
    :cond_2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 178
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 179
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/music/n;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/music/n;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method private b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 1

    .line 232
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/n;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/n;->a:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 234
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/music/n;->h(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_0
    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/model/music/n;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/n;->B()V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/model/music/n;Ljava/util/List;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/music/n;->b(Ljava/util/List;)V

    return-void
.end method

.method private b(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 239
    invoke-static {}, Lbao;->a()Lbao;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/n;->y()I

    move-result v1

    invoke-virtual {v0, v1}, Lbao;->b(I)V

    .line 240
    invoke-static {}, Lbao;->a()Lbao;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/n;->y()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lbao;->a(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/model/music/n;)Ljava/lang/Object;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/music/n;->g:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/model/music/n;)Ljava/lang/Boolean;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/music/n;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method private h(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 2

    .line 244
    invoke-static {}, Lbao;->a()Lbao;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/n;->y()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lbao;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    return-void
.end method


# virtual methods
.method public A()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 61
    new-instance v0, Lcom/xiaopeng/musicradio/model/music/UserDataList;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/model/music/UserDataList;-><init>()V

    return-object v0
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 2

    .line 223
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "insertInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserDataProvider"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/n;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 225
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/model/music/n;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    .line 226
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/n;->b()V

    .line 227
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/music/n;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I

    move-result p2

    iput p2, p0, Lcom/xiaopeng/musicradio/model/music/n;->d:I

    .line 228
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/music/n;->f(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 334
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/n;->e:Ljava/lang/String;

    .line 335
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/n;->w()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserDataProvider"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0, p3}, Lcom/xiaopeng/musicradio/model/music/n;->a(Ljava/lang/String;)V

    .line 93
    iget-object p3, p0, Lcom/xiaopeng/musicradio/model/music/n;->a:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    .line 94
    iget-object p3, p0, Lcom/xiaopeng/musicradio/model/music/n;->a:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/n;->a:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/music/n;->b(Ljava/util/List;)V

    .line 96
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/n;->b()V

    .line 97
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/model/music/n;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/model/music/n;->d:I

    .line 98
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/music/n;->e:Ljava/lang/String;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-direct {p1, p3, p2, v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;-><init>(ILjava/lang/String;I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 99
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/n;->B()V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserDataProvider"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/model/music/n;->a(Ljava/lang/String;)V

    .line 80
    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/music/n;->a:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 81
    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/music/n;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 82
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/n;->a:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/music/n;->b(Ljava/util/List;)V

    .line 83
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/n;->b()V

    const/4 p1, 0x0

    .line 84
    iput p1, p0, Lcom/xiaopeng/musicradio/model/music/n;->d:I

    .line 85
    new-instance p2, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/n;->e:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-direct {p2, p1, v0, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;-><init>(ILjava/lang/String;I)V

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 86
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/n;->B()V

    return-void
.end method

.method public a(Z)V
    .locals 2

    const-string v0, "UserDataProvider"

    const-string v1, "rebootPlay: "

    .line 340
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/n;->z()V

    .line 342
    new-instance v0, Lcom/xiaopeng/musicradio/model/music/n$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/music/n$2;-><init>(Lcom/xiaopeng/musicradio/model/music/n;Z)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ZZ)V
    .locals 0

    .line 474
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/n;->u()V

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 3

    const-string v0, "UserDataProvider"

    if-eqz p1, :cond_0

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->toSimpleString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "play: null"

    .line 200
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 202
    :goto_0
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/music/n;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 204
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/music/n;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 205
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/music/n;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/model/music/n;->d:I

    goto :goto_1

    .line 207
    :cond_1
    iput v0, p0, Lcom/xiaopeng/musicradio/model/music/n;->d:I

    .line 209
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/n;->B()V

    return-void
.end method

.method public c(I)V
    .locals 1

    const-string v0, "music_user_play_mode"

    .line 284
    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 2

    .line 214
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/n;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 215
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/model/music/n;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    goto :goto_0

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/n;->b:Ljava/util/List;

    iget v1, p0, Lcom/xiaopeng/musicradio/model/music/n;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/model/music/n;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    :goto_0
    return-void
.end method

.method public d(I)V
    .locals 3

    .line 436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dealPlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserDataProvider"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 437
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/n;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/music/n;->g(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 442
    invoke-static {}, Lbbu;->a()Lbbu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/n;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/n;->A()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lbbu;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 445
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/n;->m()V

    :cond_2
    return-void
.end method

.method public d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 2

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepare: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserDataProvider"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 272
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayTime(J)V

    .line 273
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getPlayCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setPlayCount(I)V

    .line 274
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/music/n;->h(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method

.method protected e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    .line 468
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method

.method public f(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 4

    .line 252
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/n;->e:Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v2, v1, v3, p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;-><init>(ILjava/lang/String;ILcom/xiaopeng/musicradio/bean/db/BaseUserMusicInfo;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public g(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    .line 292
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/n;->v()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/n;->C()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 295
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "saveInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "UserDataProvider"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/n;->x()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public n()V
    .locals 2

    const-string v0, "UserDataProvider"

    const-string v1, "next: "

    .line 257
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/n;->c()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/model/music/n;->d:I

    .line 259
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/n;->B()V

    return-void
.end method

.method public o()V
    .locals 2

    const-string v0, "UserDataProvider"

    const-string v1, "prev: "

    .line 264
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/n;->d()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/model/music/n;->d:I

    .line 266
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/n;->B()V

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/n;->e:Ljava/lang/String;

    return-object v0
.end method

.method public r()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method public u()V
    .locals 4

    const/4 v0, 0x0

    .line 65
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/model/music/n;->f:Ljava/lang/Boolean;

    .line 66
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/n;->h:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 67
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/n;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, -0x1

    .line 68
    iput v1, p0, Lcom/xiaopeng/musicradio/model/music/n;->d:I

    .line 69
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/n;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const-string v1, ""

    .line 70
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/model/music/n;->a(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 71
    iput v1, p0, Lcom/xiaopeng/musicradio/model/music/n;->c:I

    .line 72
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/n;->B()V

    .line 73
    new-instance v1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/n;->e:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;-><init>(ILjava/lang/String;I)V

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method protected v()Ljava/lang/String;
    .locals 1

    const-string v0, "music_user_song_id"

    return-object v0
.end method

.method protected w()Ljava/lang/String;
    .locals 1

    const-string v0, "music_user_play_list_sign"

    return-object v0
.end method

.method protected x()Ljava/lang/String;
    .locals 1

    const-string v0, "music_user_next_song_id"

    return-object v0
.end method

.method public y()I
    .locals 1

    const v0, 0x20148

    return v0
.end method

.method public z()V
    .locals 2

    const-string v0, "UserDataProvider"

    const-string v1, "initList: "

    .line 127
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v0, Lcom/xiaopeng/musicradio/model/music/n$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/music/n$1;-><init>(Lcom/xiaopeng/musicradio/model/music/n;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method
