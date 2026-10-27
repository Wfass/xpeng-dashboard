.class public Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "ProgramPlayListPresenter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "Lcom/xiaopeng/musicradio/program/player/view/a;",
        ">;"
    }
.end annotation


# static fields
.field private static i:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private e:I

.field private f:I

.field private g:J

.field private h:J

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private l:Lcom/lzy/okgo/adapter/Call;

.field private m:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 47
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    const-string v0, "reading_album_"

    .line 52
    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b:Ljava/lang/String;

    const/4 v0, 0x0

    .line 53
    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    const/4 v0, 0x1

    .line 55
    iput v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    const/4 v0, -0x1

    .line 56
    iput v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->e:I

    .line 57
    iput v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->f:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->j:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->k:Ljava/util/List;

    const/16 v0, 0x14

    .line 68
    iput v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->n:I

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->f:I

    return p1
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;)Ljava/lang/String;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    return p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->e:I

    return p1
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->f:I

    return p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    return p1
.end method

.method private c(Z)V
    .locals 0

    .line 103
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->n()V

    .line 104
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d(Z)V

    return-void
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;)I
    .locals 0

    .line 47
    iget p0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->e:I

    return p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;I)I
    .locals 0

    .line 47
    iput p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->n:I

    return p1
.end method

.method private d(Z)V
    .locals 8

    .line 108
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->m:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->m:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramPlayListPresente"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->m:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    if-eqz v0, :cond_a

    .line 111
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->B()Last;

    move-result-object v0

    .line 112
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c()Z

    move-result v2

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_1

    .line 113
    instance-of v2, v0, Lbms;

    if-eqz v2, :cond_0

    .line 114
    move-object v2, v0

    check-cast v2, Lbms;

    invoke-virtual {v2}, Lbms;->J()J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/xiaopeng/musicradio/utils/aj;->a(J)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b:Ljava/lang/String;

    .line 115
    invoke-virtual {v2}, Lbms;->J()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->g:J

    .line 116
    invoke-virtual {v2}, Lbms;->K()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->h:J

    .line 117
    invoke-virtual {v2}, Lbms;->i()I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->e:I

    .line 118
    invoke-virtual {v2}, Lbms;->j()I

    move-result v3

    iput v3, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->f:I

    .line 119
    invoke-virtual {v2}, Lbms;->h()I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    .line 120
    invoke-interface {v0}, Last;->k()I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->n:I

    goto :goto_0

    .line 122
    :cond_0
    invoke-static {v3, v4}, Lcom/xiaopeng/musicradio/utils/aj;->a(J)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b:Ljava/lang/String;

    .line 123
    iput-wide v3, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->g:J

    .line 124
    iput-wide v3, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->h:J

    .line 126
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "refreshData: ==== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 127
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->m:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v6}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 128
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reading_album_"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->m:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b:Ljava/lang/String;

    .line 129
    iput-wide v3, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->g:J

    .line 130
    iput-wide v3, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->h:J

    .line 132
    :cond_2
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "update channel id:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->g:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " this  = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v0, :cond_b

    .line 134
    invoke-interface {v0}, Last;->y()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    .line 135
    invoke-interface {v0}, Last;->h()I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    .line 136
    invoke-interface {v0}, Last;->k()I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->n:I

    .line 137
    invoke-interface {v0}, Last;->i()I

    move-result v2

    iput v2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->e:I

    .line 138
    invoke-interface {v0}, Last;->j()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->f:I

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b:Ljava/lang/String;

    if-eqz v0, :cond_3

    const-string v2, "headspeech"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "timeDesc"

    .line 141
    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v0, "timeAsc"

    .line 143
    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    .line 146
    :cond_4
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "refreshData: ========= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " sort = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " totalPage = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " totalCount = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 148
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/view/a;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/program/player/view/a;->onUpdateSort(Ljava/lang/String;)V

    .line 151
    :cond_5
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->l()Ljava/util/List;

    move-result-object v0

    .line 152
    new-instance v1, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;-><init>()V

    .line 153
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v0, :cond_6

    .line 154
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_6

    .line 155
    new-instance v3, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    invoke-direct {v3}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;-><init>()V

    .line 156
    invoke-virtual {v3, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->setList(Ljava/util/List;)V

    .line 157
    invoke-virtual {v1, v3}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->setData(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;)V

    .line 158
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 159
    new-instance v4, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    invoke-direct {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;-><init>()V

    .line 160
    new-instance v5, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;

    invoke-direct {v5}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;-><init>()V

    .line 161
    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setArtist(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;)V

    .line 163
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setAlbumId(J)V

    .line 164
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v4, v6}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setId(I)V

    .line 165
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setTitle(Ljava/lang/String;)V

    .line 166
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getSmallLogo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setSmallLogo(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getMediumLogo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setMediumLogo(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getLargeLogo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setLargeLogo(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getArtistId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;->setId(J)V

    .line 170
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getArtistName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;->setName(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getListenUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setListenUrl(Ljava/lang/String;)V

    .line 172
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getDuration()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setDuration(I)V

    .line 173
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getUpdateTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setUpdateTime(J)V

    .line 174
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setAlbumId(J)V

    .line 175
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOrderNum()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setOrderNum(I)V

    .line 176
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPaymentType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setPaymentType(I)V

    .line 177
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->isAuthorized()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setAuthorized(Z)V

    .line 178
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getCreateTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setCreateTime(J)V

    .line 180
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 184
    :cond_6
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v0, :cond_7

    move v0, v2

    goto :goto_4

    :cond_7
    move v0, v3

    .line 185
    :goto_4
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_9

    if-eqz v0, :cond_9

    if-eqz p1, :cond_8

    .line 187
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/player/view/a;->clearList()V

    .line 189
    :cond_8
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/view/a;

    iget v4, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    iget v5, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->e:I

    invoke-interface {p1, v1, v4, v5}, Lcom/xiaopeng/musicradio/program/player/view/a;->onUpdateTracks(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;II)V

    :cond_9
    xor-int/lit8 p1, v0, 0x1

    .line 192
    invoke-virtual {p0, p1, v3}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a(ZZ)V

    goto :goto_5

    .line 195
    :cond_a
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_b

    .line 196
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/player/view/a;->onNone()V

    :cond_b
    :goto_5
    return-void
.end method

.method private n()V
    .locals 2

    .line 202
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "refreshType: listSign = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v1

    invoke-virtual {v1}, Lbmt;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramPlayListPresente"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 205
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/view/a;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/program/player/view/a;->onUpateType(Z)V

    goto :goto_0

    .line 207
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/view/a;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/program/player/view/a;->onUpateType(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method private o()I
    .locals 1

    .line 356
    iget v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->n:I

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x14

    :goto_0
    return v0
.end method

.method private p()V
    .locals 1

    .line 489
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->l:Lcom/lzy/okgo/adapter/Call;

    if-eqz v0, :cond_0

    .line 490
    invoke-interface {v0}, Lcom/lzy/okgo/adapter/Call;->cancel()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 12

    .line 424
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    const-string v1, "timeAsc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "~"

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 425
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 426
    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 427
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 428
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

    .line 430
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->j:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    add-int/2addr p1, v3

    return p1

    .line 434
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 435
    invoke-virtual {v4, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 436
    aget-object v6, v5, v1

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 437
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

    .line 439
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->k:Ljava/util/List;

    invoke-interface {p1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    goto :goto_0

    :cond_3
    return v3
.end method

.method public a(Ljava/lang/String;)V
    .locals 4

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTracksSort: old = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " new = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramPlayListPresente"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 251
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    .line 252
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/view/a;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/player/view/a;->onUpdateSort(Ljava/lang/String;)V

    .line 255
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->m:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    if-eqz p1, :cond_2

    .line 257
    invoke-static {}, Lbmq;->a()Lbmq;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->m:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;-><init>(JLjava/lang/String;)V

    invoke-virtual {p1, v0}, Lbmq;->a(Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;)V

    :cond_2
    const/4 p1, 0x1

    .line 260
    iput p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    .line 261
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public a(Ljava/util/List;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;I)V"
        }
    .end annotation

    .line 218
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "abc====="

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v1, "ProgramPlayListPresente"

    const-string v2, "playHeadSpeech: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 219
    new-instance v0, Lbms$a;

    invoke-direct {v0}, Lbms$a;-><init>()V

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->g:J

    .line 220
    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/utils/aj;->a(J)Lcom/xiaopeng/musicradio/bean/ListSignBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->toJson()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbms$a;->a(Ljava/lang/String;)Lbms$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 221
    invoke-virtual {v0, v1}, Lbms$a;->a(Z)Lbms$a;

    move-result-object v0

    const/16 v1, 0xa

    .line 222
    invoke-virtual {v0, v1}, Lbms$a;->b(I)Lbms$a;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    .line 223
    invoke-virtual {v0, v1}, Lbms$a;->a(I)Lbms$a;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->e:I

    .line 224
    invoke-virtual {v0, v1}, Lbms$a;->d(I)Lbms$a;

    move-result-object v0

    .line 225
    invoke-virtual {v0}, Lbms$a;->a()Lbms;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 227
    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/bc;->a(Lass;)V

    goto :goto_0

    .line 229
    :cond_0
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 230
    new-instance v2, Lbms$a;

    invoke-direct {v2}, Lbms$a;-><init>()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reading_album_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lbms$a;->a(Ljava/lang/String;)Lbms$a;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 232
    invoke-virtual {v1, v2}, Lbms$a;->a(Ljava/util/List;)Lbms$a;

    move-result-object p1

    const/4 v1, 0x0

    .line 233
    invoke-virtual {p1, v1}, Lbms$a;->a(Z)Lbms$a;

    move-result-object p1

    .line 234
    invoke-virtual {p1, p2}, Lbms$a;->c(I)Lbms$a;

    move-result-object p1

    iget p2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    .line 235
    invoke-virtual {p1, p2}, Lbms$a;->a(I)Lbms$a;

    move-result-object p1

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->g:J

    .line 236
    invoke-virtual {p1, v1, v2}, Lbms$a;->a(J)Lbms$a;

    move-result-object p1

    iget p2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->e:I

    .line 237
    invoke-virtual {p1, p2}, Lbms$a;->d(I)Lbms$a;

    move-result-object p1

    iget-wide v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->h:J

    .line 238
    invoke-virtual {p1, v1, v2}, Lbms$a;->b(J)Lbms$a;

    move-result-object p1

    .line 239
    invoke-virtual {p1}, Lbms$a;->a()Lbms;

    move-result-object p1

    .line 240
    invoke-virtual {p1, v0}, Lbms;->a(Lass;)V

    .line 241
    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bc;->a(Lass;)V

    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 286
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a(ZZ)V

    return-void
.end method

.method public a(ZZ)V
    .locals 10

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->m:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    const-string v1, "ProgramPlayListPresente"

    if-nez v0, :cond_0

    const-string p1, "getAlbumTracks: mPlayBean is null "

    .line 291
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 294
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/player/view/a;->onTrackUpdating()V

    .line 298
    :cond_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->p()V

    .line 300
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getAlbumTracks: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->m:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v2

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " page = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sort = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " pageSize = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->o()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v2

    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->m:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v3

    iget v5, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->o()I

    move-result v6

    iget-object v7, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    new-instance v8, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;

    invoke-direct {v8, p0, p2}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$1;-><init>(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;Z)V

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lbmv;->a(JIILjava/lang/String;Lbkv;Ljava/lang/String;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->l:Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public b(I)V
    .locals 1

    .line 553
    iput p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    .line 554
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setCurPage: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ProgramPlayListPresente"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 4

    .line 265
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 268
    :cond_0
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    .line 269
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 270
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/view/a;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/xiaopeng/musicradio/program/player/view/a;->onUpdateSort(Ljava/lang/String;)V

    .line 273
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->m:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    if-eqz p1, :cond_2

    .line 274
    invoke-static {}, Lbmq;->a()Lbmq;

    move-result-object p1

    new-instance v0, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->m:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;-><init>(JLjava/lang/String;)V

    invoke-virtual {p1, v0}, Lbmq;->a(Lcom/xiaopeng/musicradio/bean/db/ReadingInfo;)V

    :cond_2
    const/4 p1, 0x1

    .line 277
    iput p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    .line 278
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a(Z)V

    return-void
.end method

.method public b(Ljava/util/List;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;I)V"
        }
    .end annotation

    .line 360
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object v0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    if-eqz v0, :cond_1

    .line 361
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v3

    cmp-long v0, v1, v3

    if-nez v0, :cond_1

    .line 362
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->getPlayState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 363
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->play()V

    .line 365
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->e(Ljava/util/List;I)V

    goto :goto_0

    .line 367
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->m:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/az;->b(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v8

    .line 368
    new-instance v0, Lbms;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b:Ljava/lang/String;

    iget v3, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    iget v4, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->e:I

    iget v5, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->f:I

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->o()I

    move-result v6

    iget-object v7, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v1 .. v11}, Lbms;-><init>(Ljava/lang/String;IIIILjava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;ZLjava/util/List;I)V

    .line 370
    iget-wide p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->g:J

    invoke-virtual {v0, p1, p2}, Lbms;->a(J)V

    .line 371
    iget-wide p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->h:J

    invoke-virtual {v0, p1, p2}, Lbms;->b(J)V

    .line 372
    iget p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->e:I

    invoke-virtual {v0, p1}, Lbms;->b(I)V

    .line 373
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "play setTotalPage:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->e:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " listSign = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "ProgramPlayListPresente"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 374
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbmt;->a(Lass;)V

    :goto_0
    return-void
.end method

.method public b(Z)V
    .locals 10

    .line 498
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 499
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/program/player/view/a;->onTrackUpdating()V

    :cond_0
    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 502
    iget v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    add-int/2addr v1, v0

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    sub-int/2addr v1, v0

    :goto_0
    if-ge v1, v0, :cond_2

    move v5, v0

    goto :goto_1

    :cond_2
    move v5, v1

    .line 506
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->p()V

    .line 508
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTracksNextOrPrePage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " next = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " sort = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " totalPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " totalCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramPlayListPresente"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    invoke-static {}, Lbmv;->a()Lbmv;

    move-result-object v2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->m:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v3

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->o()I

    move-result v6

    iget-object v7, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    new-instance v8, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;

    invoke-direct {v8, p0, v5, p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter$2;-><init>(Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;IZ)V

    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lbmv;->a(JIILjava/lang/String;Lbkv;Ljava/lang/String;)Lcom/lzy/okgo/adapter/Call;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->l:Lcom/lzy/okgo/adapter/Call;

    return-void
.end method

.method public c()Z
    .locals 2

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "head speech judge:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v1

    invoke-virtual {v1}, Lbmt;->y()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramPlayListPresente"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 214
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->y()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->y()Ljava/lang/String;

    move-result-object v0

    const-string v1, "headspeech"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
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

    .line 379
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 380
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 381
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

.method public d()Ljava/lang/String;
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/util/List;I)Z
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

    .line 392
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p2, v1, :cond_0

    .line 393
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 394
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

.method public dealMusicEvent(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const/4 v0, 0x1

    .line 572
    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "ProgramPlayListPresente"

    const-string v2, "updatePlayState playState = %d"

    invoke-static {v1, v2, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 573
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;->c()I

    move-result p1

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    .line 574
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 575
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 576
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/player/view/a;->onUpdatePlayState()V

    :cond_0
    return-void
.end method

.method public dealReadStatusUpdate(Lasj$aa;)V
    .locals 3
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 610
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 611
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/view/a;

    invoke-virtual {p1}, Lasj$aa;->a()J

    move-result-wide v1

    invoke-virtual {p1}, Lasj$aa;->c()Z

    move-result p1

    invoke-interface {v0, v1, v2, p1}, Lcom/xiaopeng/musicradio/program/player/view/a;->updatePaymentAuthorized(JZ)V

    :cond_0
    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 3

    .line 414
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->f()Ljava/util/List;

    move-result-object v0

    .line 415
    iget v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    add-int/lit8 v1, v1, -0x1

    if-eqz v0, :cond_0

    .line 416
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v1, :cond_0

    if-ltz v1, :cond_0

    .line 417
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method

.method public e(Ljava/util/List;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/program/ProgramBean;",
            ">;I)V"
        }
    .end annotation

    .line 405
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->m:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/az;->b(Lcom/xiaopeng/musicradio/bean/program/ProgramBean;)Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v8

    .line 406
    new-instance v0, Lbms;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->b:Ljava/lang/String;

    iget v3, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    iget v4, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->e:I

    iget v5, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->f:I

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->o()I

    move-result v6

    iget-object v7, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v1, v0

    move-object v10, p1

    move v11, p2

    invoke-direct/range {v1 .. v11}, Lbms;-><init>(Ljava/lang/String;IIIILjava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;ZLjava/util/List;I)V

    .line 408
    iget-wide p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->g:J

    invoke-virtual {v0, p1, p2}, Lbms;->a(J)V

    .line 409
    iget-wide p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->h:J

    invoke-virtual {v0, p1, p2}, Lbms;->b(J)V

    .line 410
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1, v0}, Lbmt;->c(Lass;)V

    return-void
.end method

.method public f()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 447
    iget v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v0, "ProgramPlayListPresente"

    const-string v1, "getPages: empty====="

    .line 448
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 452
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->j:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "~"

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    move v0, v2

    .line 453
    :goto_0
    iget v3, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->f:I

    if-gt v0, v3, :cond_2

    .line 454
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->o()I

    move-result v3

    add-int/2addr v3, v0

    sub-int/2addr v3, v2

    iget v4, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->f:I

    if-le v3, v4, :cond_1

    .line 455
    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->j:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->f:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 458
    :cond_1
    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->j:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->o()I

    move-result v5

    add-int/2addr v5, v0

    sub-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->o()I

    move-result v3

    add-int/2addr v0, v3

    goto :goto_0

    .line 464
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 465
    iget v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->f:I

    :goto_2
    if-lt v0, v2, :cond_4

    .line 466
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->o()I

    move-result v3

    sub-int v3, v0, v3

    add-int/2addr v3, v2

    if-ge v3, v2, :cond_3

    .line 467
    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->k:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 470
    :cond_3
    iget-object v3, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->k:Ljava/util/List;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->o()I

    move-result v5

    sub-int v5, v0, v5

    add-int/2addr v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->o()I

    move-result v3

    sub-int/2addr v0, v3

    goto :goto_2

    .line 476
    :cond_4
    :goto_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c:Ljava/lang/String;

    const-string v1, "timeAsc"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 477
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->j:Ljava/util/List;

    return-object v0

    .line 479
    :cond_5
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->k:Ljava/util/List;

    return-object v0
.end method

.method public g()Z
    .locals 2

    .line 537
    iget v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    iget v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->e:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h()Z
    .locals 2

    .line 541
    iget v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public i()I
    .locals 1

    .line 545
    iget v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->e:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 549
    iget v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    return v0
.end method

.method public k()Z
    .locals 3

    .line 558
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->getPlayState()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 559
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->getPlayState()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public l()V
    .locals 1

    .line 563
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->play()V

    return-void
.end method

.method public m()V
    .locals 1

    .line 567
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object v0

    invoke-virtual {v0}, Lbmt;->pause()V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 2

    .line 73
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 74
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 76
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c(Z)V

    .line 77
    sget-object v0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->i:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 78
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->c()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->c()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 79
    :cond_0
    invoke-static {}, Lbea;->a()Lbea;

    move-result-object v0

    invoke-virtual {v0}, Lbea;->c()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->i:Ljava/lang/String;

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 81
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/player/view/a;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/program/player/view/a;->clearList()V

    .line 83
    :cond_1
    invoke-virtual {p0, p1, p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a(ZZ)V

    :cond_2
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    .line 597
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    .line 598
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->p()V

    return-void
.end method

.method public onListChange(Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;)V
    .locals 5
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "ProgramPlayListPresente"

    const-string v1, "onListChange: "

    .line 583
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;->a()I

    move-result p1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 585
    invoke-static {}, Lbmt;->k()Lbmt;

    move-result-object p1

    invoke-virtual {p1}, Lbmt;->v()Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 586
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->m:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-eqz v1, :cond_2

    :cond_0
    if-eqz p1, :cond_1

    .line 587
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->m:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    if-eqz v1, :cond_1

    .line 588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onListChange: pb = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " play = "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->m:Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p1, 0x0

    .line 590
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->c(Z)V

    :cond_2
    return-void
.end method

.method public onNextPage(Lash$a;)V
    .locals 8
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 626
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNextPage: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lash$a;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cur = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " total = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramPlayListPresente"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 627
    invoke-virtual {p1}, Lash$a;->b()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_1

    .line 628
    invoke-virtual {p1}, Lash$a;->b()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    .line 629
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 630
    new-instance v0, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;-><init>()V

    .line 631
    new-instance v1, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;

    invoke-direct {v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;-><init>()V

    .line 632
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 633
    invoke-virtual {p1}, Lash$a;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;

    .line 634
    new-instance v4, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;

    invoke-direct {v4}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;-><init>()V

    .line 635
    new-instance v5, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;

    invoke-direct {v5}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;-><init>()V

    .line 636
    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setArtist(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;)V

    .line 638
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setAlbumId(J)V

    .line 639
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTrackId()J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {v4, v6}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setId(I)V

    .line 640
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setTitle(Ljava/lang/String;)V

    .line 641
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getSmallLogo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setSmallLogo(Ljava/lang/String;)V

    .line 642
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getMediumLogo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setMediumLogo(Ljava/lang/String;)V

    .line 643
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getLargeLogo()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setLargeLogo(Ljava/lang/String;)V

    .line 644
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getArtistId()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;->setId(J)V

    .line 645
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getArtistName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean$ArtistBean;->setName(Ljava/lang/String;)V

    .line 646
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getListenUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setListenUrl(Ljava/lang/String;)V

    .line 647
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getDuration()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setDuration(I)V

    .line 648
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getUpdateTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setUpdateTime(J)V

    .line 649
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getAlbumId()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setAlbumId(J)V

    .line 650
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getOrderNum()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setOrderNum(I)V

    .line 651
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getPaymentType()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setPaymentType(I)V

    .line 652
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->isAuthorized()Z

    move-result v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setAuthorized(Z)V

    .line 653
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/program/ProgramBean;->getCreateTime()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean$ListBean;->setCreateTime(J)V

    .line 655
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 657
    :cond_0
    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;->setList(Ljava/util/List;)V

    .line 658
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;->setData(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean$DataBean;)V

    .line 659
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/view/a;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->d:I

    iget v2, p0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->e:I

    invoke-interface {p1, v0, v1, v2}, Lcom/xiaopeng/musicradio/program/player/view/a;->onUpdateTracks(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;II)V

    :cond_1
    return-void
.end method

.method public onReadingBinded(Lasj$ab;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 617
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 618
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/player/view/a;->clearList()V

    :cond_0
    const-string p1, "ProgramPlayListPresente"

    const-string v0, "onReadingBinded: ==== "

    .line 620
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x1

    .line 621
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a(Z)V

    return-void
.end method

.method public onSpeechShow(Lcom/xiaopeng/musicradio/event/common/CommonEvent$aw;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 603
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramPlayListPresenter;->a()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/player/view/a;

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/program/player/view/a;->onNotifyList()V

    :cond_0
    return-void
.end method
