.class public Lcom/xiaopeng/musicradio/model/music/k;
.super Lcom/xiaopeng/musicradio/model/music/a;
.source "NormalDataProvider.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/model/music/h;


# instance fields
.field f:Lass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lass<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field g:Last$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Last$a<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 68
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/a;-><init>()V

    .line 73
    new-instance v0, Lcom/xiaopeng/musicradio/model/music/k$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/music/k$1;-><init>(Lcom/xiaopeng/musicradio/model/music/k;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->g:Last$a;

    const-string v0, "music_user_play_mode"

    const/4 v1, 0x2

    .line 69
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/music/k;->b(I)V

    return-void
.end method

.method private C()V
    .locals 2

    .line 159
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "cancelMediaSource: "

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Lass;->a()V

    .line 162
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {v0}, Lass;->h()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 163
    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    :cond_0
    return-void
.end method

.method private D()V
    .locals 1

    .line 642
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->H()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/music/k;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/k;->C()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/music/k;Ljava/util/List;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/music/k;->a(Ljava/util/List;)V

    return-void
.end method

.method private a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "insertNextPage: "

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 170
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 172
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ag;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 173
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 174
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 175
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/k;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 176
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 178
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 179
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 180
    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/music/k;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 182
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "insertNextPage: same music = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 185
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->j()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    .line 186
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/music/k;->b(Ljava/util/List;)V

    goto :goto_2

    .line 188
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->b()V

    .line 190
    :goto_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->A()V

    .line 193
    :cond_4
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->q()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;-><init>(ILjava/lang/String;IZ)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/model/music/k;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/xiaopeng/musicradio/model/music/k;->h:I

    return p0
.end method

.method private b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 197
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateIndexLisRandom: "

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 198
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    if-nez p1, :cond_0

    return-void

    .line 203
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 204
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/k;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 205
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/2addr p1, v1

    :goto_0
    if-ge v1, p1, :cond_1

    .line 207
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 209
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    .line 210
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k;->b:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 211
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$f;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$f;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/model/music/k;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/k;->D()V

    return-void
.end method


# virtual methods
.method A()V
    .locals 2

    .line 300
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "sl: "

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->e()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 302
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/model/music/k;->h:I

    .line 303
    new-instance v1, Lcom/xiaopeng/musicradio/model/music/k$2;

    invoke-direct {v1, p0, v0}, Lcom/xiaopeng/musicradio/model/music/k$2;-><init>(Lcom/xiaopeng/musicradio/model/music/k;Ljava/util/List;)V

    invoke-static {v1}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected B()Ljava/lang/String;
    .locals 1

    const-string v0, "NormalDataProvider"

    return-object v0
.end method

.method public a(Lass;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lass<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 216
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lass;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 217
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/k;->C()V

    .line 218
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    .line 219
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play: ======= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/k;->g:Last$a;

    invoke-virtual {v0, v1}, Lass;->a(Last$a;)V

    .line 221
    invoke-virtual {p1}, Lass;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->e:Ljava/lang/String;

    .line 222
    invoke-virtual {p1}, Lass;->A()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 223
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/model/music/i;->g(I)V

    .line 225
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {v0}, Lass;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    invoke-virtual {p0, v1, v1}, Lcom/xiaopeng/musicradio/model/music/k;->a(ZZ)V

    .line 227
    invoke-virtual {p1}, Lass;->A()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lass;->B()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 228
    invoke-static {}, Lbrw;->a()V

    .line 229
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v2, "type"

    const-string v3, "music"

    .line 230
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "source"

    const-string v3, "continue"

    .line 231
    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    invoke-static {v0}, Lbrw;->d(Ljava/util/Map;)V

    :cond_1
    const/4 v0, 0x0

    .line 234
    invoke-virtual {p1, v0}, Lass;->e(Z)V

    .line 236
    invoke-static {}, Lbrx;->a()Lbrx;

    move-result-object v2

    invoke-virtual {v2}, Lbrx;->f()V

    .line 237
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/an;->a(I)V

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {v0}, Lass;->d()Ljava/util/List;

    move-result-object v0

    .line 240
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {v2}, Lass;->e()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 243
    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {v3}, Lass;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Lcom/xiaopeng/musicradio/model/music/k;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {v0}, Lass;->f()V

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {v0, v1}, Lass;->a(Z)V

    .line 246
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {p1}, Lass;->A()Z

    move-result p1

    xor-int/2addr p1, v1

    const-string v3, ""

    invoke-virtual {v0, v2, v3, p1}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;Z)V

    .line 247
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {p1}, Lass;->o()V

    goto :goto_0

    .line 249
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {p1}, Lass;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/music/k;->a(Ljava/lang/String;)V

    .line 250
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {p1}, Lass;->n()V

    .line 251
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bn;->a(I)V

    .line 253
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->g()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 255
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    if-lt p1, v0, :cond_3

    .line 257
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    if-eqz p1, :cond_3

    .line 258
    invoke-virtual {p1}, Lass;->w()Z

    :cond_3
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V
    .locals 3

    .line 434
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "insertInfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 435
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 437
    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/music/k;->a:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 439
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/k;->a:Ljava/util/List;

    invoke-interface {v1, p2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 441
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->A()V

    .line 442
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->b()V

    .line 443
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/music/k;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/model/music/k;->d:I

    .line 444
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;

    const/4 p2, 0x0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->e:Ljava/lang/String;

    const/4 v1, 0x2

    invoke-direct {p1, p2, v0, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;-><init>(ILjava/lang/String;I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method a(Ljava/lang/String;)V
    .locals 3

    .line 353
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bufferList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 354
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 355
    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/model/music/k;->a(ZZ)V

    .line 356
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k;->e:Ljava/lang/String;

    .line 357
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/k;->D()V

    return-void
.end method

.method protected a(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
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

    .line 266
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateList: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    const/4 v1, -0x1

    .line 268
    iput v1, p0, Lcom/xiaopeng/musicradio/model/music/k;->d:I

    .line 269
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/k;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 270
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/k;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    iput-object p2, p0, Lcom/xiaopeng/musicradio/model/music/k;->e:Ljava/lang/String;

    .line 272
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->b()V

    .line 273
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p1, v1, p2, v2}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;-><init>(ILjava/lang/String;I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 274
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$i;

    invoke-direct {p1, v1, p2}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$i;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 275
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->A()V

    .line 276
    invoke-virtual {p0, p2}, Lcom/xiaopeng/musicradio/model/music/k;->b(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    .line 278
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/music/k;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/model/music/k;->d:I

    :cond_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 503
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "rebootPlay: "

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 504
    new-instance v0, Lcom/xiaopeng/musicradio/model/music/k$3;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/music/k$3;-><init>(Lcom/xiaopeng/musicradio/model/music/k;Z)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(ZZ)V
    .locals 2

    .line 362
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resetPlayList: "

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 363
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 364
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->v()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/an;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    .line 365
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, -0x1

    .line 366
    iput v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->d:I

    const-string v0, ""

    .line 367
    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->e:Ljava/lang/String;

    .line 368
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->b()V

    if-eqz p2, :cond_0

    .line 370
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->A()V

    :cond_0
    if-eqz p1, :cond_1

    .line 373
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/k;->D()V

    :cond_1
    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 5

    .line 391
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/music/k;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I

    move-result v0

    .line 392
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "play: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " index = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 393
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 394
    invoke-virtual {v1, v2}, Lass;->a(Z)V

    :cond_0
    const/4 v1, 0x2

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 397
    iput v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->d:I

    .line 398
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->k()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v2, :cond_3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->k()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v1

    if-lt v0, p1, :cond_3

    .line 400
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    if-eqz p1, :cond_3

    .line 401
    invoke-virtual {p1}, Lass;->D()Z

    move-result p1

    if-nez p1, :cond_3

    .line 402
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {p1}, Lass;->C()V

    .line 403
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {p1}, Lass;->w()Z

    goto :goto_1

    .line 408
    :cond_1
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->d:I

    const/4 v4, 0x0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->d:I

    .line 410
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->d:I

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v3, p0, Lcom/xiaopeng/musicradio/model/music/k;->d:I

    if-le v0, v3, :cond_2

    .line 411
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->b:Ljava/util/List;

    iget v3, p0, Lcom/xiaopeng/musicradio/model/music/k;->d:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    goto :goto_0

    :cond_2
    move v0, v4

    .line 413
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/k;->a:Ljava/util/List;

    invoke-interface {v2, v0, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 414
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->b()V

    .line 415
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->A()V

    .line 416
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/music/k;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/model/music/k;->d:I

    .line 417
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->e:Ljava/lang/String;

    invoke-direct {p1, v4, v0, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;-><init>(ILjava/lang/String;I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 420
    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/k;->D()V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 498
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 379
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/model/music/a;->b(Z)V

    const/4 v0, 0x1

    .line 380
    invoke-virtual {p0, v0, p1}, Lcom/xiaopeng/musicradio/model/music/k;->a(ZZ)V

    const/4 p1, 0x2

    .line 381
    iput p1, p0, Lcom/xiaopeng/musicradio/model/music/k;->c:I

    return-void
.end method

.method public c(I)V
    .locals 1

    const-string v0, "music_user_play_mode"

    .line 485
    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 2

    .line 425
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 426
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->d:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/model/music/k;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    goto :goto_0

    .line 428
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->b:Ljava/util/List;

    iget v1, p0, Lcom/xiaopeng/musicradio/model/music/k;->d:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/model/music/k;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    :goto_0
    return-void
.end method

.method public d(I)V
    .locals 3

    .line 647
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 649
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/music/k;->f(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 652
    invoke-static {}, Lbbu;->a()Lbbu;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->v()I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lbbu;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 655
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->m()V

    :cond_2
    return-void
.end method

.method public d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 0

    return-void
.end method

.method protected e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 2

    .line 681
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;)V

    return-void
.end method

.method public f(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public j()I
    .locals 2

    .line 662
    invoke-super {p0}, Lcom/xiaopeng/musicradio/model/music/a;->j()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 663
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lass;->G()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x2

    :cond_0
    return v0
.end method

.method public m_()Lass;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lass<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    return-object v0
.end method

.method public n()V
    .locals 4

    .line 449
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->g()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "next:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->g()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->k()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/k;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->k()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->g()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->k()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x3

    if-lt v0, v1, :cond_1

    .line 452
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    if-eqz v0, :cond_1

    .line 453
    invoke-virtual {v0}, Lass;->D()Z

    move-result v0

    if-nez v0, :cond_1

    .line 454
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {v0}, Lass;->C()V

    .line 455
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->f:Lass;

    invoke-virtual {v0}, Lass;->w()Z

    goto :goto_0

    .line 460
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "next: "

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 462
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->c()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->d:I

    .line 463
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/k;->D()V

    return-void
.end method

.method public o()V
    .locals 2

    .line 468
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->B()Ljava/lang/String;

    move-result-object v0

    const-string v1, "prev: "

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 469
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->d()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->d:I

    .line 470
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/k;->D()V

    return-void
.end method

.method public p()V
    .locals 0

    return-void
.end method

.method public q()Ljava/lang/String;
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/k;->e:Ljava/lang/String;

    return-object v0
.end method

.method public r()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public s()V
    .locals 0

    return-void
.end method

.method protected u()Z
    .locals 2

    .line 148
    invoke-static {}, Lcom/xiaopeng/musicradio/model/music/i;->k()Lcom/xiaopeng/musicradio/model/music/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/k;->v()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public v()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected w()Ljava/lang/String;
    .locals 1

    const-string v0, "music_play_list"

    return-object v0
.end method

.method protected x()Ljava/lang/String;
    .locals 1

    const-string v0, "music_play_list_count"

    return-object v0
.end method

.method protected y()Ljava/lang/String;
    .locals 1

    const-string v0, "music_play_list_sign"

    return-object v0
.end method

.method protected z()Ljava/lang/String;
    .locals 1

    const-string v0, "music_song_id"

    return-object v0
.end method
