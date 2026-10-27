.class public Lbmt;
.super Ljava/lang/Object;
.source "ProgramModel.java"

# interfaces
.implements Laqt;
.implements Lcom/xiaopeng/musicradio/common/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbmt$a;
    }
.end annotation


# instance fields
.field private A:Last$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Last$a<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;"
        }
    .end annotation
.end field

.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Z

.field private i:Ljava/lang/String;

.field private j:Z

.field private k:Z

.field private l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

.field private m:I

.field private n:Z

.field private o:Z

.field private p:I

.field private q:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;>;"
        }
    .end annotation
.end field

.field private r:Laqu;

.field private s:J

.field private t:Lcom/xiaopeng/musicradio/player/h$a;

.field private u:Lcom/lzy/okgo/adapter/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/lzy/okgo/adapter/Call<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/PlayInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private v:I

.field private w:Lask$a;

.field private x:Z

.field private y:I

.field private z:Lass;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lass<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbmt;->a:Ljava/util/List;

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbmt;->c:Ljava/util/List;

    const/4 v0, -0x1

    .line 104
    iput v0, p0, Lbmt;->d:I

    const/4 v1, 0x2

    .line 105
    iput v1, p0, Lbmt;->e:I

    .line 107
    iput v0, p0, Lbmt;->g:I

    const/4 v0, 0x0

    .line 108
    iput-boolean v0, p0, Lbmt;->h:Z

    const/4 v2, 0x1

    .line 110
    iput-boolean v2, p0, Lbmt;->j:Z

    .line 111
    iput-boolean v2, p0, Lbmt;->k:Z

    .line 113
    iput v0, p0, Lbmt;->m:I

    .line 114
    iput-boolean v0, p0, Lbmt;->n:Z

    .line 117
    iput v0, p0, Lbmt;->p:I

    const-wide/16 v3, 0x0

    .line 122
    iput-wide v3, p0, Lbmt;->s:J

    .line 125
    new-instance v0, Lbmt$1;

    invoke-direct {v0, p0}, Lbmt$1;-><init>(Lbmt;)V

    iput-object v0, p0, Lbmt;->t:Lcom/xiaopeng/musicradio/player/h$a;

    .line 338
    new-instance v0, Lbmt$15;

    invoke-direct {v0, p0}, Lbmt$15;-><init>(Lbmt;)V

    iput-object v0, p0, Lbmt;->w:Lask$a;

    .line 1227
    iput-boolean v2, p0, Lbmt;->x:Z

    .line 1552
    new-instance v0, Lbmt$6;

    invoke-direct {v0, p0}, Lbmt$6;-><init>(Lbmt;)V

    iput-object v0, p0, Lbmt;->A:Last$a;

    .line 234
    new-instance v0, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;-><init>(I)V

    iput-object v0, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    .line 235
    iget-object v0, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    iget-object v2, p0, Lbmt;->t:Lcom/xiaopeng/musicradio/player/h$a;

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->setPlayListener(Lcom/xiaopeng/musicradio/player/h$a;)V

    .line 237
    iput v1, p0, Lbmt;->e:I

    const-string v0, ""

    .line 238
    iput-object v0, p0, Lbmt;->i:Ljava/lang/String;

    .line 239
    new-instance v0, Laqu;

    invoke-direct {v0, p0}, Laqu;-><init>(Laqt;)V

    iput-object v0, p0, Lbmt;->r:Laqu;

    .line 240
    new-instance v0, Lbmt$12;

    invoke-direct {v0, p0}, Lbmt$12;-><init>(Lbmt;)V

    const-wide/16 v1, 0x1f4

    invoke-static {v0, v1, v2}, Lbql;->a(Ljava/lang/Runnable;J)V

    .line 249
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lbmt;->q:Landroid/util/LruCache;

    return-void
.end method

.method private H()V
    .locals 3

    .line 218
    iget-object v0, p0, Lbmt;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Lbmt;->d:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lbmt;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 219
    iget-object v0, p0, Lbmt;->a:Ljava/util/List;

    iget-object v1, p0, Lbmt;->c:Ljava/util/List;

    iget v2, p0, Lbmt;->d:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getDuration()I

    move-result v0

    iput v0, p0, Lbmt;->y:I

    :cond_0
    return-void
.end method

.method private I()V
    .locals 4

    .line 266
    iget-object v0, p0, Lbmt;->z:Lass;

    const-string v1, "program_list_page"

    if-eqz v0, :cond_0

    const/4 v2, 0x2

    .line 267
    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Lass;->h()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x1

    iget-object v3, p0, Lbmt;->z:Lass;

    invoke-virtual {v3}, Lass;->i()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const-string v0, "%s_%s"

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_0
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/bh;->e(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private J()V
    .locals 3

    .line 277
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lbmt;->a:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 278
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iput v1, p0, Lbmt;->v:I

    .line 279
    invoke-static {}, Lblf;->a()Lblf;

    move-result-object v1

    new-instance v2, Lbmt$14;

    invoke-direct {v2, p0, v0}, Lbmt$14;-><init>(Lbmt;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lblf;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private K()I
    .locals 2

    .line 528
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 529
    iget-object v0, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 532
    :cond_0
    iget v0, p0, Lbmt;->d:I

    add-int/lit8 v0, v0, 0x1

    .line 533
    iget-object v1, p0, Lbmt;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :cond_1
    return v0
.end method

.method private L()I
    .locals 1

    .line 540
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 541
    iget-object v0, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 544
    :cond_0
    iget v0, p0, Lbmt;->d:I

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    .line 546
    iget-object v0, p0, Lbmt;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_1
    return v0
.end method

.method private M()V
    .locals 2

    .line 601
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 602
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0, v1}, Laqr;->a(I)V

    :cond_0
    return-void
.end method

.method private N()V
    .locals 2

    const-string v0, "ProgramModel"

    const-string v1, "cancelBufferList: "

    .line 617
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x1

    .line 618
    invoke-virtual {p0, v0}, Lbmt;->b(I)V

    return-void
.end method

.method private O()V
    .locals 2

    .line 673
    iget v0, p0, Lbmt;->g:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x2

    .line 674
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bn;->a(I)V

    :cond_1
    return-void
.end method

.method private P()V
    .locals 1

    .line 919
    iget-object v0, p0, Lbmt;->z:Lass;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lass;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 920
    iget-object v0, p0, Lbmt;->z:Lass;

    invoke-virtual {v0}, Lass;->n()V

    :cond_0
    return-void
.end method

.method private Q()V
    .locals 2

    .line 1518
    invoke-virtual {p0}, Lbmt;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 1521
    :cond_0
    iget v0, p0, Lbmt;->e:I

    if-ne v0, v1, :cond_1

    .line 1522
    iget v0, p0, Lbmt;->d:I

    invoke-direct {p0, v0}, Lbmt;->c(I)V

    goto :goto_0

    .line 1525
    :cond_1
    invoke-virtual {p0}, Lbmt;->z()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lbmt;->D()Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x5

    .line 1528
    invoke-virtual {p0, v0}, Lbmt;->b(I)V

    goto :goto_0

    .line 1530
    :cond_2
    invoke-virtual {p0}, Lbmt;->q()V

    :goto_0
    return-void
.end method

.method private R()V
    .locals 3

    const-string v0, "ProgramModel"

    const-string v1, "nextWithSrc"

    .line 1790
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1791
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 1792
    invoke-virtual {p0}, Lbmt;->z()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 1793
    iget-object v1, p0, Lbmt;->z:Lass;

    if-eqz v1, :cond_1

    const-string v1, "nextPage"

    .line 1794
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1795
    iget-object v1, p0, Lbmt;->z:Lass;

    invoke-virtual {v1}, Lass;->w()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1797
    iget-object v0, p0, Lbmt;->z:Lass;

    invoke-virtual {v0, v2}, Lass;->b(Z)V

    .line 1798
    iget-object v0, p0, Lbmt;->z:Lass;

    invoke-virtual {v0}, Lass;->C()V

    return-void

    :cond_0
    const-string v1, "nextPage no more data"

    .line 1801
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1806
    invoke-virtual {p0}, Lbmt;->pauseByLogic()V

    return-void

    .line 1812
    :cond_1
    invoke-direct {p0}, Lbmt;->K()I

    move-result v0

    .line 1813
    invoke-direct {p0, v0, v2}, Lbmt;->a(II)V

    return-void
.end method

.method private S()V
    .locals 2

    const-string v0, "ProgramModel"

    const-string v1, "preWithSrc"

    .line 1827
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1828
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 1829
    invoke-virtual {p0}, Lbmt;->A()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1830
    iget-object v1, p0, Lbmt;->z:Lass;

    if-eqz v1, :cond_1

    const-string v1, "prePage"

    .line 1831
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1832
    iget-object v1, p0, Lbmt;->z:Lass;

    invoke-virtual {v1}, Lass;->u()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const-string v1, "nextPage no more data"

    .line 1836
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1837
    iget v0, p0, Lbmt;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 1838
    invoke-virtual {p0}, Lbmt;->m()V

    .line 1844
    :cond_1
    invoke-direct {p0}, Lbmt;->L()I

    move-result v0

    const/4 v1, 0x0

    .line 1845
    invoke-direct {p0, v0, v1}, Lbmt;->a(II)V

    return-void
.end method

.method private T()Z
    .locals 1

    .line 1992
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    invoke-virtual {v0}, Lask;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lbmt;->h:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private U()V
    .locals 2

    const-string v0, "ProgramModel"

    const-string v1, "playFromLocalList: "

    .line 2034
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2035
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 2036
    invoke-direct {p0}, Lbmt;->M()V

    .line 2037
    new-instance v0, Lbmt$7;

    invoke-direct {v0, p0}, Lbmt$7;-><init>(Lbmt;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic a(Lbmt;I)I
    .locals 0

    .line 100
    iput p1, p0, Lbmt;->f:I

    return p1
.end method

.method static synthetic a(Lbmt;Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)I
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lbmt;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)I

    move-result p0

    return p0
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)I
    .locals 7

    .line 514
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    const/4 v0, -0x1

    if-eqz p1, :cond_2

    .line 515
    iget-object v1, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    .line 518
    :goto_0
    iget-object v2, p0, Lbmt;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 519
    iget-object v2, p0, Lbmt;->a:Ljava/util/List;

    iget-object v3, p0, Lbmt;->c:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 520
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v0
.end method

.method static synthetic a(Lbmt;J)J
    .locals 0

    .line 100
    iput-wide p1, p0, Lbmt;->s:J

    return-wide p1
.end method

.method private a(II)V
    .locals 1

    const/4 v0, 0x1

    .line 1403
    invoke-direct {p0, p1, p2, v0}, Lbmt;->a(IIZ)V

    return-void
.end method

.method private a(IIZ)V
    .locals 12

    .line 1229
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepare\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1230
    invoke-virtual {p0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ba;->c(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 1234
    :cond_0
    iget-object v0, p0, Lbmt;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    const-string p1, "prepare: index >= mIndexList.size()"

    .line 1235
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1238
    :cond_1
    iget-object v0, p0, Lbmt;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 1239
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    const-string p1, "prepare: targetIndex >= mPlayList.size()"

    .line 1240
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 1243
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepare: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lbmt;->a:Ljava/util/List;

    iget-object v3, p0, Lbmt;->c:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 1244
    iput-boolean v0, p0, Lbmt;->n:Z

    .line 1245
    iput p1, p0, Lbmt;->d:I

    const/4 v0, 0x1

    .line 1246
    invoke-virtual {p0, v0}, Lbmt;->b(I)V

    .line 1247
    new-instance v1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;-><init>(I)V

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 1248
    iget-object v1, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->reset()V

    .line 1249
    invoke-virtual {p0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v1

    .line 1250
    iget-object v2, p0, Lbmt;->u:Lcom/lzy/okgo/adapter/Call;

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lcom/lzy/okgo/adapter/Call;->isExecuted()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1251
    iget-object v2, p0, Lbmt;->u:Lcom/lzy/okgo/adapter/Call;

    invoke-interface {v2}, Lcom/lzy/okgo/adapter/Call;->cancel()V

    :cond_3
    if-eqz v1, :cond_c

    .line 1254
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/v;->a()V

    .line 1255
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1256
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 1255
    invoke-static/range {v4 .. v9}, Lbkx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Landroid/os/Bundle;

    move-result-object v2

    .line 1258
    iget-boolean v3, p0, Lbmt;->o:Z

    if-nez v3, :cond_4

    .line 1259
    iput-boolean v0, p0, Lbmt;->o:Z

    .line 1260
    invoke-static {}, Lbmr;->a()Lbmr;

    move-result-object v3

    invoke-virtual {v3}, Lbmr;->e()F

    move-result v3

    invoke-virtual {p0, v3}, Lbmt;->a(F)V

    .line 1262
    :cond_4
    iget-object v3, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v3, v2}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->setData(Landroid/os/Bundle;)V

    .line 1264
    invoke-virtual {p0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 1265
    invoke-virtual {p0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v2

    new-instance v3, Lbmt$19;

    invoke-direct {v3, p0}, Lbmt$19;-><init>(Lbmt;)V

    invoke-static {v2, v3}, Lbry;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;Lbry$c;)V

    .line 1271
    invoke-virtual {p0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v2

    invoke-virtual {p0}, Lbmt;->y()Ljava/lang/String;

    move-result-object v3

    int-to-long v4, p2

    new-instance v6, Lbmt$20;

    invoke-direct {v6, p0}, Lbmt$20;-><init>(Lbmt;)V

    invoke-static {v2, v3, v4, v5, v6}, Lbry;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;Ljava/lang/String;JLbry$c;)V

    .line 1278
    :cond_5
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getListenUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getListenUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "null"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    .line 1367
    :cond_6
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v3

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v6

    new-instance v8, Lbmt$4;

    invoke-direct {v8, p0, v1}, Lbmt$4;-><init>(Lbmt;Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V

    invoke-virtual/range {v3 .. v8}, Lbmv;->a(JJLbkv;)Lcom/lzy/okgo/adapter/Call;

    move-result-object v2

    iput-object v2, p0, Lbmt;->u:Lcom/lzy/okgo/adapter/Call;

    .line 1386
    iget-object v2, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    iget-object v3, p0, Lbmt;->a:Ljava/util/List;

    iget-object v4, p0, Lbmt;->c:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getListenUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1, v0, v0, p3}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->prepareData(Ljava/lang/String;ZZZ)V

    .line 1387
    iget-object p1, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->seekTo(I)V

    goto/16 :goto_2

    .line 1279
    :cond_7
    :goto_0
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object p1

    invoke-virtual {p1}, Lbea;->g()Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPaymentType()I

    move-result p1

    const/4 v2, 0x2

    if-eq p1, v0, :cond_8

    .line 1280
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPaymentType()I

    move-result p1

    if-ne p1, v2, :cond_b

    .line 1281
    :cond_8
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPaymentType()I

    move-result p1

    if-ne p1, v0, :cond_9

    .line 1282
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object p1

    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget p3, Lbue$a;->play_vip_no_login_hint:I

    invoke-virtual {p2, p3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPaymentType()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lbmn;->a(Ljava/lang/String;I)V

    goto :goto_1

    .line 1283
    :cond_9
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPaymentType()I

    move-result p1

    if-ne p1, v2, :cond_a

    .line 1284
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object p1

    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget p3, Lbue$a;->play_payment_no_login_hint:I

    invoke-virtual {p2, p3}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPaymentType()I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lbmn;->a(Ljava/lang/String;I)V

    .line 1286
    :cond_a
    :goto_1
    new-instance p1, Lbmt$2;

    invoke-direct {p1, p0}, Lbmt$2;-><init>(Lbmt;)V

    const-wide/16 p2, 0x1f4

    invoke-static {p1, p2, p3}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void

    .line 1294
    :cond_b
    invoke-virtual {p0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v4

    .line 1295
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object p1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v8

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v10

    new-instance v0, Lbmt$3;

    move-object v2, v0

    move-object v3, p0

    move-object v5, v1

    move v6, p3

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lbmt$3;-><init>(Lbmt;Lcom/xiaopeng/musicradio/bean/program/ProgramBean;Lcom/xiaopeng/musicradio/bean/program/ProgramBean;ZI)V

    move-object v5, p1

    move-wide v6, v8

    move-wide v8, v10

    move-object v10, v0

    invoke-virtual/range {v5 .. v10}, Lbmv;->a(JJLbkv;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    iput-object p1, p0, Lbmt;->u:Lcom/lzy/okgo/adapter/Call;

    .line 1389
    :goto_2
    new-instance p1, Lbmt$5;

    invoke-direct {p1, p0, v1}, Lbmt$5;-><init>(Lbmt;Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V

    invoke-static {p1}, Lbql;->a(Ljava/lang/Runnable;)V

    :cond_c
    return-void
.end method

.method static synthetic a(Lbmt;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lbmt;->Q()V

    return-void
.end method

.method static synthetic a(Lbmt;II)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lbmt;->a(II)V

    return-void
.end method

.method static synthetic a(Lbmt;Ljava/util/List;Lcom/xiaopeng/musicradio/bean/program/ProgramBean;Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2, p3}, Lbmt;->a(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/program/ProgramBean;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lbmt;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lbmt;->b(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lbmt;Z)V
    .locals 0

    .line 100
    invoke-direct {p0, p1}, Lbmt;->b(Z)V

    return-void
.end method

.method private a(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/program/ProgramBean;Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1917
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " programBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " listSzie = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1918
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    const/4 v0, 0x0

    .line 1920
    iput-boolean v0, p0, Lbmt;->k:Z

    .line 1921
    iput-boolean v0, p0, Lbmt;->j:Z

    .line 1922
    invoke-direct {p0}, Lbmt;->M()V

    .line 1923
    invoke-direct {p0, p1, p3}, Lbmt;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 1924
    iget-object p1, p0, Lbmt;->z:Lass;

    invoke-virtual {p1}, Lass;->z()Z

    move-result p1

    const-string v2, "headspeech"

    if-eqz p1, :cond_4

    .line 1926
    invoke-virtual {p0}, Lbmt;->y()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1927
    invoke-static {}, Larg;->a()Larg;

    move-result-object p1

    const-string v3, "key_cache_headspeach_record"

    invoke-virtual {p1, v3}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-class v3, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;

    invoke-static {p1, v3}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;

    if-eqz p1, :cond_0

    .line 1929
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->getTrackId()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->getAlbumId()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 1930
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->getSeek()J

    move-result-wide v3

    long-to-int v3, v3

    .line 1931
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->getChannelId()I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setChannelId(I)V

    .line 1932
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HEADSPEECH SEECK="

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    move p1, v3

    goto/16 :goto_2

    .line 1934
    :cond_1
    invoke-virtual {p0}, Lbmt;->y()Ljava/lang/String;

    move-result-object p1

    const-string v3, "reading_album_onkey_"

    invoke-virtual {p1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1936
    invoke-static {}, Larg;->a()Larg;

    move-result-object p1

    const-string v1, "key_cache_one_album_record"

    invoke-virtual {p1, v1}, Larg;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1937
    const-class v1, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;

    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;

    if-eqz p1, :cond_3

    .line 1939
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->getTrackId()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->getAlbumId()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    .line 1940
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->getSeek()J

    move-result-wide v3

    goto :goto_1

    .line 1943
    :cond_2
    invoke-static {}, Lbmo;->a()Lbmo;

    move-result-object p1

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Lbmo;->a(J)Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    move-result-object p1

    .line 1944
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "playListInternal: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_3

    .line 1945
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTrackId()J

    move-result-wide v3

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_3

    .line 1946
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getSeek()J

    move-result-wide v3

    :goto_1
    long-to-int p1, v3

    goto :goto_2

    :cond_3
    move p1, v0

    .line 1949
    :goto_2
    invoke-direct {p0, p2}, Lbmt;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)I

    move-result p2

    iget-object v1, p0, Lbmt;->z:Lass;

    invoke-virtual {v1}, Lass;->A()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p2, p1, v1}, Lbmt;->a(IIZ)V

    .line 1950
    iget-object p1, p0, Lbmt;->z:Lass;

    invoke-virtual {p1, v0}, Lass;->c(Z)V

    .line 1951
    iget-object p1, p0, Lbmt;->z:Lass;

    invoke-virtual {p1, v0}, Lass;->d(Z)V

    goto :goto_3

    .line 1953
    :cond_4
    invoke-direct {p0, p2}, Lbmt;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)I

    move-result p1

    iget-object p2, p0, Lbmt;->z:Lass;

    invoke-virtual {p2}, Lass;->A()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    invoke-direct {p0, p1, v0, p2}, Lbmt;->a(IIZ)V

    .line 1954
    iget-object p1, p0, Lbmt;->z:Lass;

    invoke-virtual {p1, v0}, Lass;->d(Z)V

    .line 1956
    :goto_3
    invoke-direct {p0, p3}, Lbmt;->d(Ljava/lang/String;)V

    .line 1957
    invoke-static {p3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_4

    .line 1959
    :cond_5
    invoke-direct {p0}, Lbmt;->J()V

    :goto_4
    return-void
.end method

.method private a(Ljava/util/List;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1859
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1860
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    const/4 v0, 0x0

    .line 1861
    iput-boolean v0, p0, Lbmt;->n:Z

    .line 1862
    iput-boolean v0, p0, Lbmt;->k:Z

    .line 1863
    iput-boolean v0, p0, Lbmt;->j:Z

    .line 1864
    invoke-direct {p0}, Lbmt;->M()V

    .line 1865
    invoke-direct {p0, p1, p2}, Lbmt;->b(Ljava/util/List;Ljava/lang/String;)V

    .line 1867
    invoke-virtual {p0}, Lbmt;->isNotPlayable()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 1871
    :cond_0
    invoke-direct {p0}, Lbmt;->K()I

    move-result p1

    .line 1872
    iget-object v1, p0, Lbmt;->z:Lass;

    invoke-virtual {v1}, Lass;->A()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lbmt;->a(IIZ)V

    .line 1873
    iget-object p1, p0, Lbmt;->z:Lass;

    invoke-virtual {p1, v0}, Lass;->d(Z)V

    .line 1875
    invoke-direct {p0, p2}, Lbmt;->d(Ljava/lang/String;)V

    const-string p1, "headspeech"

    .line 1876
    invoke-static {p2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 1878
    :cond_1
    invoke-direct {p0}, Lbmt;->J()V

    :goto_0
    return-void
.end method

.method private a(Ljava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;Z)V"
        }
    .end annotation

    .line 1770
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    if-nez p1, :cond_0

    return-void

    .line 1775
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1776
    iget-object v1, p0, Lbmt;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    .line 1777
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    add-int v4, v1, v3

    .line 1778
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1780
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    if-eqz p2, :cond_2

    .line 1782
    iget-object p1, p0, Lbmt;->c:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 1784
    :cond_2
    iget-object p1, p0, Lbmt;->c:Ljava/util/List;

    invoke-interface {p1, v2, v0}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1786
    :goto_1
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$f;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$f;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic b(Lbmt;I)I
    .locals 0

    .line 100
    iput p1, p0, Lbmt;->d:I

    return p1
.end method

.method static synthetic b(Lbmt;)Laqu;
    .locals 0

    .line 100
    iget-object p0, p0, Lbmt;->r:Laqu;

    return-object p0
.end method

.method static synthetic b(Lbmt;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 100
    invoke-direct {p0, p1, p2}, Lbmt;->a(Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    .line 842
    :cond_0
    iget v0, p0, Lbmt;->f:I

    const-string v1, "reading_album_onkey_"

    const-string v2, "headspeech"

    if-eqz p1, :cond_1

    .line 843
    iget-object v3, p0, Lbmt;->i:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object v3, p0, Lbmt;->i:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 844
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object v1

    invoke-virtual {p0}, Lbmt;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lbmn;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;ILjava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    const-string v3, "saveHistory trackid="

    const-string v4, "ProgramModel"

    if-eqz p1, :cond_3

    .line 845
    iget-object v5, p0, Lbmt;->i:Ljava/lang/String;

    if-eqz v5, :cond_3

    invoke-virtual {v5, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 846
    iget v1, p0, Lbmt;->f:I

    iget-object v2, p0, Lbmt;->z:Lass;

    invoke-virtual {v2}, Lass;->i()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;II)Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;

    move-result-object v1

    .line 847
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 848
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/reading/HeadSpeechHistoryRecord;->getTrackId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 849
    invoke-static {}, Larg;->a()Larg;

    move-result-object v1

    const-string v3, "key_cache_headspeach_record"

    invoke-virtual {v1, v3, v2}, Larg;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    iget-object v1, p0, Lbmt;->i:Ljava/lang/String;

    const-class v2, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    if-eqz v1, :cond_2

    .line 852
    iget-object v1, v1, Lcom/xiaopeng/musicradio/bean/ListSignBean;->collectId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setChannelId(I)V

    .line 854
    :cond_2
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object v1

    invoke-virtual {p0}, Lbmt;->C()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v0, v2}, Lbmn;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;ILjava/lang/String;)V

    goto :goto_0

    :cond_3
    if-eqz p1, :cond_4

    .line 855
    iget-object v0, p0, Lbmt;->i:Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 857
    new-instance v0, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;-><init>()V

    .line 858
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->setTitle(Ljava/lang/String;)V

    .line 859
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->setAlbumId(J)V

    .line 860
    invoke-virtual {p0}, Lbmt;->C()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->setOrder(Ljava/lang/String;)V

    .line 861
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->setTrackId(J)V

    .line 862
    iget p1, p0, Lbmt;->f:I

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->setSeek(J)V

    .line 863
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 864
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/reading/OneKeyReadingHistoryRecord;->getTrackId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 865
    invoke-static {}, Larg;->a()Larg;

    move-result-object v0

    const-string v1, "key_cache_one_album_record"

    invoke-virtual {v0, v1, p1}, Larg;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private b(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1900
    invoke-direct {p0, p1}, Lbmt;->c(Ljava/util/List;)Z

    move-result v0

    .line 1901
    iget-object v1, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1902
    iget-object v1, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p1, -0x1

    .line 1903
    iput p1, p0, Lbmt;->d:I

    const/4 p1, 0x0

    .line 1904
    iput p1, p0, Lbmt;->p:I

    .line 1905
    iput-object p2, p0, Lbmt;->i:Ljava/lang/String;

    .line 1906
    new-instance p1, Ljava/lang/Throwable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lbmt;->i:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v1, "ProgramModel"

    const-string v2, "refreshList: "

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-nez v0, :cond_0

    .line 1908
    invoke-virtual {p0}, Lbmt;->m()V

    .line 1910
    :cond_0
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p2}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 1911
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$i;

    invoke-direct {p1, v0, p2}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$i;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 1913
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private b(Z)V
    .locals 3

    .line 870
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "replay, resumeVolume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProgramModel"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 874
    iget p1, p0, Lbmt;->g:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v2, 0x5

    if-ne p1, v2, :cond_3

    .line 881
    :cond_1
    iget-object p1, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->isIdle()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 882
    iget-object p1, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getPlaybackState()I

    move-result p1

    const/4 v2, 0x4

    if-ne p1, v2, :cond_2

    .line 883
    iget-object p1, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->seekTo(I)V

    .line 885
    :cond_2
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    invoke-direct {p1, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 886
    invoke-virtual {p0, v0}, Lbmt;->b(I)V

    .line 887
    iget-object p1, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->start()V

    goto :goto_0

    .line 889
    :cond_3
    iget p1, p0, Lbmt;->d:I

    iget v0, p0, Lbmt;->f:I

    invoke-direct {p0, p1, v0}, Lbmt;->a(II)V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic b(Lbmt;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lbmt;->k:Z

    return p1
.end method

.method static synthetic c(Lbmt;I)I
    .locals 0

    .line 100
    iput p1, p0, Lbmt;->m:I

    return p1
.end method

.method private c(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1407
    invoke-direct {p0, p1, v0}, Lbmt;->a(II)V

    return-void
.end method

.method static synthetic c(Lbmt;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lbmt;->H()V

    return-void
.end method

.method private c(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V
    .locals 3

    .line 1211
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1212
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getFromSource()Ljava/lang/String;

    move-result-object v1

    .line 1213
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v1, "near"

    :cond_0
    const-string v2, "source"

    .line 1216
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "album"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "albumid"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getCategoryName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "albumclass"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTitle()Ljava/lang/String;

    move-result-object v1

    const-string v2, "program"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1221
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getDuration()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "programtime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    iget v1, p0, Lbmt;->f:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "playtime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    iget-object v1, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getCurrentPosition()I

    move-result v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getDuration()I

    move-result p1

    if-lt v1, p1, :cond_1

    const-string p1, "complete"

    goto :goto_0

    :cond_1
    const-string p1, "incomplete"

    :goto_0
    const-string v1, "type"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    invoke-static {v0}, Lbrw;->f(Ljava/util/Map;)V

    return-void
.end method

.method static synthetic c(Lbmt;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lbmt;->j:Z

    return p1
.end method

.method private c(Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1883
    iget-object v1, p0, Lbmt;->a:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_1

    .line 1886
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_1

    return v0

    .line 1890
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    .line 1892
    iget-object v3, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-eq v3, v4, :cond_2

    return v0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x1

    return p1

    :cond_4
    :goto_1
    return v0
.end method

.method static synthetic d(Lbmt;)J
    .locals 2

    .line 100
    iget-wide v0, p0, Lbmt;->s:J

    return-wide v0
.end method

.method private d(I)V
    .locals 1

    const-string v0, "program_play_state"

    .line 1997
    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    return-void
.end method

.method private d(Ljava/lang/String;)V
    .locals 1

    .line 261
    invoke-direct {p0}, Lbmt;->I()V

    const-string v0, "program_list_sign"

    .line 262
    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic d(Lbmt;Z)Z
    .locals 0

    .line 100
    iput-boolean p1, p0, Lbmt;->x:Z

    return p1
.end method

.method static synthetic e(Lbmt;)I
    .locals 0

    .line 100
    iget p0, p0, Lbmt;->v:I

    return p0
.end method

.method private e(Ljava/lang/String;)V
    .locals 4

    const-string v0, "bufferList: "

    const-string v1, "ProgramModel"

    .line 607
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 608
    invoke-direct {p0}, Lbmt;->M()V

    .line 609
    invoke-virtual {p0}, Lbmt;->p()V

    .line 610
    iput-object p1, p0, Lbmt;->i:Ljava/lang/String;

    .line 611
    new-instance p1, Ljava/lang/Throwable;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lbmt;->i:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x1

    .line 612
    invoke-virtual {p0, p1}, Lbmt;->b(I)V

    .line 613
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic f(Lbmt;)I
    .locals 0

    .line 100
    iget p0, p0, Lbmt;->g:I

    return p0
.end method

.method static synthetic g(Lbmt;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lbmt;->j:Z

    return p0
.end method

.method static synthetic h(Lbmt;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lbmt;->n:Z

    return p0
.end method

.method static synthetic i(Lbmt;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lbmt;->k:Z

    return p0
.end method

.method static synthetic j(Lbmt;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lbmt;->P()V

    return-void
.end method

.method public static k()Lbmt;
    .locals 1

    .line 230
    sget-object v0, Lbmt$a;->a:Lbmt;

    return-object v0
.end method

.method static synthetic k(Lbmt;)Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;
    .locals 0

    .line 100
    iget-object p0, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    return-object p0
.end method

.method static synthetic l(Lbmt;)Z
    .locals 0

    .line 100
    iget-boolean p0, p0, Lbmt;->x:Z

    return p0
.end method

.method static synthetic m(Lbmt;)Lass;
    .locals 0

    .line 100
    iget-object p0, p0, Lbmt;->z:Lass;

    return-object p0
.end method

.method static synthetic n(Lbmt;)I
    .locals 0

    .line 100
    iget p0, p0, Lbmt;->m:I

    return p0
.end method

.method static synthetic o(Lbmt;)I
    .locals 2

    .line 100
    iget v0, p0, Lbmt;->m:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lbmt;->m:I

    return v0
.end method

.method static synthetic p(Lbmt;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lbmt;->N()V

    return-void
.end method

.method static synthetic q(Lbmt;)Ljava/util/List;
    .locals 0

    .line 100
    iget-object p0, p0, Lbmt;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic r(Lbmt;)I
    .locals 0

    .line 100
    iget p0, p0, Lbmt;->e:I

    return p0
.end method

.method static synthetic s(Lbmt;)I
    .locals 0

    .line 100
    invoke-direct {p0}, Lbmt;->L()I

    move-result p0

    return p0
.end method

.method static synthetic t(Lbmt;)I
    .locals 0

    .line 100
    iget p0, p0, Lbmt;->d:I

    return p0
.end method

.method static synthetic u(Lbmt;)V
    .locals 0

    .line 100
    invoke-direct {p0}, Lbmt;->U()V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 2

    .line 1849
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 1850
    iget v0, p0, Lbmt;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1851
    iget v0, p0, Lbmt;->d:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public B()Last;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Last<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;"
        }
    .end annotation

    .line 1972
    iget-object v0, p0, Lbmt;->z:Lass;

    return-object v0
.end method

.method public C()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/xiaopeng/musicradio/bean/db/ReadingInfo$SORT;
    .end annotation

    .line 2027
    iget-object v0, p0, Lbmt;->z:Lass;

    if-eqz v0, :cond_0

    .line 2028
    invoke-virtual {v0}, Lass;->y()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "timeAsc"

    return-object v0
.end method

.method public D()Z
    .locals 4

    .line 2129
    iget-object v0, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 2133
    :cond_0
    invoke-direct {p0}, Lbmt;->K()I

    move-result v0

    .line 2134
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "findNextIndex index:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mPlayingIndex:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lbmt;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ProgramModel"

    invoke-static {v3, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2135
    iget v2, p0, Lbmt;->d:I

    const/4 v3, 0x1

    if-gt v0, v2, :cond_3

    .line 2136
    iget-object v0, p0, Lbmt;->z:Lass;

    if-eqz v0, :cond_2

    .line 2137
    invoke-virtual {v0}, Lass;->s()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbmt;->z:Lass;

    invoke-virtual {v0}, Lass;->i()I

    move-result v0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    :cond_1
    move v1, v3

    :cond_2
    return v1

    :cond_3
    return v3
.end method

.method public E()Z
    .locals 3

    .line 2147
    iget-object v0, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 2151
    :cond_0
    invoke-direct {p0}, Lbmt;->L()I

    move-result v0

    .line 2152
    iget v2, p0, Lbmt;->d:I

    if-lt v0, v2, :cond_2

    .line 2153
    iget-object v0, p0, Lbmt;->z:Lass;

    if-eqz v0, :cond_1

    .line 2154
    invoke-virtual {v0}, Lass;->t()Z

    move-result v0

    return v0

    :cond_1
    return v1

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public F()V
    .locals 2

    .line 2165
    invoke-virtual {p0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    .line 2167
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setListenUrl(Ljava/lang/String;)V

    .line 2168
    invoke-virtual {p0}, Lbmt;->pauseByLogic()V

    .line 2169
    invoke-virtual {p0}, Lbmt;->G()V

    :cond_0
    return-void
.end method

.method public G()V
    .locals 5

    const-string v0, "ProgramModel"

    const-string v1, "play: "

    .line 2238
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2239
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 2241
    invoke-virtual {p0}, Lbmt;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2245
    :cond_0
    invoke-direct {p0}, Lbmt;->M()V

    .line 2246
    invoke-virtual {p0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2247
    invoke-virtual {p0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    new-instance v1, Lbmt$10;

    invoke-direct {v1, p0}, Lbmt$10;-><init>(Lbmt;)V

    invoke-static {v0, v1}, Lbry;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;Lbry$c;)V

    .line 2253
    invoke-virtual {p0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    invoke-virtual {p0}, Lbmt;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lbmt;->getPosition()I

    move-result v2

    int-to-long v2, v2

    new-instance v4, Lbmt$11;

    invoke-direct {v4, p0}, Lbmt$11;-><init>(Lbmt;)V

    invoke-static {v0, v1, v2, v3, v4}, Lbry;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;Ljava/lang/String;JLbry$c;)V

    .line 2260
    :cond_1
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    new-instance v1, Lbmt$13;

    invoke-direct {v1, p0}, Lbmt$13;-><init>(Lbmt;)V

    invoke-virtual {v0, v1}, Lask;->b(Lask$d;)V

    return-void
.end method

.method public a(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;"
        }
    .end annotation

    .line 257
    iget-object v0, p0, Lbmt;->q:Landroid/util/LruCache;

    invoke-virtual {v0, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1
.end method

.method public a()V
    .locals 0

    .line 668
    invoke-direct {p0}, Lbmt;->O()V

    .line 669
    invoke-virtual {p0}, Lbmt;->q()V

    return-void
.end method

.method public a(F)V
    .locals 2

    .line 2117
    invoke-static {}, Lbmr;->a()Lbmr;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbmr;->a(F)V

    .line 2118
    iget-object v0, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->setPlaySpeed(F)V

    .line 2119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlaySpeed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$y;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$y;-><init>(F)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(I)V
    .locals 3

    .line 553
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 554
    iput p1, p0, Lbmt;->e:I

    .line 555
    iget v0, p0, Lbmt;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 556
    iget-object v0, p0, Lbmt;->a:Ljava/util/List;

    iget-object v1, p0, Lbmt;->c:Ljava/util/List;

    iget v2, p0, Lbmt;->d:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 557
    invoke-virtual {p0}, Lbmt;->m()V

    .line 558
    invoke-direct {p0, v0}, Lbmt;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)I

    move-result v0

    iput v0, p0, Lbmt;->d:I

    :cond_0
    const-string v0, "program_play_mode"

    .line 560
    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    .line 561
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$c;

    const/4 v0, 0x3

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$c;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 1537
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 1539
    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1541
    :cond_0
    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1543
    :goto_0
    new-instance p2, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;

    invoke-direct {p2, p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lass;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lass<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;)V"
        }
    .end annotation

    .line 1647
    invoke-direct {p0}, Lbmt;->O()V

    .line 1648
    invoke-virtual {p0, p1}, Lbmt;->b(Lass;)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 7

    if-eqz p1, :cond_2

    .line 383
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getChannelId()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 384
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getChannelId()J

    move-result-wide v4

    .line 385
    new-instance v0, Lbms$a;

    invoke-direct {v0}, Lbms$a;-><init>()V

    .line 386
    invoke-static {v4, v5}, Lcom/xiaopeng/musicradio/utils/aj;->a(J)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lbms$a;->a(Ljava/lang/String;)Lbms$a;

    move-result-object v0

    .line 387
    invoke-virtual {v0, v1}, Lbms$a;->b(Z)Lbms$a;

    move-result-object v0

    const/4 v6, 0x0

    .line 388
    invoke-virtual {v0, v6}, Lbms$a;->c(I)Lbms$a;

    move-result-object v0

    const/16 v6, 0xa

    .line 389
    invoke-virtual {v0, v6}, Lbms$a;->b(I)Lbms$a;

    move-result-object v0

    .line 390
    invoke-virtual {v0, v4, v5}, Lbms$a;->a(J)Lbms$a;

    move-result-object v0

    .line 391
    invoke-virtual {v0, v2, v3}, Lbms$a;->b(J)Lbms$a;

    move-result-object v0

    .line 392
    invoke-virtual {v0, v1}, Lbms$a;->a(I)Lbms$a;

    move-result-object v0

    const-string v1, "timeDesc"

    .line 393
    invoke-virtual {v0, v1}, Lbms$a;->b(Ljava/lang/String;)Lbms$a;

    move-result-object v0

    .line 394
    invoke-virtual {v0}, Lbms$a;->a()Lbms;

    move-result-object v0

    .line 395
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bc;->a(Lass;)V

    goto :goto_0

    .line 397
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reading_album_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 398
    new-instance v2, Lbms$a;

    invoke-direct {v2}, Lbms$a;-><init>()V

    .line 399
    invoke-virtual {v2, v0}, Lbms$a;->a(Ljava/lang/String;)Lbms$a;

    move-result-object v0

    .line 400
    invoke-virtual {v0, v1}, Lbms$a;->a(Z)Lbms$a;

    move-result-object v0

    .line 401
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getChannelId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbms$a;->a(J)Lbms$a;

    move-result-object v0

    const/16 v1, 0x14

    .line 402
    invoke-virtual {v0, v1}, Lbms$a;->b(I)Lbms$a;

    move-result-object v0

    .line 403
    invoke-virtual {v0, p1}, Lbms$a;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Lbms$a;

    move-result-object v0

    .line 404
    invoke-static {}, Lbmq;->a()Lbmq;

    move-result-object v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lbmq;->a(J)Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 406
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;->getSort()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbms$a;->b(Ljava/lang/String;)Lbms$a;

    .line 408
    :cond_1
    invoke-virtual {v0}, Lbms$a;->a()Lbms;

    move-result-object v0

    .line 409
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bc;->a(Lass;)V

    .line 413
    :cond_2
    :goto_0
    new-instance v0, Lbmt$16;

    invoke-direct {v0, p0, p1}, Lbmt$16;-><init>(Lbmt;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    invoke-static {v0}, Lbql;->e(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;",
            ">;)V"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lbmt;->q:Landroid/util/LruCache;

    invoke-virtual {v0, p1, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ProgramModel"

    const-string v1, "playPrePage"

    .line 1706
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1707
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 1708
    iget v1, p0, Lbmt;->p:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 1709
    iget v1, p0, Lbmt;->d:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lbmt;->d:I

    .line 1710
    iget-object v1, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v1, v2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1711
    iget v1, p0, Lbmt;->p:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lbmt;->p:I

    goto :goto_1

    .line 1713
    :cond_0
    iget-object v1, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v1, v3, :cond_1

    .line 1714
    iget-object v1, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1715
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int v3, v1, v3

    :goto_0
    if-ge v3, v1, :cond_1

    .line 1717
    iget-object v4, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1720
    :cond_1
    iget v1, p0, Lbmt;->d:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v1, v3

    iput v1, p0, Lbmt;->d:I

    .line 1721
    iget-object v1, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v1, v2, p1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1724
    :goto_1
    iget v1, p0, Lbmt;->e:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 1725
    invoke-direct {p0, p1, v2}, Lbmt;->a(Ljava/util/List;Z)V

    goto :goto_2

    .line 1727
    :cond_2
    invoke-virtual {p0}, Lbmt;->m()V

    .line 1730
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPlayList.size="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mIndexes.size="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbmt;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1731
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPlayingIndex = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbmt;->d:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " playListCount="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbmt;->p:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1733
    invoke-virtual {p0}, Lbmt;->s()V

    .line 1734
    invoke-direct {p0}, Lbmt;->J()V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 1985
    iput-boolean p1, p0, Lbmt;->h:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 1987
    invoke-direct {p0, p1}, Lbmt;->d(I)V

    :cond_0
    return-void
.end method

.method public a(Last;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Last<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;)Z"
        }
    .end annotation

    .line 1976
    move-object v0, p1

    check-cast v0, Lass;

    invoke-virtual {v0}, Lass;->E()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 1980
    :cond_0
    iget-object v0, p0, Lbmt;->z:Lass;

    if-eqz v0, :cond_1

    invoke-interface {p1}, Last;->b()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lbmt;->z:Lass;

    invoke-virtual {v2}, Lass;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1981
    invoke-interface {p1}, Last;->c()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public b()V
    .locals 0

    .line 732
    invoke-direct {p0}, Lbmt;->O()V

    .line 733
    invoke-virtual {p0}, Lbmt;->s()V

    return-void
.end method

.method public b(I)V
    .locals 7

    .line 1158
    iget v0, p0, Lbmt;->g:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1162
    :cond_0
    iput p1, p0, Lbmt;->g:I

    const/4 v0, -0x1

    const/4 v1, 0x3

    if-ne p1, v0, :cond_1

    .line 1164
    iget-object v0, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1165
    iput v1, p0, Lbmt;->g:I

    .line 1168
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dealPlayState: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lbmt;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ProgramModel"

    invoke-static {v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1169
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    iget v2, p0, Lbmt;->g:I

    invoke-direct {v0, v1, v2}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;-><init>(II)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    .line 1170
    invoke-virtual {p0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz v0, :cond_3

    .line 1174
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getDuration()I

    move-result v2

    if-gtz v2, :cond_3

    .line 1175
    invoke-virtual {p0}, Lbmt;->getDuration()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setDuration(I)V

    :cond_3
    const-string v2, "program_play_album_id"

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq p1, v3, :cond_6

    if-eq p1, v4, :cond_5

    if-eq p1, v1, :cond_4

    goto :goto_0

    .line 1179
    :cond_4
    invoke-direct {p0, v1}, Lbmt;->d(I)V

    goto :goto_0

    .line 1189
    :cond_5
    iget-object p1, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getCurrentPosition()I

    move-result p1

    iput p1, p0, Lbmt;->f:I

    .line 1190
    invoke-direct {p0, v4}, Lbmt;->d(I)V

    if-eqz v0, :cond_7

    .line 1192
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;J)V

    .line 1193
    invoke-direct {p0, v0}, Lbmt;->b(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V

    goto :goto_0

    .line 1182
    :cond_6
    invoke-direct {p0, v4}, Lbmt;->d(I)V

    if-eqz v0, :cond_7

    .line 1184
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v5

    invoke-static {v2, v5, v6}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;J)V

    .line 1185
    invoke-direct {p0, v0}, Lbmt;->b(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V

    .line 1200
    :cond_7
    :goto_0
    iget p1, p0, Lbmt;->g:I

    if-ne p1, v1, :cond_8

    .line 1201
    invoke-direct {p0, v0}, Lbmt;->c(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V

    .line 1202
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ba;->c(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V

    goto :goto_1

    :cond_8
    if-ne p1, v4, :cond_9

    .line 1204
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ba;->b(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V

    goto :goto_1

    :cond_9
    if-ne p1, v3, :cond_a

    .line 1206
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ba;->c(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V

    :cond_a
    :goto_1
    return-void
.end method

.method b(Lass;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lass<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;)V"
        }
    .end annotation

    .line 1652
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 1653
    invoke-virtual {p0}, Lbmt;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1657
    :cond_0
    invoke-virtual {p0, p1}, Lbmt;->a(Last;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1658
    iget-object v0, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 1659
    iget v0, p0, Lbmt;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1661
    invoke-virtual {p0}, Lbmt;->G()V

    return-void

    .line 1666
    :cond_1
    invoke-static {}, Lbrx;->a()Lbrx;

    move-result-object v0

    invoke-virtual {v0}, Lbrx;->e()V

    .line 1668
    iget-object v0, p0, Lbmt;->z:Lass;

    if-eqz v0, :cond_2

    .line 1669
    invoke-virtual {v0}, Lass;->a()V

    .line 1672
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playByLogic: newMediaSource:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    const-string v2, "MediaSource"

    invoke-direct {v1, v2}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v2, "ProgramModel"

    invoke-static {v2, v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1673
    iput-object p1, p0, Lbmt;->z:Lass;

    .line 1674
    iget-object p1, p0, Lbmt;->z:Lass;

    iget-object v0, p0, Lbmt;->A:Last$a;

    invoke-virtual {p1, v0}, Lass;->a(Last$a;)V

    .line 1676
    iget-object p1, p0, Lbmt;->z:Lass;

    invoke-virtual {p1}, Lass;->c()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1677
    invoke-static {}, Lbrx;->a()Lbrx;

    move-result-object p1

    invoke-virtual {p1}, Lbrx;->g()V

    .line 1678
    iget-object p1, p0, Lbmt;->z:Lass;

    invoke-virtual {p1}, Lass;->A()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lbmt;->z:Lass;

    invoke-virtual {p1}, Lass;->B()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1679
    invoke-static {}, Lbrw;->a()V

    .line 1681
    :cond_3
    iget-object p1, p0, Lbmt;->z:Lass;

    invoke-virtual {p1, v0}, Lass;->e(Z)V

    .line 1684
    iget-object p1, p0, Lbmt;->z:Lass;

    invoke-virtual {p1}, Lass;->d()Ljava/util/List;

    move-result-object p1

    .line 1685
    iget-object v0, p0, Lbmt;->z:Lass;

    invoke-virtual {v0}, Lass;->e()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 1686
    iget-object v0, p0, Lbmt;->z:Lass;

    invoke-virtual {v0}, Lass;->d()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lbmt;->z:Lass;

    invoke-virtual {v1}, Lass;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lbmt;->a(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/program/ProgramBean;Ljava/lang/String;)V

    .line 1687
    iget-object p1, p0, Lbmt;->z:Lass;

    invoke-virtual {p1}, Lass;->f()V

    goto :goto_0

    .line 1689
    :cond_4
    iget-object p1, p0, Lbmt;->z:Lass;

    invoke-virtual {p1}, Lass;->b()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lbmt;->e(Ljava/lang/String;)V

    .line 1690
    iget-object p1, p0, Lbmt;->z:Lass;

    invoke-virtual {p1}, Lass;->n()V

    .line 1691
    iput-boolean v0, p0, Lbmt;->k:Z

    .line 1693
    :goto_0
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$j;

    const/4 v0, 0x3

    iget-object v1, p0, Lbmt;->z:Lass;

    invoke-virtual {v1}, Lass;->y()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$j;-><init>(ILjava/lang/String;)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1547
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1548
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ProgramModel"

    const-string v1, "playNextPage"

    .line 1738
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1739
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 1742
    iget v1, p0, Lbmt;->p:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 1743
    iget-object v1, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1744
    iget v1, p0, Lbmt;->p:I

    add-int/2addr v1, v2

    iput v1, p0, Lbmt;->p:I

    goto :goto_1

    .line 1746
    :cond_0
    iget-object v1, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-le v1, v3, :cond_1

    .line 1747
    iget v1, p0, Lbmt;->d:I

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v1, v3

    iput v1, p0, Lbmt;->d:I

    const/4 v1, 0x0

    move v3, v1

    .line 1748
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 1749
    iget-object v4, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1752
    :cond_1
    iget-object v1, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1756
    :goto_1
    iget v1, p0, Lbmt;->e:I

    const/4 v3, 0x4

    if-ne v1, v3, :cond_2

    .line 1757
    invoke-direct {p0, p1, v2}, Lbmt;->a(Ljava/util/List;Z)V

    goto :goto_2

    .line 1759
    :cond_2
    invoke-virtual {p0}, Lbmt;->m()V

    .line 1762
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPlayList.size="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mIndexes.size="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbmt;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1763
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mPlayingIndex = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbmt;->d:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " playListCount="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lbmt;->p:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1765
    invoke-virtual {p0}, Lbmt;->q()V

    .line 1766
    invoke-direct {p0}, Lbmt;->J()V

    return-void
.end method

.method public c()I
    .locals 1

    .line 597
    iget v0, p0, Lbmt;->e:I

    return v0
.end method

.method public c(Lass;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lass<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;)V"
        }
    .end annotation

    .line 2006
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 2007
    iget-object v0, p0, Lbmt;->z:Lass;

    if-eqz v0, :cond_0

    .line 2008
    invoke-virtual {v0}, Lass;->a()V

    .line 2010
    :cond_0
    invoke-virtual {p0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    .line 2011
    iput-object p1, p0, Lbmt;->z:Lass;

    .line 2012
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshMediaSource: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Throwable;

    const-string v3, "mediaSource"

    invoke-direct {v2, v3}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v3, "ProgramModel"

    invoke-static {v3, v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2013
    invoke-virtual {p1}, Lass;->d()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p1}, Lass;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lbmt;->b(Ljava/util/List;Ljava/lang/String;)V

    if-eqz v0, :cond_1

    .line 2015
    invoke-direct {p0, v0}, Lbmt;->a(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)I

    move-result v0

    iput v0, p0, Lbmt;->d:I

    .line 2016
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$j;

    const/4 v1, 0x3

    invoke-virtual {p1}, Lass;->y()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$j;-><init>(ILjava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 2017
    iget-object p1, p0, Lbmt;->z:Lass;

    invoke-virtual {p1}, Lass;->f()V

    .line 2018
    iget-object p1, p0, Lbmt;->z:Lass;

    iget-object v0, p0, Lbmt;->A:Last$a;

    invoke-virtual {p1, v0}, Lass;->a(Last$a;)V

    .line 2019
    invoke-virtual {p0}, Lbmt;->u()V

    .line 2020
    invoke-direct {p0}, Lbmt;->J()V

    :cond_1
    return-void
.end method

.method public c(Ljava/lang/String;)Z
    .locals 2

    .line 1697
    iget-object v0, p0, Lbmt;->i:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lbmt;->i:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lbmt;->g:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public d()Lcom/xiaopeng/musicradio/bean/BaseInfo;
    .locals 1

    .line 571
    invoke-virtual {p0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    return-object v0
.end method

.method public dealNetValid(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "ProgramModel"

    const-string v0, "dealNetValid: "

    .line 473
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 477
    :cond_0
    iget-boolean p1, p0, Lbmt;->j:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-static {}, Lask;->a()Lask;

    move-result-object p1

    invoke-virtual {p1}, Lask;->e()Z

    move-result p1

    if-nez p1, :cond_1

    .line 478
    invoke-virtual {p0, v0}, Lbmt;->rebootPlay(Z)V

    goto :goto_0

    .line 479
    :cond_1
    invoke-direct {p0}, Lbmt;->T()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 480
    invoke-virtual {p0, v0}, Lbmt;->a(Z)V

    .line 481
    invoke-direct {p0, v0}, Lbmt;->b(Z)V

    .line 483
    :cond_2
    :goto_0
    invoke-direct {p0}, Lbmt;->P()V

    return-void
.end method

.method public dispatchInfoEvent()V
    .locals 2

    .line 2290
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public e()F
    .locals 1

    .line 2125
    invoke-static {}, Lbmr;->a()Lbmr;

    move-result-object v0

    invoke-virtual {v0}, Lbmr;->e()F

    move-result v0

    return v0
.end method

.method public f()V
    .locals 2

    const-string v0, "ProgramModel"

    const-string v1, "forcePause: "

    .line 776
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 777
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    const/4 v0, 0x0

    .line 778
    invoke-virtual {p0, v0}, Lbmt;->a(Z)V

    .line 779
    iget-object v0, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 780
    iget-object v0, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lbmt;->f:I

    .line 781
    iget-object v0, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->pause()V

    const/4 v0, 0x3

    .line 782
    invoke-virtual {p0, v0}, Lbmt;->b(I)V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 784
    invoke-virtual {p0, v0}, Lbmt;->b(I)V

    .line 788
    :goto_0
    iget-object v0, p0, Lbmt;->z:Lass;

    if-eqz v0, :cond_1

    .line 789
    invoke-virtual {v0}, Lass;->a()V

    :cond_1
    return-void
.end method

.method public g()V
    .locals 8

    const-string v0, "ProgramModel"

    const-string v1, "replayWhenIgOn"

    .line 795
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 796
    invoke-virtual {p0}, Lbmt;->y()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lbmt;->y()Ljava/lang/String;

    move-result-object v1

    const-string v2, "headspeech"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 798
    invoke-virtual {p0}, Lbmt;->p()V

    const/4 v1, 0x1

    .line 802
    invoke-virtual {p0, v1}, Lbmt;->a(Z)V

    .line 803
    iget-object v2, p0, Lbmt;->z:Lass;

    instance-of v3, v2, Lbms;

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_0

    .line 804
    check-cast v2, Lbms;

    .line 805
    invoke-virtual {v2}, Lbms;->J()J

    move-result-wide v4

    .line 806
    invoke-virtual {v2}, Lbms;->K()J

    move-result-wide v2

    .line 807
    iget-object v6, p0, Lbmt;->z:Lass;

    invoke-virtual {v6}, Lass;->a()V

    const/4 v6, 0x0

    .line 808
    iput-object v6, p0, Lbmt;->z:Lass;

    goto :goto_0

    :cond_0
    move-wide v2, v4

    .line 810
    :goto_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "igonPlay channelId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, ", relativeId:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 811
    new-instance v0, Lbms$a;

    invoke-direct {v0}, Lbms$a;-><init>()V

    .line 812
    invoke-static {v4, v5}, Lcom/xiaopeng/musicradio/utils/aj;->a(J)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v6

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lbms$a;->a(Ljava/lang/String;)Lbms$a;

    move-result-object v0

    .line 813
    invoke-virtual {v0, v4, v5}, Lbms$a;->a(J)Lbms$a;

    move-result-object v0

    .line 814
    invoke-virtual {v0, v2, v3}, Lbms$a;->b(J)Lbms$a;

    move-result-object v0

    .line 815
    invoke-virtual {v0, v1}, Lbms$a;->a(I)Lbms$a;

    move-result-object v0

    const/16 v2, 0xa

    .line 816
    invoke-virtual {v0, v2}, Lbms$a;->b(I)Lbms$a;

    move-result-object v0

    .line 817
    invoke-virtual {v0, v1}, Lbms$a;->b(Z)Lbms$a;

    move-result-object v0

    .line 818
    invoke-virtual {v0}, Lbms$a;->a()Lbms;

    move-result-object v0

    .line 819
    invoke-virtual {p0, v0}, Lbmt;->b(Lass;)V

    .line 820
    iput-boolean v1, p0, Lbmt;->n:Z

    goto :goto_1

    .line 822
    :cond_1
    invoke-virtual {p0}, Lbmt;->G()V

    :goto_1
    return-void
.end method

.method public getDuration()I
    .locals 2

    .line 1506
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 1507
    iget v0, p0, Lbmt;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1510
    :cond_0
    iget v0, p0, Lbmt;->y:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getDuration()I

    move-result v0

    :cond_1
    return v0
.end method

.method public getPlayState()I
    .locals 1

    .line 727
    iget v0, p0, Lbmt;->g:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 1494
    iget-object v0, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getCurrentPosition()I

    move-result v0

    return v0
.end method

.method public getSecondPosition()I
    .locals 1

    .line 715
    iget-object v0, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getSecondPosition()I

    move-result v0

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public h()Z
    .locals 2

    .line 2185
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetAutoRePlay, needRebootPlay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lbmt;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lask;->a()Lask;

    move-result-object v1

    invoke-virtual {v1}, Lask;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2186
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    invoke-virtual {v0}, Lask;->h()Z

    move-result v0

    return v0
.end method

.method public hasNextSource()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()V
    .locals 0

    .line 2175
    invoke-virtual {p0}, Lbmt;->F()V

    return-void
.end method

.method public isNotPlayable()Z
    .locals 2

    .line 1964
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lask;->a(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1965
    sget v0, Lbue$a;->tips_can_not_play_reading:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lbmt;->a(IZ)V

    :cond_0
    return v1
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;"
        }
    .end annotation

    .line 487
    iget-object v0, p0, Lbmt;->a:Ljava/util/List;

    return-object v0
.end method

.method public m()V
    .locals 3

    .line 491
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 492
    iget-object v0, p0, Lbmt;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 494
    :goto_0
    iget-object v1, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 495
    iget-object v1, p0, Lbmt;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 497
    :cond_0
    iget v0, p0, Lbmt;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 498
    iget-object v0, p0, Lbmt;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    goto :goto_1

    .line 500
    :cond_1
    iget-object v0, p0, Lbmt;->c:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 502
    :goto_1
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$f;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$f;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 506
    iget-object v0, p0, Lbmt;->c:Ljava/util/List;

    return-object v0
.end method

.method public o()I
    .locals 1

    .line 510
    iget v0, p0, Lbmt;->d:I

    return v0
.end method

.method public onReadReloadAlbum(Lasj$z;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 425
    invoke-virtual {p0}, Lbmt;->u()V

    return-void
.end method

.method public onReadStatusUpdate(Lasj$aa;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 430
    invoke-virtual {p0}, Lbmt;->u()V

    return-void
.end method

.method public onReadingBinded(Lasj$ab;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 447
    invoke-virtual {p0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 449
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v3

    new-instance v5, Lbmt$17;

    invoke-direct {v5, p0}, Lbmt$17;-><init>(Lbmt;)V

    invoke-virtual/range {v0 .. v5}, Lbmv;->b(JJLbkv;)Lcom/lzy/okgo/adapter/Call;

    :cond_0
    return-void
.end method

.method public onReadingUnbinded(Lasj$ac;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 435
    invoke-virtual {p0}, Lbmt;->u()V

    .line 436
    invoke-virtual {p0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 438
    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->setAuthorized(Z)V

    .line 439
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPaymentType()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPaymentType()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 440
    invoke-virtual {p0}, Lbmt;->stop()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 2

    const-string v0, "ProgramModel"

    const-string v1, "resetPlayList: "

    .line 625
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ba;->c(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V

    .line 627
    iget-object v0, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->reset()V

    .line 628
    iget-object v0, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    .line 629
    iput v0, p0, Lbmt;->p:I

    const/4 v0, -0x1

    .line 630
    iput v0, p0, Lbmt;->d:I

    const-string v0, ""

    .line 631
    iput-object v0, p0, Lbmt;->i:Ljava/lang/String;

    .line 632
    invoke-virtual {p0}, Lbmt;->m()V

    .line 633
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public pause()V
    .locals 0

    .line 767
    invoke-virtual {p0}, Lbmt;->pauseByLogic()V

    .line 768
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bn;->a()V

    return-void
.end method

.method public pauseByLogic()V
    .locals 2

    const-string v0, "ProgramModel"

    const-string v1, "pause: "

    .line 2196
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2197
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    const/4 v0, 0x0

    .line 2198
    invoke-virtual {p0, v0}, Lbmt;->a(Z)V

    .line 2199
    iget-object v0, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2204
    invoke-virtual {p0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2206
    new-instance v1, Lbmt$8;

    invoke-direct {v1, p0, v0}, Lbmt$8;-><init>(Lbmt;Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V

    invoke-static {v0, v1}, Lbry;->b(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;Lbry$c;)V

    .line 2214
    :cond_0
    iget-object v0, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lbmt;->f:I

    const/4 v0, 0x3

    .line 2215
    invoke-virtual {p0, v0}, Lbmt;->b(I)V

    .line 2216
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    new-instance v1, Lbmt$9;

    invoke-direct {v1, p0}, Lbmt$9;-><init>(Lbmt;)V

    invoke-virtual {v0, v1}, Lask;->a(Lask$d;)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 2228
    invoke-virtual {p0, v0}, Lbmt;->b(I)V

    .line 2231
    :goto_0
    iget-object v0, p0, Lbmt;->z:Lass;

    if-eqz v0, :cond_2

    .line 2232
    invoke-virtual {v0}, Lass;->a()V

    :cond_2
    return-void
.end method

.method public play()V
    .locals 5

    .line 638
    invoke-virtual {p0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    .line 639
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "play: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ProgramModel"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    .line 641
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->isOff()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOffTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    const-wide/32 v3, 0x36ee80

    cmp-long v1, v1, v3

    if-gez v1, :cond_0

    const v1, 0x8967ce

    .line 642
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOffMsg()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/by;->b(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbmt;->b(Ljava/lang/String;)V

    return-void

    .line 646
    :cond_0
    invoke-direct {p0}, Lbmt;->O()V

    .line 647
    invoke-virtual {p0}, Lbmt;->G()V

    return-void
.end method

.method public playNext(I)I
    .locals 0

    .line 652
    invoke-virtual {p0}, Lbmt;->play()V

    const/4 p1, 0x0

    return p1
.end method

.method public playSub(I)V
    .locals 0

    .line 658
    invoke-virtual {p0}, Lbmt;->play()V

    return-void
.end method

.method q()V
    .locals 2

    const-string v0, "ProgramModel"

    const-string v1, "next"

    .line 680
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 681
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 683
    invoke-virtual {p0}, Lbmt;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 687
    :cond_0
    invoke-virtual {p0}, Lbmt;->D()Z

    move-result v0

    if-nez v0, :cond_1

    .line 688
    sget v0, Lbue$a;->program_no_next:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbmt;->b(Ljava/lang/String;)V

    return-void

    .line 693
    :cond_1
    iget-object v0, p0, Lbmt;->z:Lass;

    if-eqz v0, :cond_2

    .line 694
    invoke-virtual {v0}, Lass;->C()V

    .line 695
    iget-object v0, p0, Lbmt;->z:Lass;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lass;->b(Z)V

    .line 696
    invoke-direct {p0}, Lbmt;->R()V

    return-void

    .line 700
    :cond_2
    iget v0, p0, Lbmt;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget v0, p0, Lbmt;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 701
    iget v0, p0, Lbmt;->d:I

    iget-object v1, p0, Lbmt;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    .line 702
    invoke-virtual {p0}, Lbmt;->m()V

    .line 705
    :cond_3
    invoke-direct {p0}, Lbmt;->K()I

    move-result v0

    .line 706
    invoke-direct {p0, v0}, Lbmt;->c(I)V

    return-void
.end method

.method public r()Z
    .locals 2

    .line 719
    invoke-virtual {p0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {p0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getListenUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->isCacheComplete(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public rebootPlay(Z)V
    .locals 2

    const-string v0, "ProgramModel"

    const-string v1, "rebootPlay: "

    .line 926
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 927
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 928
    invoke-direct {p0}, Lbmt;->M()V

    .line 929
    new-instance v0, Lbmt$18;

    invoke-direct {v0, p0, p1}, Lbmt$18;-><init>(Lbmt;Z)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method public register()V
    .locals 2

    .line 329
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    iget-object v1, p0, Lbmt;->w:Lask$a;

    invoke-virtual {v0, p0, v1}, Lask;->a(Laqt;Lask$a;)V

    .line 330
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method s()V
    .locals 2

    const-string v0, "ProgramModel"

    const-string v1, "pre"

    .line 737
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 739
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 741
    invoke-virtual {p0}, Lbmt;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 745
    :cond_0
    invoke-virtual {p0}, Lbmt;->E()Z

    move-result v0

    if-nez v0, :cond_1

    .line 746
    sget v0, Lbue$a;->program_no_pre:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bq;->a(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lbmt;->b(Ljava/lang/String;)V

    return-void

    .line 750
    :cond_1
    iget-object v0, p0, Lbmt;->z:Lass;

    if-eqz v0, :cond_2

    .line 751
    invoke-direct {p0}, Lbmt;->S()V

    return-void

    .line 755
    :cond_2
    iget v0, p0, Lbmt;->e:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    iget v0, p0, Lbmt;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    .line 756
    iget v0, p0, Lbmt;->d:I

    iget-object v1, p0, Lbmt;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    .line 757
    invoke-virtual {p0}, Lbmt;->m()V

    .line 761
    :cond_3
    invoke-direct {p0}, Lbmt;->L()I

    move-result v0

    .line 762
    invoke-direct {p0, v0}, Lbmt;->c(I)V

    return-void
.end method

.method public seekTo(I)V
    .locals 1

    .line 1484
    iget-object v0, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->seekTo(I)V

    return-void
.end method

.method public setVolume(F)Z
    .locals 2

    .line 576
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolume() called with: volume = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 577
    iget-object v0, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0, p1, p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->setVolume(FF)V

    const/4 p1, 0x1

    return p1
.end method

.method public stop()V
    .locals 1

    .line 2191
    iget-object v0, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->stop()V

    return-void
.end method

.method public supportRandom()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public t()I
    .locals 1

    .line 772
    iget v0, p0, Lbmt;->f:I

    return v0
.end method

.method public u()V
    .locals 1

    .line 830
    iget-object v0, p0, Lbmt;->l:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getCurrentPosition()I

    move-result v0

    iput v0, p0, Lbmt;->f:I

    .line 831
    invoke-virtual {p0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 833
    invoke-direct {p0, v0}, Lbmt;->b(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)V

    :cond_0
    return-void
.end method

.method public unregister()V
    .locals 1

    .line 334
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lask;->a(Laqt;)V

    .line 335
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method public v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;
    .locals 3

    .line 1454
    iget v0, p0, Lbmt;->d:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    return-object v1

    .line 1457
    :cond_0
    iget v0, p0, Lbmt;->d:I

    iget-object v2, p0, Lbmt;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_1

    return-object v1

    .line 1460
    :cond_1
    iget-object v0, p0, Lbmt;->c:Ljava/util/List;

    iget v2, p0, Lbmt;->d:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v2, p0, Lbmt;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lt v0, v2, :cond_2

    return-object v1

    .line 1463
    :cond_2
    iget-object v0, p0, Lbmt;->a:Ljava/util/List;

    iget-object v1, p0, Lbmt;->c:Ljava/util/List;

    iget v2, p0, Lbmt;->d:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    return-object v0
.end method

.method public w()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;
    .locals 3

    .line 1470
    invoke-direct {p0}, Lbmt;->K()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1471
    iget v1, p0, Lbmt;->d:I

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lbmt;->a:Ljava/util/List;

    iget-object v2, p0, Lbmt;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public x()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;
    .locals 3

    .line 1478
    invoke-direct {p0}, Lbmt;->L()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1479
    iget v1, p0, Lbmt;->d:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lbmt;->a:Ljava/util/List;

    iget-object v2, p0, Lbmt;->c:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1

    .line 1514
    iget-object v0, p0, Lbmt;->i:Ljava/lang/String;

    return-object v0
.end method

.method public z()Z
    .locals 3

    .line 1817
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 1818
    iget v0, p0, Lbmt;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1819
    iget v0, p0, Lbmt;->d:I

    iget-object v1, p0, Lbmt;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
