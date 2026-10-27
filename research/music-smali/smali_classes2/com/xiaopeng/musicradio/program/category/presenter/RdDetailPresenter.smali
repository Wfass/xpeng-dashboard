.class public Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "RdDetailPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/program/category/view/b;",
        ">;"
    }
.end annotation


# instance fields
.field private b:I

.field private c:I

.field private d:I

.field private e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

.field private f:Ljava/lang/String;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/String;

.field private j:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:J

.field private o:J

.field private p:Lcom/lzy/okgo/adapter/Call;

.field private q:I

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 100
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    const/4 v0, -0x1

    .line 75
    iput v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->b:I

    .line 76
    iput v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->c:I

    const/4 v0, 0x1

    .line 77
    iput v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->d:I

    const/4 v1, 0x0

    .line 79
    iput-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f:Ljava/lang/String;

    .line 81
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->g:Ljava/util/List;

    .line 82
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->h:Ljava/util/List;

    const-string v1, "reading_album_"

    .line 83
    iput-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->i:Ljava/lang/String;

    const/4 v1, 0x0

    .line 86
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->k:Z

    .line 87
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->l:Z

    .line 88
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->m:Z

    const-string v0, ""

    .line 96
    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->r:Ljava/lang/String;

    return-void
.end method

.method private A()V
    .locals 5

    .line 914
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->r:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "HOTRANK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v1, "CATEGORY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "GUESS"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_3
    const-string v1, "LATELY"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v4, :cond_3

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_1

    goto :goto_2

    .line 925
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->t:Ljava/lang/String;

    invoke-static {v0}, Lbmx;->h(Ljava/lang/String;)V

    goto :goto_2

    .line 922
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->t:Ljava/lang/String;

    invoke-static {v0, v1}, Lbmx;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 919
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->t:Ljava/lang/String;

    invoke-static {v0}, Lbmx;->d(Ljava/lang/String;)V

    goto :goto_2

    .line 916
    :cond_4
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->t:Ljava/lang/String;

    invoke-static {v0}, Lbmx;->c(Ljava/lang/String;)V

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7a947d4d -> :sswitch_3
        0x41035b7 -> :sswitch_2
        0x31a8acfe -> :sswitch_1
        0x6c557dd9 -> :sswitch_0
    .end sparse-switch
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->c:I

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->j:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    return-object p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f:Ljava/lang/String;

    return-object p1
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V
    .locals 7

    .line 555
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->y()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 556
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->k:Z

    .line 557
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 558
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 559
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    const/4 v2, 0x0

    .line 561
    :goto_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 562
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->getData()Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    .line 563
    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-static {v3, v4}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 565
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 566
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->n:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 573
    :cond_1
    new-instance p1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$7;

    invoke-direct {p1, p0, v0, v1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$7;-><init>(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;Ljava/util/List;I)V

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    goto :goto_1

    .line 580
    :cond_2
    new-instance p1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$8;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$8;-><init>(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)V

    invoke-static {p1}, Lbql;->g(Ljava/lang/Runnable;)V

    .line 590
    :goto_1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    const-string v0, "type"

    const-string v1, "reading"

    .line 591
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "source"

    const-string v1, "click"

    .line 592
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 593
    invoke-static {p1}, Lbrw;->d(Ljava/util/Map;)V

    goto :goto_2

    .line 595
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->t()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 597
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 598
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/category/view/b;->refreshMediaSource()V

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V
    .locals 0

    .line 72
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V

    return-void
.end method

.method private a(JJ)Z
    .locals 9

    .line 617
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 618
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getSpecialIdAlbumTracks cancel: mAlbumBean.getId() : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p4, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v0

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, ", albubmId: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RdAlbumDetailPresenter"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 621
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->z()V

    .line 622
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v0

    const/16 v5, 0x14

    iget-object v6, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f:Ljava/lang/String;

    new-instance v7, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;

    invoke-direct {v7, p0, p3, p4}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$9;-><init>(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;J)V

    const/4 v8, 0x0

    move-wide v1, p1

    move-wide v3, p3

    invoke-virtual/range {v0 .. v8}, Lbmv;->b(JJILjava/lang/String;Lbkv;Ljava/lang/String;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->p:Lcom/lzy/okgo/adapter/Call;

    const/4 p1, 0x1

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->b:I

    return p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)Ljava/lang/String;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->i:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->d:I

    return p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;I)I
    .locals 0

    .line 72
    iput p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->d:I

    return p1
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->b:I

    return p0
.end method

.method static synthetic e(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)I
    .locals 0

    .line 72
    iget p0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->c:I

    return p0
.end method

.method static synthetic f(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)J
    .locals 2

    .line 72
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->n:J

    return-wide v0
.end method

.method private w()Z
    .locals 3

    .line 473
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "interceptTargetWhenFirstReq.. mTargetTrackId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RdAlbumDetailPresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 474
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->x()Z

    move-result v0

    return v0
.end method

.method private x()Z
    .locals 5

    .line 481
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 482
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 483
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->n:J

    .line 484
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v3

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(JJ)Z

    move-result v0

    return v0

    .line 486
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->j:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTrackId()J

    move-result-wide v3

    cmp-long v0, v3, v1

    if-lez v0, :cond_1

    .line 487
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->j:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTrackId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->n:J

    .line 488
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->j:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTrackId()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(JJ)Z

    move-result v0

    return v0

    .line 489
    :cond_1
    iget-wide v3, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->n:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_2

    .line 490
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->n:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(JJ)Z

    move-result v0

    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private y()Z
    .locals 1

    .line 604
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->l:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->k:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->t()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private z()V
    .locals 1

    .line 608
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->p:Lcom/lzy/okgo/adapter/Call;

    if-eqz v0, :cond_0

    .line 609
    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    .line 236
    iput p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->d:I

    return-void
.end method

.method public a(Landroid/content/Intent;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "AROUTER_PARAM_OPEN_TYPE"

    .line 111
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 112
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->r:Ljava/lang/String;

    :cond_1
    const-string v0, "AROUTER_PARAM_OPEN_RANKNAME"

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 116
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->s:Ljava/lang/String;

    :cond_2
    const-string v0, "auto_play"

    .line 119
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_3

    move-object v0, v2

    :cond_3
    const-string v1, "track_id"

    .line 123
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 124
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v1, v2

    :cond_4
    const-string v3, "album_id"

    .line 127
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 128
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    move-object v3, v2

    :cond_5
    const-string v4, "album_bean_gson"

    .line 131
    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 132
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v4, v2

    :cond_6
    const-string v5, "channel_id"

    .line 135
    invoke-virtual {p1, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object p1, v2

    :cond_7
    const-string v2, "0"

    .line 139
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 141
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->q:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_8
    const-string p1, "true"

    .line 147
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Z)V

    .line 148
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/ax;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->n:J

    .line 149
    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/ax;->a(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->o:J

    .line 152
    const-class p1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-static {v4, p1}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    if-eqz p1, :cond_9

    .line 154
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->t:Ljava/lang/String;

    .line 155
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    .line 156
    new-instance v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$1;-><init>(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 166
    :cond_9
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->o:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_a

    .line 168
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->j()V

    .line 169
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 170
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/category/view/b;->updateData()V

    goto :goto_0

    :cond_a
    const-string p1, "RdAlbumDetailPresenter"

    const-string v0, "setBundle: ========"

    .line 173
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    new-instance p1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$3;

    invoke-direct {p1, p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$3;-><init>(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)V

    invoke-static {p1}, Lbql;->d(Ljava/lang/Runnable;)V

    :cond_b
    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V
    .locals 4

    .line 254
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    .line 255
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    const-string v1, "RdAlbumDetailPresenter"

    if-eqz v0, :cond_1

    .line 256
    iget v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->q:I

    if-lez v0, :cond_0

    int-to-long v2, v0

    .line 257
    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/utils/aj;->a(J)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->i:Ljava/lang/String;

    goto :goto_0

    .line 259
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reading_album_"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->i:Ljava/lang/String;

    .line 261
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAlbumBean: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->i:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " albumBean = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    new-instance v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;-><init>(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    invoke-static {v0}, Lbql;->d(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    const-string p1, "setAlbumBean: null ===="

    .line 295
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 318
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f:Ljava/lang/String;

    .line 322
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/b;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/category/view/b;->onUpdateSort(Ljava/lang/String;)V

    .line 326
    :cond_1
    invoke-static {}, Lbmq;->a()Lbmq;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;-><init>(JLjava/lang/String;)V

    invoke-virtual {p1, v0}, Lbmq;->a(Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;)V

    const/4 p1, 0x1

    .line 327
    iput p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->d:I

    .line 328
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->k()V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;)V"
        }
    .end annotation

    .line 836
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->c()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 838
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lbmt;->a(I)V

    .line 840
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->i:Ljava/lang/String;

    iget v3, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->d:I

    iget v4, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->b:I

    iget v5, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->c:I

    const/16 v6, 0x14

    iget-object v7, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f:Ljava/lang/String;

    iget-object v8, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-object v9, p1

    invoke-static/range {v2 .. v9}, Lcom/xiaopeng/musicradio/utils/bc;->a(Ljava/lang/String;IIIILjava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;Ljava/util/List;)V

    .line 841
    invoke-static {}, Lbmx;->f()V

    .line 842
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->A()V

    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;I)V"
        }
    .end annotation

    .line 846
    new-instance v11, Lbms;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->i:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->d:I

    iget v3, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->b:I

    iget v4, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->c:I

    iget-object v6, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    const/16 v5, 0x14

    const/4 v8, 0x0

    move-object v0, v11

    move-object v9, p1

    move v10, p2

    invoke-direct/range {v0 .. v10}, Lbms;-><init>(Ljava/lang/String;IIIILjava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;ZLjava/util/List;I)V

    .line 848
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1, v11}, Lbmt;->c(Lass;)V

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 250
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->l:Z

    return-void
.end method

.method public b(I)I
    .locals 12

    .line 417
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f:Ljava/lang/String;

    const-string v1, "timeAsc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "~"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 418
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 419
    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 420
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 421
    aget-object v5, v5, v3

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    int-to-long v10, p1

    cmp-long v5, v10, v6

    if-ltz v5, :cond_0

    cmp-long v5, v10, v8

    if-gtz v5, :cond_0

    .line 423
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->g:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    add-int/2addr p1, v3

    return p1

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 428
    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 429
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 430
    aget-object v5, v5, v3

    invoke-static {v5}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    int-to-long v10, p1

    cmp-long v5, v10, v6

    if-gtz v5, :cond_2

    cmp-long v5, v10, v8

    if-ltz v5, :cond_2

    .line 432
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->h:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public b(Z)V
    .locals 10

    .line 680
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 681
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/program/category/view/b;->onTrackUpdating()V

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 684
    iget v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->d:I

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->d:I

    sub-int/2addr v1, v0

    :goto_0
    move v5, v1

    if-ge v5, v0, :cond_2

    return-void

    .line 688
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->z()V

    .line 690
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v3

    const/16 v6, 0x14

    iget-object v7, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f:Ljava/lang/String;

    new-instance v8, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$10;

    invoke-direct {v8, p0, v5, p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$10;-><init>(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;IZ)V

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lbmv;->a(JIILjava/lang/String;Lbkv;Ljava/lang/String;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->p:Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public b(Ljava/util/List;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    if-le p2, v1, :cond_0

    .line 852
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 853
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 854
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object p1

    invoke-virtual {p1}, Lbea;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public c()I
    .locals 1

    .line 224
    iget v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->b:I

    return v0
.end method

.method public c(Ljava/util/List;I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 v1, -0x1

    if-le p2, v1, :cond_0

    .line 865
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 866
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 867
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object p1

    invoke-virtual {p1}, Lbea;->h()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v0
.end method

.method public d()I
    .locals 1

    .line 232
    iget v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->d:I

    return v0
.end method

.method public d(Ljava/util/List;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;I)V"
        }
    .end annotation

    .line 878
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v1

    invoke-virtual {v1}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_1

    if-eqz v1, :cond_1

    .line 879
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v3

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v5

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    .line 880
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v1

    invoke-virtual {v1}, Lbmt;->getPlayState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    .line 882
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bc;->a()V

    .line 884
    :cond_0
    new-instance v1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ag;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ag;-><init>(I)V

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 885
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Ljava/util/List;I)V

    goto/16 :goto_4

    :cond_1
    const/4 v1, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_2

    :goto_0
    move v8, v1

    goto :goto_2

    .line 890
    :cond_2
    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->j:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    if-eqz v4, :cond_4

    if-ne p2, v2, :cond_3

    const/4 v4, 0x0

    goto :goto_1

    .line 891
    :cond_3
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    :goto_1
    if-eqz v4, :cond_4

    .line 892
    iget-object v5, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->j:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;->getTrackId()J

    move-result-wide v5

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v7

    cmp-long v4, v5, v7

    if-nez v4, :cond_4

    goto :goto_0

    :cond_4
    move v8, v3

    :goto_2
    if-nez v8, :cond_5

    if-ne p2, v2, :cond_5

    move v10, v3

    goto :goto_3

    :cond_5
    move v10, p2

    .line 901
    :goto_3
    new-instance v11, Lbms;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->i:Ljava/lang/String;

    iget v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->d:I

    iget v3, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->b:I

    iget v4, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->c:I

    const/16 v5, 0x14

    iget-object v6, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f:Ljava/lang/String;

    iget-object v7, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-object v0, v11

    move-object v9, p1

    invoke-direct/range {v0 .. v10}, Lbms;-><init>(Ljava/lang/String;IIIILjava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;ZLjava/util/List;I)V

    .line 904
    iget v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->q:I

    int-to-long v0, v0

    invoke-virtual {v11, v0, v1}, Lbms;->a(J)V

    if-eqz p1, :cond_6

    .line 906
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play: size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RdAlbumDetailPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 908
    :cond_6
    invoke-static {v11}, Lcom/xiaopeng/musicradio/utils/bc;->a(Lass;)V

    .line 909
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->A()V

    :goto_4
    return-void
.end method

.method public dealAudioTypeChangeEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$k;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    return-void
.end method

.method public dealInfoChangeEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x1

    .line 764
    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;->a()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "RdAlbumDetailPresenter"

    const-string v3, "updateInfo type = %d"

    invoke-static {v2, v3, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 765
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;->a()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 766
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 767
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v3

    cmp-long p1, v1, v3

    if-nez p1, :cond_1

    .line 768
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 770
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->getPlayState()I

    move-result p1

    if-ne p1, v0, :cond_1

    .line 771
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/b;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/category/view/b;->onUpdateItemPlayState(I)V

    goto :goto_0

    .line 776
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 777
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/b;

    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->getPlayState()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/category/view/b;->onUpdateItemPlayState(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dealLoadFail(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$k;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 972
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$k;->a()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 973
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 974
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$k;->b()I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/musicradio/program/category/view/b;->onUpdateTracksError(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dealLoveRead(Lasj$x;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 785
    invoke-virtual {p1}, Lasj$x;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 786
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 787
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/b;

    invoke-virtual {p1}, Lasj$x;->b()Z

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/program/category/view/b;->refreshLove(Z)V

    :cond_0
    return-void
.end method

.method public dealMusicEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 6
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x1

    .line 743
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "RdAlbumDetailPresenter"

    const-string v2, "updatePlayState playState = %d"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result v0

    const/4 v1, 0x3

    if-ne v1, v0, :cond_1

    .line 745
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v4

    cmp-long v0, v2, v4

    if-nez v0, :cond_0

    .line 747
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 748
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result p1

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/program/category/view/b;->onUpdateItemPlayState(I)V

    goto :goto_0

    .line 751
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 752
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/b;

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/program/category/view/b;->onUpdateItemPlayState(I)V

    goto :goto_0

    .line 756
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 757
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/b;

    invoke-interface {p1, v1}, Lcom/xiaopeng/musicradio/program/category/view/b;->onUpdateItemPlayState(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public dealNetValid(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 965
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 966
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/category/view/b;->onNetworkValid()V

    :cond_0
    return-void
.end method

.method public dealReadStatusUpdate(Lasj$aa;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 799
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 800
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/b;

    invoke-virtual {p1}, Lasj$aa;->a()J

    move-result-wide v1

    invoke-virtual {p1}, Lasj$aa;->c()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/musicradio/program/category/view/b;->updatePaymentAuthorized(JZ)V

    :cond_0
    return-void
.end method

.method public e()Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    return-object v0
.end method

.method public f()Z
    .locals 3

    .line 307
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    if-eqz v0, :cond_0

    .line 308
    invoke-static {}, Lbmp;->a()Lbmp;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbmp;->c(J)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 333
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f:Ljava/lang/String;

    return-object v0
.end method

.method public h()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 337
    iget v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 338
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "~"

    const-string v2, ""

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    move v0, v3

    .line 342
    :goto_0
    iget v4, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->c:I

    if-gt v0, v4, :cond_2

    add-int/lit8 v5, v0, 0x14

    add-int/lit8 v6, v5, -0x1

    if-le v6, v4, :cond_1

    .line 344
    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->g:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->c:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 347
    :cond_1
    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->g:Ljava/util/List;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v5

    goto :goto_0

    .line 353
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 354
    iget v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->c:I

    :goto_2
    if-lt v0, v3, :cond_4

    add-int/lit8 v4, v0, -0x14

    add-int/2addr v4, v3

    if-ge v4, v3, :cond_3

    .line 356
    iget-object v4, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->h:Ljava/util/List;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 359
    :cond_3
    iget-object v5, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->h:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, -0x14

    goto :goto_2

    .line 365
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f:Ljava/lang/String;

    const-string v1, "timeAsc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 366
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->g:Ljava/util/List;

    return-object v0

    .line 368
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->h:Ljava/util/List;

    return-object v0
.end method

.method public i()Ljava/lang/String;
    .locals 3

    .line 407
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->h()Ljava/util/List;

    move-result-object v0

    .line 408
    iget v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->d:I

    add-int/lit8 v1, v1, -0x1

    .line 409
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    .line 410
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public j()V
    .locals 4

    .line 440
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loadByAlbumId.. mLoadAlbumId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RdAlbumDetailPresenter"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 441
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->o:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 442
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 443
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/program/category/view/b;->onTrackUpdating()V

    .line 445
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->z()V

    .line 446
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->o:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$5;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$5;-><init>(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)V

    invoke-virtual {v0, v1, v2}, Lbmv;->a(Ljava/lang/String;Lbkv;)Lcom/lzy/okgo/adapter/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->p:Lcom/lzy/okgo/adapter/Call;

    :cond_1
    return-void
.end method

.method public k()V
    .locals 10

    .line 497
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 498
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/program/category/view/b;->onTrackUpdating()V

    .line 499
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/b;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/program/category/view/b;->onUpdateSort(Ljava/lang/String;)V

    .line 502
    :cond_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->m:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 503
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->m:Z

    .line 505
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/ba;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;)V

    .line 506
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->w()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 510
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAlbumTracks m_Sort: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RdAlbumDetailPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->z()V

    .line 512
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v3

    iget v5, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->d:I

    const/16 v6, 0x14

    iget-object v7, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f:Ljava/lang/String;

    new-instance v8, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$6;

    invoke-direct {v8, p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$6;-><init>(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)V

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lbmv;->a(JIILjava/lang/String;Lbkv;Ljava/lang/String;)Lcom/lzy/okgo/adapter/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->p:Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public l()Z
    .locals 2

    .line 717
    iget v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->d:I

    iget v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->b:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public m()Z
    .locals 2

    .line 721
    iget v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->d:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public n()V
    .locals 0

    .line 827
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bc;->a()V

    .line 828
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->A()V

    return-void
.end method

.method public o()V
    .locals 1

    .line 832
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->pause()V

    return-void
.end method

.method public onAlbumReload(Lasj$z;)V
    .locals 2
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 211
    invoke-virtual {p1}, Lasj$z;->a()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->o:J

    .line 212
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->j()V

    .line 213
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->k()V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 192
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 193
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    .line 198
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    .line 199
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->z()V

    return-void
.end method

.method public onEvent(Lblv$a;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 218
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 219
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/b;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/category/view/b;->refreshLove(Z)V

    :cond_0
    return-void
.end method

.method public onHistoryChanged(Lasj$v;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 806
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lasj$v;->a()J

    move-result-wide v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    .line 809
    :cond_0
    invoke-virtual {p1}, Lasj$v;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 810
    new-instance v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$2;-><init>(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;Lasj$v;)V

    invoke-static {v0}, Lbql;->a(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 821
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->j:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    :cond_2
    :goto_0
    return-void
.end method

.method public onReadingBinded(Lasj$ab;)V
    .locals 4
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 729
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReadingBinded title: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " --mTargetTrackId:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->n:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "RdAlbumDetailPresenter"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 730
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;->getId()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->n:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(JJ)Z

    return-void
.end method

.method public onReadingUnBinded(Lasj$ac;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string p1, "RdAlbumDetailPresenter"

    const-string v0, "onReadingUnBinded"

    .line 735
    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 736
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 737
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/b;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/category/view/b;->refreshLove(Z)V

    :cond_0
    return-void
.end method

.method public onSpeechShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 204
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/category/view/b;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/category/view/b;->refreshTrackList()V

    :cond_0
    return-void
.end method

.method public p()V
    .locals 4

    .line 931
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    if-eqz v0, :cond_0

    .line 932
    invoke-static {}, Lbmn;->a()Lbmn;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e:Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    .line 933
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/musicradio/utils/az;->a(Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;J)Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;

    move-result-object v1

    const/4 v2, 0x0

    .line 932
    invoke-virtual {v0, v1, v2}, Lbmn;->a(Lcom/xiaopeng/musicradio/bean/db/ReadLoveInfo;Z)V

    :cond_0
    return-void
.end method

.method public q()Z
    .locals 1

    .line 938
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->j:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public r()Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;
    .locals 1

    .line 942
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->j:Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    return-object v0
.end method

.method public s()Z
    .locals 4

    .line 946
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    .line 947
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v1

    invoke-virtual {v1}, Lbmt;->y()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->i:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->i:Ljava/lang/String;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 948
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public t()Z
    .locals 2

    .line 952
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lbmt;->c(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public u()I
    .locals 1

    .line 956
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->s()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 960
    :cond_0
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->getPlayState()I

    move-result v0

    return v0
.end method

.method public v()I
    .locals 1

    .line 980
    iget v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->q:I

    return v0
.end method
