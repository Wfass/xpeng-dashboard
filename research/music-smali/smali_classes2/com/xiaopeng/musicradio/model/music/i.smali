.class public Lcom/xiaopeng/musicradio/model/music/i;
.super Ljava/lang/Object;
.source "MusicControlModel.java"

# interfaces
.implements Laqt;
.implements Lcom/xiaopeng/musicradio/common/f;
.implements Lcom/xiaopeng/musicradio/player/h$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/model/music/i$a;
    }
.end annotation


# instance fields
.field a:Lask;

.field c:I

.field private d:Z

.field private e:Ljava/lang/Boolean;

.field private f:I

.field private g:I

.field private h:Z

.field private i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

.field private j:Lbil;

.field private k:Lcom/xiaopeng/musicradio/model/music/e;

.field private l:Lbcq;

.field private m:Lbcn;

.field private n:Lcom/xiaopeng/musicradio/model/music/m;

.field private o:Lcom/xiaopeng/musicradio/model/music/b;

.field private p:Lcom/xiaopeng/musicradio/model/music/j;

.field private q:Ljava/lang/String;

.field private r:Z

.field private s:Lask$a;

.field private t:J


# direct methods
.method private constructor <init>()V
    .locals 3

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->d:Z

    const/4 v1, 0x1

    .line 90
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/musicradio/model/music/i;->e:Ljava/lang/Boolean;

    .line 91
    iput v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->f:I

    .line 92
    iput v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->g:I

    .line 94
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->h:Z

    const/4 v1, -0x1

    .line 95
    iput v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    .line 1236
    new-instance v1, Lcom/xiaopeng/musicradio/model/music/i$5;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/model/music/i$5;-><init>(Lcom/xiaopeng/musicradio/model/music/i;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->s:Lask$a;

    const-wide/16 v1, 0x0

    .line 1439
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->t:J

    .line 116
    new-instance v1, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-direct {v1, v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;-><init>(I)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->setPlayListener(Lcom/xiaopeng/musicradio/player/h$a;)V

    .line 118
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/i;->N()V

    .line 119
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->a:Lask;

    .line 120
    new-instance v0, Lbil;

    invoke-direct {v0, p0}, Lbil;-><init>(Laqt;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->j:Lbil;

    .line 121
    new-instance v0, Lcom/xiaopeng/musicradio/model/music/j;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/model/music/j;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->p:Lcom/xiaopeng/musicradio/model/music/j;

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/model/music/i$1;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/i;-><init>()V

    return-void
.end method

.method private N()V
    .locals 2

    const-string v0, "music_data_source"

    const/4 v1, 0x1

    .line 125
    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/bh;->b(Ljava/lang/String;I)I

    move-result v0

    .line 126
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->h(I)V

    return-void
.end method

.method private O()V
    .locals 3

    .line 142
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "switchDefaultData"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v1, "MusicControlModel"

    const-string v2, "switchDefaultData: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 143
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->k:Lcom/xiaopeng/musicradio/model/music/e;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/xiaopeng/musicradio/model/music/e;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/model/music/e;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->k:Lcom/xiaopeng/musicradio/model/music/e;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->k:Lcom/xiaopeng/musicradio/model/music/e;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    const/4 v0, 0x1

    const-string v1, "music_data_source"

    .line 147
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    .line 148
    new-instance v0, Lasj$c;

    invoke-direct {v0}, Lasj$c;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private P()V
    .locals 3

    .line 152
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "switchNeteaseData"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v1, "MusicControlModel"

    const-string v2, "switchNeteaseData: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->l:Lbcq;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Lbcq;

    invoke-direct {v0}, Lbcq;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->l:Lbcq;

    .line 156
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->l:Lbcq;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    const/4 v0, 0x2

    const-string v1, "music_data_source"

    .line 157
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    .line 158
    new-instance v0, Lasj$c;

    invoke-direct {v0}, Lasj$c;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private Q()V
    .locals 3

    .line 162
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "switchKugouData"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v1, "MusicControlModel"

    const-string v2, "switchKugouData: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->m:Lbcn;

    if-nez v0, :cond_0

    .line 164
    new-instance v0, Lbcn;

    invoke-direct {v0}, Lbcn;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->m:Lbcn;

    .line 166
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->m:Lbcn;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    const/4 v0, 0x4

    const-string v1, "music_data_source"

    .line 167
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    .line 168
    new-instance v0, Lasj$c;

    invoke-direct {v0}, Lasj$c;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private R()V
    .locals 3

    .line 172
    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "switchUsbData"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v1, "MusicControlModel"

    const-string v2, "switchUsbData: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->n:Lcom/xiaopeng/musicradio/model/music/m;

    if-nez v0, :cond_0

    .line 174
    new-instance v0, Lcom/xiaopeng/musicradio/model/music/m;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/model/music/m;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->n:Lcom/xiaopeng/musicradio/model/music/m;

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->n:Lcom/xiaopeng/musicradio/model/music/m;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    const/4 v0, -0x1

    const-string v1, "music_data_source"

    .line 177
    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    .line 178
    new-instance v0, Lasj$c;

    invoke-direct {v0}, Lasj$c;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private S()V
    .locals 2

    const-string v0, "MusicControlModel"

    const-string v1, "netRePlay"

    .line 666
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 667
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 668
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->g()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 669
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->g()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->f:I

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/model/music/i;->a(II)V

    :cond_0
    return-void
.end method

.method private T()V
    .locals 2

    .line 1275
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    return-void

    .line 1278
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->j()I

    move-result v0

    if-eq v0, v1, :cond_1

    .line 1283
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->v()V

    goto :goto_0

    .line 1280
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->g()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/model/music/i;->a(II)V

    :goto_0
    return-void
.end method

.method private U()V
    .locals 1

    .line 1532
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->j(I)Z

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/music/i;)Lcom/xiaopeng/musicradio/model/music/b;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/music/i;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->q:Ljava/lang/String;

    return-object p1
.end method

.method private a(IIZ)V
    .locals 1

    const/4 v0, 0x0

    .line 1009
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/musicradio/model/music/i;->a(IIZZ)V

    return-void
.end method

.method private a(IIZZ)V
    .locals 8

    .line 1013
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "prepare:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " second="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1014
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 1015
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v2

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/an;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    if-nez p2, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->reset()V

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 1020
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->g(I)V

    return-void

    .line 1023
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/a;->a(I)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    if-nez v3, :cond_2

    .line 1025
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->a()V

    .line 1026
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "prepare: null index = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1029
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "prepare: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->toNoUrlString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " playWhenReady = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " igon = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result p1

    invoke-virtual {v3, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setAccountType(I)V

    .line 1031
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcom/xiaopeng/musicradio/model/music/a;->d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    const/4 p1, 0x0

    .line 1032
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->d(Z)V

    .line 1033
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->p:Lcom/xiaopeng/musicradio/model/music/j;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/j;->a()V

    .line 1034
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getData()Ljava/lang/String;

    move-result-object v0

    .line 1036
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 1039
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->p:Lcom/xiaopeng/musicradio/model/music/j;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/j;->a(Z)V

    :goto_0
    move p1, v4

    goto/16 :goto_2

    .line 1041
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/i;->p:Lcom/xiaopeng/musicradio/model/music/j;

    invoke-virtual {v2, v4}, Lcom/xiaopeng/musicradio/model/music/j;->a(Z)V

    .line 1043
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1044
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File   localData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->f(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    .line 1055
    :cond_4
    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    const-string v1, "local_usb_prefix_"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    .line 1058
    :cond_5
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1, v4, p3}, Lcom/xiaopeng/musicradio/model/music/i;->a(Ljava/lang/String;ZZZ)V

    return-void

    .line 1046
    :cond_6
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "localData"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1047
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->seekTo(I)V

    .line 1048
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->setData(Landroid/os/Bundle;)V

    .line 1049
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 1050
    invoke-direct {p0, v0, p1, v4, p3}, Lcom/xiaopeng/musicradio/model/music/i;->a(Ljava/lang/String;ZZZ)V

    goto :goto_2

    .line 1052
    :cond_7
    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1, v4, p3}, Lcom/xiaopeng/musicradio/model/music/i;->a(Ljava/lang/String;ZZZ)V

    :goto_2
    if-eqz p3, :cond_8

    .line 1064
    invoke-virtual {p0, v4}, Lcom/xiaopeng/musicradio/model/music/i;->g(I)V

    :cond_8
    if-eqz p1, :cond_9

    .line 1067
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v5

    move-object v2, p0

    move v4, p2

    move v6, p3

    move v7, p4

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ILjava/lang/String;ZZ)V

    :cond_9
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/music/i;Ljava/lang/String;ZZZ)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/model/music/i;->a(Ljava/lang/String;ZZZ)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/music/i;Z)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->d(Z)V

    return-void
.end method

.method private a(Ljava/lang/String;ZZZ)V
    .locals 1

    .line 1073
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    invoke-virtual {v0}, Lask;->g()V

    .line 1074
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->prepareData(Ljava/lang/String;ZZZ)V

    .line 1076
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "prepareData: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " accountType = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "MusicControlModel"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result p2

    const/4 p4, 0x2

    if-ne p2, p4, :cond_1

    const/4 p2, 0x1

    .line 1079
    new-array p4, p2, [Ljava/lang/Object;

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, p4, p3

    const-string v0, "quality=%d"

    invoke-static {v0, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    .line 1080
    invoke-virtual {p1, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1081
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/model/music/i;->r:Z

    goto :goto_0

    .line 1083
    :cond_0
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/model/music/i;->r:Z

    goto :goto_0

    .line 1086
    :cond_1
    iput-boolean p3, p0, Lcom/xiaopeng/musicradio/model/music/i;->r:Z

    :goto_0
    return-void
.end method

.method private a(ZLcom/xiaopeng/musicradio/bean/db/MusicInfo;ZZZZ)V
    .locals 3

    .line 613
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play:useNormalProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "playWhenReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",switchProvider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",musicInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 615
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-nez v0, :cond_0

    .line 616
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 618
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v0

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v2

    if-ne v0, v2, :cond_0

    if-nez p6, :cond_0

    const-string p1, "play: same info====="

    .line 621
    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 624
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 625
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "play: igon ===== "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {v1, p6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->isNotPlayable()Z

    move-result p6

    if-eqz p6, :cond_1

    return-void

    .line 629
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->r()V

    if-eqz p4, :cond_3

    .line 630
    iget-object p4, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {p4}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p4

    if-eqz p4, :cond_3

    if-eqz p1, :cond_2

    .line 632
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->o()V

    goto :goto_0

    .line 634
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->n()V

    :cond_3
    :goto_0
    if-eqz p5, :cond_4

    .line 637
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 638
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/model/music/a;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_1

    .line 640
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/model/music/a;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    .line 641
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/a;->g()I

    move-result p1

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/model/music/i;->a(IIZ)V

    :goto_1
    return-void
.end method

.method private a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ILjava/lang/String;Z)Z
    .locals 9

    .line 1678
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaopeng/musicradio/model/music/i;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 1679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playNet: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " cacheUrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1681
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0, p3}, Lcom/xiaopeng/musicradio/model/music/i;->d(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1682
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQualitySize(I)I

    move-result v8

    .line 1683
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v3

    .line 1684
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getSong()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getAlbumName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 1683
    invoke-static/range {v3 .. v8}, Lbkx;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "playNet: playCache"

    .line 1686
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1687
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->setData(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 1688
    invoke-direct {p0, p3, v2, p1, p4}, Lcom/xiaopeng/musicradio/model/music/i;->a(Ljava/lang/String;ZZZ)V

    .line 1689
    iget-object p3, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {p3, p2}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->seekTo(I)V

    return p1

    :cond_0
    return v2
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/model/music/i;)Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/model/music/i;Z)V
    .locals 0

    .line 84
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->c(Z)V

    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/model/music/i;)Lbcq;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/music/i;->l:Lbcq;

    return-object p0
.end method

.method private c(Z)V
    .locals 2

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rePlay,resumeVolume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MusicControlModel"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 683
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 684
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/a;->g()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    .line 685
    iget p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 688
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->isIdle()Z

    move-result p1

    if-nez p1, :cond_2

    .line 689
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getPlaybackState()I

    move-result p1

    const/4 v0, 0x4

    const/4 v1, 0x1

    if-ne p1, v0, :cond_1

    .line 690
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/model/music/i;->g(I)V

    .line 691
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->v()V

    goto :goto_0

    .line 692
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 693
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/model/music/i;->g(I)V

    .line 694
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->start()V

    .line 695
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->H()V

    goto :goto_0

    .line 698
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/a;->g()I

    move-result p1

    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->f:I

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/model/music/i;->a(II)V

    .line 699
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->H()V

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/model/music/i;)Lcom/xiaopeng/musicradio/model/music/e;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/music/i;->k:Lcom/xiaopeng/musicradio/model/music/e;

    return-object p0
.end method

.method private d(Z)V
    .locals 2

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setNetAutoReplay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->d:Z

    .line 1357
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->d:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 1358
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->f(I)V

    :cond_0
    return-void
.end method

.method static synthetic e(Lcom/xiaopeng/musicradio/model/music/i;)Lbcn;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/music/i;->m:Lbcn;

    return-object p0
.end method

.method public static e(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1670
    invoke-static {}, Lbal;->a()Lbal;

    move-result-object v0

    invoke-virtual {v0, p0}, Lbal;->a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 1671
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1672
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/bean/db/MusicUrlInfo;->getUrl()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method static synthetic f(Lcom/xiaopeng/musicradio/model/music/i;)Lcom/xiaopeng/musicradio/model/music/m;
    .locals 0

    .line 84
    iget-object p0, p0, Lcom/xiaopeng/musicradio/model/music/i;->n:Lcom/xiaopeng/musicradio/model/music/m;

    return-object p0
.end method

.method private f(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "file:///android_asset"

    .line 1091
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method static synthetic g(Lcom/xiaopeng/musicradio/model/music/i;)I
    .locals 2

    .line 84
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->g:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->g:I

    return v0
.end method

.method static synthetic h(Lcom/xiaopeng/musicradio/model/music/i;)I
    .locals 0

    .line 84
    iget p0, p0, Lcom/xiaopeng/musicradio/model/music/i;->g:I

    return p0
.end method

.method private h(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 131
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/i;->P()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 133
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/i;->R()V

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    .line 135
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/i;->Q()V

    goto :goto_0

    .line 137
    :cond_2
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/i;->O()V

    :goto_0
    return-void
.end method

.method private i(I)V
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    .line 768
    iget p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 769
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bn;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_1
    return-void
.end method

.method static synthetic i(Lcom/xiaopeng/musicradio/model/music/i;)Z
    .locals 0

    .line 84
    iget-boolean p0, p0, Lcom/xiaopeng/musicradio/model/music/i;->h:Z

    return p0
.end method

.method private j(I)Z
    .locals 1

    .line 1536
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->c()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 1537
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->l()V

    .line 1538
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->h(I)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public static k()Lcom/xiaopeng/musicradio/model/music/i;
    .locals 1

    .line 112
    sget-object v0, Lcom/xiaopeng/musicradio/model/music/i$a;->a:Lcom/xiaopeng/musicradio/model/music/i;

    return-object v0
.end method

.method private k(I)V
    .locals 2

    .line 1729
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rePlayWhenChangeQuality: ========== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->F()Last;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1731
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->F()Last;

    move-result-object v0

    const/4 v1, -0x1

    invoke-interface {v0, v1}, Last;->c(I)V

    .line 1733
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->j:Lbil;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lbil;->a(ILcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    return-void
.end method


# virtual methods
.method public A()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 1

    .line 977
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->i()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    return-object v0
.end method

.method public B()I
    .locals 1

    .line 982
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->g()I

    move-result v0

    return v0
.end method

.method protected C()Z
    .locals 1

    .line 1363
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    invoke-virtual {v0}, Lask;->e()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->d:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public D()Ljava/lang/String;
    .locals 1

    .line 1368
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->q()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public E()V
    .locals 0

    return-void
.end method

.method public F()Last;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Last<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 1572
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->g()Lcom/xiaopeng/musicradio/model/music/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/k;->m_()Lass;

    move-result-object v0

    return-object v0
.end method

.method public G()V
    .locals 5

    .line 1738
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->g()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 1739
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->g()I

    move-result v0

    iget v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->f:I

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v2, v3, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result v2

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    invoke-direct {p0, v0, v1, v2, v4}, Lcom/xiaopeng/musicradio/model/music/i;->a(IIZZ)V

    .line 1740
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->H()V

    :cond_2
    return-void
.end method

.method public H()V
    .locals 2

    .line 1760
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public I()Z
    .locals 1

    .line 1764
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->e()Z

    move-result v0

    return v0
.end method

.method public J()I
    .locals 3

    .line 1773
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 1774
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 1776
    :cond_0
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 1778
    :cond_1
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lbdm;->a(I)Lbeg;

    move-result-object v0

    invoke-interface {v0}, Lbeg;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    :cond_2
    return v1

    .line 1783
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v0

    return v0
.end method

.method public K()V
    .locals 5

    .line 1831
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    const-string v0, "MusicControlModel"

    const-string v1, "precheck play: "

    .line 1832
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1833
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->isNotPlayable()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1837
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-static {v2, v3}, Lcom/xiaopeng/musicradio/utils/ad;->a(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/ListSignBean;

    if-eqz v2, :cond_2

    .line 1839
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getPrefix()Ljava/lang/String;

    move-result-object v3

    const-string v4, "listsign_local_rm_music"

    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/ListSignBean;->getPrefix()Ljava/lang/String;

    move-result-object v2

    const-string v3, "listsign_usb_music"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v1, 0x1

    .line 1843
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->r()V

    if-nez v1, :cond_3

    .line 1844
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/b;->f()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1845
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->H()V

    return-void

    :cond_3
    const-string v1, "can play: "

    .line 1849
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1851
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/model/music/i$8;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/model/music/i$8;-><init>(Lcom/xiaopeng/musicradio/model/music/i;)V

    invoke-virtual {v0, v1}, Lask;->b(Lask$d;)V

    return-void
.end method

.method public L()V
    .locals 1

    .line 1879
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1880
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->t()V

    :cond_0
    return-void
.end method

.method public M()Z
    .locals 1

    .line 1890
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->F()Last;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->F()Last;

    move-result-object v0

    instance-of v0, v0, Lass;

    if-eqz v0, :cond_0

    .line 1891
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->F()Last;

    move-result-object v0

    check-cast v0, Lass;

    invoke-virtual {v0}, Lass;->H()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public a()V
    .locals 2

    .line 760
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    const/4 v1, 0x0

    .line 761
    iput v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->g:I

    .line 763
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->v()V

    .line 764
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->i(I)V

    return-void
.end method

.method public a(F)V
    .locals 0

    return-void
.end method

.method public a(I)V
    .locals 2

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setPlayMode: oldMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " newMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mDefaultDataList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->k:Lcom/xiaopeng/musicradio/model/music/e;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->F()Last;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->F()Last;

    move-result-object v0

    invoke-interface {v0}, Last;->G()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 p1, 0x2

    .line 856
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->k:Lcom/xiaopeng/musicradio/model/music/e;

    if-eqz v0, :cond_1

    .line 857
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/e;->h()Lcom/xiaopeng/musicradio/model/music/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/n;->b(I)V

    .line 858
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->k:Lcom/xiaopeng/musicradio/model/music/e;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/e;->g()Lcom/xiaopeng/musicradio/model/music/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/k;->b(I)V

    .line 860
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->l:Lbcq;

    if-eqz v0, :cond_2

    .line 861
    invoke-virtual {v0}, Lbcq;->h()Lcom/xiaopeng/musicradio/model/music/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/n;->b(I)V

    .line 862
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->l:Lbcq;

    invoke-virtual {v0}, Lbcq;->g()Lcom/xiaopeng/musicradio/model/music/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/k;->b(I)V

    .line 865
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->m:Lbcn;

    if-eqz v0, :cond_3

    .line 866
    invoke-virtual {v0}, Lbcn;->h()Lcom/xiaopeng/musicradio/model/music/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/n;->b(I)V

    .line 867
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->m:Lbcn;

    invoke-virtual {v0}, Lbcn;->g()Lcom/xiaopeng/musicradio/model/music/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/k;->b(I)V

    .line 870
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->n:Lcom/xiaopeng/musicradio/model/music/m;

    if-eqz v0, :cond_4

    .line 871
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/m;->h()Lcom/xiaopeng/musicradio/model/music/n;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/n;->b(I)V

    .line 872
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->n:Lcom/xiaopeng/musicradio/model/music/m;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/m;->g()Lcom/xiaopeng/musicradio/model/music/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/k;->b(I)V

    :cond_4
    return-void
.end method

.method a(II)V
    .locals 1

    const/4 v0, 0x1

    .line 1095
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/model/music/i;->a(IIZ)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayError: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1374
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->getDuration()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->getPosition()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->getDuration()I

    move-result v1

    if-lt v0, v1, :cond_0

    .line 1375
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->v()V

    return-void

    .line 1379
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->j:Lbil;

    invoke-virtual {v0, p1, p2}, Lbil;->a(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    const-string v0, "exception"

    .line 1383
    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->q:Ljava/lang/String;

    const/16 v0, 0xa

    if-le p1, v0, :cond_2

    .line 1385
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->pauseByLogic()V

    .line 1386
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lbub$a;->music_source_err_next_pause:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->b(Ljava/lang/String;)V

    return-void

    :cond_2
    const/4 v0, 0x1

    if-nez p1, :cond_7

    .line 1391
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->pauseByLogic()V

    .line 1392
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/aj;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 1393
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->d(Z)V

    .line 1396
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result p1

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_5

    .line 1397
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p1

    const-class p2, Lbqr;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbqr;

    invoke-interface {p1}, Lbqr;->hasMountedUsbDisk()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    .line 1398
    sget p1, Lbub$a;->usb_play_error:I

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/model/music/i;->a(IZ)V

    goto :goto_0

    .line 1400
    :cond_4
    sget p1, Lbub$a;->no_usb_file_exist:I

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/musicradio/model/music/i;->a(IZ)V

    .line 1401
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->stop()V

    goto :goto_0

    :cond_5
    if-eqz p2, :cond_6

    const-string p1, "/"

    .line 1403
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 1404
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->j:Lbil;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p2

    invoke-virtual {p1, p2}, Lbil;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1405
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/by;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->b(Ljava/lang/String;)V

    .line 1408
    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/a;->l()V

    goto/16 :goto_1

    :cond_7
    const/4 p2, 0x3

    if-ne p1, p2, :cond_9

    .line 1410
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {p1}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lbub$a;->music_source_err_next:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/by;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->b(Ljava/lang/String;)V

    .line 1411
    iget p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->g:I

    .line 1412
    iget p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->g:I

    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/music/a;->e()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p1, p2, :cond_8

    .line 1413
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->pauseByLogic()V

    goto :goto_1

    .line 1415
    :cond_8
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->v()V

    goto :goto_1

    .line 1418
    :cond_9
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p1

    instance-of p1, p1, Lcom/xiaopeng/musicradio/model/music/k;

    if-eqz p1, :cond_a

    .line 1419
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/b;->g()Lcom/xiaopeng/musicradio/model/music/k;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/b;->g()Lcom/xiaopeng/musicradio/model/music/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/k;->m_()Lass;

    move-result-object p1

    if-eqz p1, :cond_a

    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/b;->g()Lcom/xiaopeng/musicradio/model/music/k;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/k;->m_()Lass;

    move-result-object p1

    invoke-virtual {p1}, Lass;->A()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 1420
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->pauseByLogic()V

    return-void

    .line 1424
    :cond_a
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget p2, Lbub$a;->tip_music_play_error_next:I

    invoke-virtual {p1, p2}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->b(Ljava/lang/String;)V

    .line 1425
    iget p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->g:I

    add-int/2addr p1, v0

    iput p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->g:I

    .line 1427
    iget p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->g:I

    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/music/a;->e()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lt p1, p2, :cond_b

    .line 1428
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->pauseByLogic()V

    goto :goto_1

    .line 1430
    :cond_b
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->h:Z

    if-eqz p1, :cond_c

    .line 1431
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->v()V

    goto :goto_1

    .line 1433
    :cond_c
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->u()V

    :goto_1
    return-void
.end method

.method public a(IZ)V
    .locals 1

    .line 1545
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v0, p1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_0

    .line 1547
    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/utils/as;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 1549
    :cond_0
    sget-object p2, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1551
    :goto_0
    new-instance p2, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;

    invoke-direct {p2, p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lass;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lass<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;)V"
        }
    .end annotation

    .line 1488
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    .line 1489
    instance-of v1, p1, Laxz;

    if-eqz v1, :cond_0

    .line 1490
    move-object v0, p1

    check-cast v0, Laxz;

    invoke-virtual {v0}, Laxz;->J()I

    move-result v0

    .line 1492
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lass;I)V

    return-void
.end method

.method public a(Lass;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lass<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;I)V"
        }
    .end annotation

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play: mediaSourcequality : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lass;->F()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1502
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 1503
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1507
    :cond_0
    invoke-virtual {p1}, Lass;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lass;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1508
    invoke-virtual {p1}, Lass;->d()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    invoke-virtual {p1}, Lass;->e()I

    move-result v0

    if-ltz v0, :cond_2

    invoke-virtual {p1}, Lass;->e()I

    move-result v0

    invoke-virtual {p1}, Lass;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1509
    invoke-virtual {p1}, Lass;->d()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1}, Lass;->e()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 1510
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/i;->j:Lbil;

    invoke-virtual {v2, p2}, Lbil;->b(I)Lcom/xiaopeng/musicradio/model/music/g;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/xiaopeng/musicradio/model/music/g;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1511
    invoke-virtual {p1}, Lass;->d()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v1, :cond_2

    .line 1512
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getUnplayableMsg()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1513
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getUnplayableMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->b(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 1519
    :cond_2
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/model/music/i;->j(I)Z

    const/4 p2, 0x0

    .line 1520
    iput p2, p0, Lcom/xiaopeng/musicradio/model/music/i;->g:I

    .line 1521
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->r()V

    .line 1522
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->o()V

    .line 1523
    invoke-static {}, Lbrx;->a()Lbrx;

    move-result-object p2

    invoke-virtual {p2}, Lbrx;->d()V

    .line 1524
    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->reset()V

    .line 1525
    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/music/b;->g()Lcom/xiaopeng/musicradio/model/music/k;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/model/music/k;->a(Lass;)V

    .line 1526
    invoke-virtual {p1}, Lass;->B()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1527
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ao;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ao;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 2

    .line 562
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    const/4 v1, 0x1

    .line 563
    invoke-virtual {p0, p1, v1}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    .line 564
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->i(I)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ILjava/lang/String;ZZ)V
    .locals 7

    .line 1120
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "MusicControlModel"

    if-nez v0, :cond_0

    .line 1122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playNet cache: igon = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/car/a;->a()Lcom/xiaopeng/musicradio/model/car/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/car/a;->h()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1123
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1129
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playNet: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " listsing = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " account = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1131
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getSecondPosition()I

    move-result v2

    invoke-direct {v0, v1, p2, v2}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;-><init>(III)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 1134
    new-instance v0, Lcom/xiaopeng/musicradio/model/music/i$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/music/i$2;-><init>(Lcom/xiaopeng/musicradio/model/music/i;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-static {p1, v0}, Lbry;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lbry$c;)V

    .line 1140
    new-instance v0, Lcom/xiaopeng/musicradio/model/music/i$3;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/music/i$3;-><init>(Lcom/xiaopeng/musicradio/model/music/i;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    invoke-static {p1, p3, v0}, Lbry;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;Lbry$c;)V

    .line 1146
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->j:Lbil;

    new-instance v6, Lcom/xiaopeng/musicradio/model/music/i$4;

    invoke-direct {v6, p0, p1, p2, p4}, Lcom/xiaopeng/musicradio/model/music/i$4;-><init>(Lcom/xiaopeng/musicradio/model/music/i;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;IZ)V

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v1 .. v6}, Lbil;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;ZZLcom/xiaopeng/musicradio/model/music/f;)V

    .line 1220
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result p2

    const/4 p3, -0x1

    if-eq p2, p3, :cond_1

    .line 1221
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getQuality()I

    move-result p2

    if-nez p2, :cond_1

    .line 1222
    invoke-static {}, Lcom/xiaopeng/musicradio/service/c;->a()Lcom/xiaopeng/musicradio/service/c;

    move-result-object p2

    const-class p3, Lbsi;

    invoke-virtual {p2, p3}, Lcom/xiaopeng/musicradio/service/c;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbsi;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result p3

    invoke-interface {p2, p3}, Lbsi;->isXpVip(I)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1223
    invoke-static {}, Laye;->a()Laye;

    move-result-object p2

    invoke-virtual {p2}, Laye;->b()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setQuality(I)V

    :cond_1
    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    .line 575
    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/musicradio/model/music/i;->a(ZLcom/xiaopeng/musicradio/bean/db/MusicInfo;ZZZZ)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;Z)V
    .locals 7

    .line 579
    iget p2, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    const/4 v1, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v2, p1

    move v3, p3

    .line 580
    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/musicradio/model/music/i;->a(ZLcom/xiaopeng/musicradio/bean/db/MusicInfo;ZZZZ)V

    if-eqz p3, :cond_0

    .line 582
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/model/music/i;->i(I)V

    :cond_0
    return-void
.end method

.method a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V
    .locals 9

    .line 551
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " playWhenReady"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    .line 552
    invoke-direct/range {v2 .. v8}, Lcom/xiaopeng/musicradio/model/music/i;->a(ZLcom/xiaopeng/musicradio/bean/db/MusicInfo;ZZZZ)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ZIZ)V
    .locals 7

    if-eqz p2, :cond_0

    .line 598
    invoke-direct {p0, p3}, Lcom/xiaopeng/musicradio/model/music/i;->j(I)Z

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    move v6, p2

    .line 601
    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/music/i;->j:Lbil;

    invoke-virtual {p2, p1}, Lbil;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 602
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getUnplayableMsg()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 603
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getUnplayableMsg()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->b(Ljava/lang/String;)V

    :cond_1
    return-void

    .line 607
    :cond_2
    iget p2, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    const/4 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move v5, p4

    .line 608
    invoke-direct/range {v0 .. v6}, Lcom/xiaopeng/musicradio/model/music/i;->a(ZLcom/xiaopeng/musicradio/bean/db/MusicInfo;ZZZZ)V

    .line 609
    invoke-direct {p0, p2}, Lcom/xiaopeng/musicradio/model/music/i;->i(I)V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;)V
    .locals 1
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

    const/4 v0, 0x1

    .line 330
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/xiaopeng/musicradio/model/music/i;->a(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;Z)V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " musicInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 342
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    if-eqz p4, :cond_0

    .line 343
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 346
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    .line 347
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/i;->U()V

    .line 348
    invoke-static {}, Lbrx;->a()Lbrx;

    move-result-object v1

    invoke-virtual {v1}, Lbrx;->d()V

    .line 349
    invoke-static {}, Lbrx;->a()Lbrx;

    move-result-object v1

    invoke-virtual {v1}, Lbrx;->f()V

    const/4 v1, 0x0

    .line 350
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/an;->a(I)V

    .line 351
    iput v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->g:I

    .line 352
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/xiaopeng/musicradio/model/music/i;->e:Ljava/lang/Boolean;

    .line 353
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->r()V

    .line 354
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->n()V

    .line 355
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/model/music/b;->h()Lcom/xiaopeng/musicradio/model/music/n;

    move-result-object v2

    invoke-virtual {v2, p1, p2, p3}, Lcom/xiaopeng/musicradio/model/music/n;->a(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->B()I

    move-result p1

    invoke-direct {p0, p1, v1, p4}, Lcom/xiaopeng/musicradio/model/music/i;->a(IIZ)V

    .line 357
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->i(I)V

    return-void
.end method

.method public a(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            "Ljava/lang/String;",
            "ZI)V"
        }
    .end annotation

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " musicInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 362
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    if-eqz p4, :cond_0

    .line 363
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 366
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    .line 367
    invoke-direct {p0, p5}, Lcom/xiaopeng/musicradio/model/music/i;->j(I)Z

    .line 368
    invoke-static {}, Lbrx;->a()Lbrx;

    move-result-object p5

    invoke-virtual {p5}, Lbrx;->d()V

    .line 369
    invoke-static {}, Lbrx;->a()Lbrx;

    move-result-object p5

    invoke-virtual {p5}, Lbrx;->f()V

    const/4 p5, 0x0

    .line 370
    invoke-static {p5}, Lcom/xiaopeng/musicradio/utils/an;->a(I)V

    .line 371
    iput p5, p0, Lcom/xiaopeng/musicradio/model/music/i;->g:I

    .line 372
    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->e:Ljava/lang/Boolean;

    .line 373
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->r()V

    .line 374
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->n()V

    .line 375
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/b;->h()Lcom/xiaopeng/musicradio/model/music/n;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Lcom/xiaopeng/musicradio/model/music/n;->a(Ljava/util/List;Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;)V

    .line 376
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->B()I

    move-result p1

    invoke-direct {p0, p1, p5, p4}, Lcom/xiaopeng/musicradio/model/music/i;->a(IIZ)V

    .line 377
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->i(I)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
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

    .line 306
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/model/music/i;->a(Ljava/util/List;Ljava/lang/String;I)V

    return-void
.end method

.method public a(Ljava/util/List;Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 310
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "play:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 311
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 312
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->isNotPlayable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 315
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    .line 316
    invoke-direct {p0, p3}, Lcom/xiaopeng/musicradio/model/music/i;->j(I)Z

    const/4 p3, 0x0

    .line 317
    iput p3, p0, Lcom/xiaopeng/musicradio/model/music/i;->g:I

    .line 318
    invoke-static {}, Lbrx;->a()Lbrx;

    move-result-object v1

    invoke-virtual {v1}, Lbrx;->d()V

    .line 319
    invoke-static {}, Lbrx;->a()Lbrx;

    move-result-object v1

    invoke-virtual {v1}, Lbrx;->f()V

    .line 320
    invoke-static {p3}, Lcom/xiaopeng/musicradio/utils/an;->a(I)V

    .line 321
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->e:Ljava/lang/Boolean;

    .line 322
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->r()V

    .line 323
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->n()V

    .line 324
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/b;->h()Lcom/xiaopeng/musicradio/model/music/n;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/xiaopeng/musicradio/model/music/n;->a(Ljava/util/List;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->B()I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lcom/xiaopeng/musicradio/model/music/i;->a(II)V

    .line 326
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->i(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Z)V
    .locals 2

    .line 780
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "next = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 781
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 783
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 786
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->h:Z

    .line 787
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->n()V

    .line 788
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->B()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p1}, Lcom/xiaopeng/musicradio/model/music/i;->a(IIZ)V

    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .line 1228
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    .line 1229
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->g()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b()V
    .locals 2

    .line 739
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    const/4 v1, 0x0

    .line 740
    iput v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->g:I

    .line 741
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->u()V

    .line 742
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->i(I)V

    return-void
.end method

.method public b(I)V
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetUserData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    new-instance v0, Lcom/xiaopeng/musicradio/model/music/i$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/model/music/i$1;-><init>(Lcom/xiaopeng/musicradio/model/music/i;I)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
    .locals 1

    const/4 v0, 0x1

    .line 588
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/model/music/i;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Z)V
    .locals 2

    .line 592
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->d()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/xiaopeng/musicradio/model/music/i;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;ZIZ)V

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1555
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/as;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1556
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ToastEvent;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method public c()I
    .locals 1

    .line 950
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->g()Lcom/xiaopeng/musicradio/model/music/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/k;->j()I

    move-result v0

    return v0
.end method

.method public c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1787
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->j:Lbil;

    invoke-virtual {v0, p1}, Lbil;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)Landroid/util/Pair;

    move-result-object p1

    return-object p1
.end method

.method public c(I)Lcom/xiaopeng/musicradio/model/music/a;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 250
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->l:Lbcq;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lbcq;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    :cond_0
    return-object v0

    :cond_1
    const/4 v1, 0x4

    if-ne p1, v1, :cond_3

    .line 252
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->m:Lbcn;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lbcn;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    :cond_2
    return-object v0

    .line 254
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->k:Lcom/xiaopeng/musicradio/model/music/e;

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/e;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    :cond_4
    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 1

    .line 1647
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->removeCache(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic d()Lcom/xiaopeng/musicradio/bean/BaseInfo;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    return-object v0
.end method

.method public d(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    .line 415
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 411
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->l:Lbcq;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lbcq;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/a;->e()Ljava/util/List;

    move-result-object v1

    :cond_1
    return-object v1

    .line 409
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->k:Lcom/xiaopeng/musicradio/model/music/e;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/e;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/a;->e()Ljava/util/List;

    move-result-object v1

    :cond_3
    return-object v1

    .line 413
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->m:Lbcn;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lbcn;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/a;->e()Ljava/util/List;

    move-result-object v1

    :cond_5
    return-object v1

    .line 407
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->n:Lcom/xiaopeng/musicradio/model/music/m;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/m;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/a;->e()Ljava/util/List;

    move-result-object v1

    :cond_7
    return-object v1
.end method

.method public d(Ljava/lang/String;)Z
    .locals 1

    .line 1651
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->isCacheComplete(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public dispatchInfoEvent()V
    .locals 0

    .line 1875
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->H()V

    return-void
.end method

.method public e()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public e(I)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_6

    const/4 v0, 0x4

    if-eq p1, v0, :cond_4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-object v1

    .line 965
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->l:Lbcq;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lbcq;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/a;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    :cond_1
    return-object v1

    .line 963
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->k:Lcom/xiaopeng/musicradio/model/music/e;

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/e;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/a;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    :cond_3
    return-object v1

    .line 967
    :cond_4
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->m:Lbcn;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lbcn;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/a;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    :cond_5
    return-object v1

    .line 961
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->n:Lcom/xiaopeng/musicradio/model/music/m;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/m;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/model/music/a;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    :cond_7
    return-object v1
.end method

.method public f()V
    .locals 3

    const-string v0, "MusicControlModel"

    const-string v1, "forcePause"

    .line 716
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 717
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    const/4 v0, 0x0

    .line 718
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->d(Z)V

    .line 719
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->e:Ljava/lang/Boolean;

    .line 720
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/a;->p()V

    .line 721
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/a;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x3

    .line 722
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/model/music/i;->g(I)V

    .line 723
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->f:I

    .line 724
    iget v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->f:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getSecondPosition()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/xiaopeng/musicradio/model/music/i;->onPlayPosition(IIZ)V

    .line 725
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->pause()V

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    .line 728
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->g(I)V

    :goto_0
    return-void
.end method

.method f(I)V
    .locals 2

    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "savePlayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "music_play_state"

    .line 1346
    invoke-static {v0, p1}, Lcom/xiaopeng/musicradio/utils/bh;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public g()V
    .locals 0

    .line 734
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->K()V

    return-void
.end method

.method protected g(I)V
    .locals 8

    const/4 v0, 0x3

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 1578
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/a;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 1579
    iput v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    .line 1582
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dealPlayState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MusicControlModel"

    invoke-static {v2, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1583
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/model/music/a;->d(I)V

    .line 1584
    iget v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    if-ne v1, p1, :cond_1

    return-void

    .line 1587
    :cond_1
    iput p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    .line 1588
    new-instance v1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;

    const/4 v2, 0x0

    iget v3, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    iget-object v4, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    .line 1589
    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v4

    invoke-virtual {v4}, Lcom/xiaopeng/musicradio/model/music/a;->r()I

    move-result v4

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$w;-><init>(IIII)V

    .line 1588
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    .line 1590
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/a;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eqz v1, :cond_4

    if-eq p1, v3, :cond_3

    if-ne p1, v2, :cond_2

    goto :goto_0

    :cond_2
    if-ne p1, v0, :cond_4

    .line 1595
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->f(I)V

    goto :goto_1

    .line 1593
    :cond_3
    :goto_0
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/model/music/i;->f(I)V

    :cond_4
    :goto_1
    if-eqz v1, :cond_f

    .line 1600
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getDuration()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long p1, v4, v6

    if-nez p1, :cond_5

    .line 1601
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getDuration()I

    move-result p1

    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->setDuration(I)V

    .line 1603
    :cond_5
    iget p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    const/4 v4, 0x4

    if-ne p1, v0, :cond_a

    .line 1604
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result p1

    invoke-static {v1, p1}, Lcom/xiaopeng/musicradio/utils/an;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    .line 1605
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result p1

    if-ne p1, v3, :cond_7

    .line 1606
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->q:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_6

    const-string p1, "ui"

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->q:Ljava/lang/String;

    :goto_2
    invoke-static {v1, p1}, Lcom/xiaopeng/musicradio/utils/an;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;)V

    goto :goto_3

    .line 1607
    :cond_7
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result p1

    if-ne p1, v4, :cond_8

    .line 1608
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/an;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_3

    .line 1609
    :cond_8
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result p1

    if-ne p1, v2, :cond_9

    .line 1610
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/an;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_9
    :goto_3
    const/4 p1, 0x0

    .line 1612
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->q:Ljava/lang/String;

    goto :goto_5

    :cond_a
    if-ne p1, v3, :cond_f

    .line 1614
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result p1

    invoke-static {v1, p1}, Lcom/xiaopeng/musicradio/utils/an;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    .line 1615
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result p1

    if-ne p1, v3, :cond_c

    .line 1616
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getPlayUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_4

    :cond_b
    move v3, v4

    :goto_4
    invoke-static {v1, v3}, Lcom/xiaopeng/musicradio/utils/an;->d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    goto :goto_5

    .line 1617
    :cond_c
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result p1

    if-ne p1, v4, :cond_e

    .line 1618
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getPlayUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->d(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_d

    move v2, v3

    :cond_d
    invoke-static {v1, v2}, Lcom/xiaopeng/musicradio/utils/an;->e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    goto :goto_5

    .line 1619
    :cond_e
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result p1

    if-ne p1, v2, :cond_f

    .line 1620
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/an;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    :cond_f
    :goto_5
    return-void
.end method

.method public getDuration()I
    .locals 3

    .line 826
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 828
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 829
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getShortDurationS()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getIsShortListen()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 830
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getShortDurationS()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0

    .line 832
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/a;->g()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getDuration()I

    move-result v1

    :goto_0
    if-gtz v1, :cond_2

    if-eqz v0, :cond_2

    .line 835
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getDuration()J

    move-result-wide v0

    long-to-int v1, v0

    :cond_2
    return v1
.end method

.method public getPlayState()I
    .locals 1

    .line 847
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    return v0
.end method

.method public getPosition()I
    .locals 1

    .line 807
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    if-eqz v0, :cond_0

    .line 808
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getCurrentPosition()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getSecondPosition()I
    .locals 2

    .line 815
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/aj;->b(Ljava/lang/String;)Z

    move-result v0

    .line 816
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 817
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result v0

    const/16 v1, 0x3d

    if-ne v0, v1, :cond_0

    .line 818
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->getDuration()I

    move-result v0

    return v0

    .line 820
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getSecondPosition()I

    move-result v0

    return v0
.end method

.method public getStartPosition()I
    .locals 1

    .line 842
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->j:Lbil;

    invoke-virtual {v0}, Lbil;->a()I

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    .line 1698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mNetAutoReplay, needRebootPlay = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-static {}, Lask;->a()Lask;

    move-result-object v1

    invoke-virtual {v1}, Lask;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1699
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    invoke-virtual {v0}, Lask;->h()Z

    move-result v0

    return v0
.end method

.method public hasNextSource()Z
    .locals 9

    .line 518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasNextSource: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/b;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " neteasedown = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v1

    invoke-virtual {v1}, Lbhg;->b()Lbhi;

    move-result-object v1

    invoke-virtual {v1}, Lbhi;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " kugoudown = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v1

    invoke-virtual {v1}, Lbhg;->c()Lbhh;

    move-result-object v1

    invoke-virtual {v1}, Lbhh;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    .line 518
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 523
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object v0

    invoke-virtual {v0}, Lbdu;->b()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 524
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v3, v5, :cond_4

    .line 525
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbdu$b;

    .line 526
    iget v5, v5, Lbdu$b;->a:I

    iget-object v7, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v7}, Lcom/xiaopeng/musicradio/model/music/b;->c()I

    move-result v7

    if-ne v5, v7, :cond_3

    .line 527
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    if-ne v3, v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v4, v3, 0x1

    .line 530
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 531
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbdu$b;

    .line 532
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "hasNextSource nextData: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v7

    iget v5, v5, Lbdu$b;->a:I

    invoke-virtual {v7, v5}, Lbhg;->a(I)Lbhi;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 534
    invoke-virtual {v5}, Lbhi;->h()Z

    move-result v5

    if-eqz v5, :cond_1

    return v6

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v4, v6

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    xor-int/lit8 v0, v4, 0x1

    return v0
.end method

.method public i()V
    .locals 5

    .line 1295
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->g()I

    move-result v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->getPosition()I

    move-result v1

    .line 1296
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->getPlayState()I

    move-result v2

    if-ne v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    .line 1295
    :goto_1
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/xiaopeng/musicradio/model/music/i;->a(IIZZ)V

    return-void
.end method

.method public isNotPlayable()Z
    .locals 2

    .line 1560
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    invoke-virtual {v0}, Lask;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1561
    sget v0, Lbub$a;->tips_can_not_play_music:I

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/xiaopeng/musicradio/model/music/i;->a(IZ)V

    .line 1562
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->E()V

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .locals 1

    .line 1769
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->c()I

    move-result v0

    return v0
.end method

.method public l()V
    .locals 1

    .line 183
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/aj;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->D()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/aj;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->h()Lcom/xiaopeng/musicradio/model/music/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/n;->z()V

    :cond_1
    :goto_0
    return-void
.end method

.method public m()V
    .locals 1

    const/4 v0, 0x1

    .line 191
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->b(I)V

    return-void
.end method

.method public n()V
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->j()V

    return-void
.end method

.method public o()V
    .locals 1

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->k()V

    return-void
.end method

.method public onAudioInputFormatChanged(Ljava/lang/String;I)V
    .locals 2

    .line 1755
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAudioInputFormatChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " channelCount = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1756
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->p:Lcom/xiaopeng/musicradio/model/music/j;

    invoke-virtual {v0, p1, p2}, Lcom/xiaopeng/musicradio/model/music/j;->a(Ljava/lang/String;I)V

    return-void
.end method

.method public onAudioSeesionId(I)V
    .locals 1

    .line 1750
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$g;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$g;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public onDownloaded(Ljava/lang/String;J)V
    .locals 2

    .line 1484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDownloaded: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " length="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MusicControlModel"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onNetValid(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 269
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->C()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 270
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->d(Z)V

    .line 271
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/i;->S()V

    :cond_0
    return-void
.end method

.method public onPlayPosition(IIZ)V
    .locals 9

    .line 1442
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->t:J

    const-wide/16 v2, 0x6

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1443
    iput-wide v2, p0, Lcom/xiaopeng/musicradio/model/music/i;->t:J

    .line 1444
    invoke-static {}, Lbbu;->a()Lbbu;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lbbu;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    .line 1445
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPlayPosition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " bufferPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1447
    :cond_0
    iget-wide v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->t:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->t:J

    .line 1448
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 1449
    iput p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->f:I

    .line 1451
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->j:Lbil;

    invoke-virtual {v0, p1}, Lbil;->a(I)V

    .line 1453
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const/16 v2, 0x3c

    .line 1456
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getShortDurationS()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_2

    .line 1457
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getShortDurationS()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 1460
    :cond_2
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getIsShortListen()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1461
    new-instance v1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;

    const/4 v4, 0x0

    move-object v3, v1

    move v5, p1

    move v6, p2

    move v7, v2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;-><init>(IIIIZ)V

    .line 1462
    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/music/i;->j:Lbil;

    invoke-virtual {p2}, Lbil;->a()I

    move-result p2

    invoke-virtual {v1, p2}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->a(I)V

    .line 1463
    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 1465
    :cond_3
    new-instance v3, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;

    invoke-direct {v3, v1, p1, p2, p3}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;-><init>(IIIZ)V

    .line 1466
    iget-object p2, p0, Lcom/xiaopeng/musicradio/model/music/i;->j:Lbil;

    invoke-virtual {p2}, Lbil;->a()I

    move-result p2

    invoke-virtual {v3, p2}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;->a(I)V

    .line 1467
    invoke-static {v3}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 1469
    :goto_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getIsShortListen()Ljava/lang/Boolean;

    move-result-object p2

    if-eqz p2, :cond_5

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getIsShortListen()Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    if-le p1, v2, :cond_5

    .line 1470
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/i;->T()V

    goto :goto_1

    .line 1473
    :cond_4
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$x;-><init>(IIIZ)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onSetData(Landroid/os/Bundle;)V
    .locals 1

    .line 1628
    new-instance v0, Lbkx;

    invoke-direct {v0}, Lbkx;-><init>()V

    invoke-virtual {v0, p1}, Lbkx;->a(Landroid/os/Bundle;)Lbkx$a;

    move-result-object p1

    .line 1629
    instance-of v0, p1, Lbky;

    if-eqz v0, :cond_0

    .line 1630
    invoke-interface {p1}, Lbkx$a;->b()V

    :cond_0
    return-void
.end method

.method public onSongQualityChangeEvent(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ba;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    if-eqz p1, :cond_0

    .line 1708
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ba;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1709
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ba;->b()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->k(I)V

    :cond_0
    return-void
.end method

.method public onTimeLineChange()V
    .locals 2

    .line 1479
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$ae;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$ae;-><init>(I)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public onUsbDetached(Lcom/xiaopeng/musicradio/event/common/CommonEvent$UsbMusic$Detatched;)V
    .locals 1
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1715
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object p1

    invoke-virtual {p1}, Laqr;->b()I

    move-result p1

    if-nez p1, :cond_0

    .line 1716
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1717
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object p1

    const-string v0, "local_usb_prefix_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1718
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->stop()V

    :cond_0
    return-void
.end method

.method public p()Lcom/xiaopeng/musicradio/model/music/a;
    .locals 1

    .line 245
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .locals 2

    const-string v0, "MusicControlModel"

    const-string v1, "pause"

    .line 706
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->pauseByLogic()V

    .line 708
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/bn;->a()V

    return-void
.end method

.method public pauseByLogic()V
    .locals 3

    const-string v0, "MusicControlModel"

    const-string v1, "pauseByLogic: "

    .line 1792
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1794
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/model/music/i$6;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/model/music/i$6;-><init>(Lcom/xiaopeng/musicradio/model/music/i;)V

    invoke-static {v0, v1}, Lbry;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Lbry$c;)V

    .line 1804
    :cond_0
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 1805
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->j:Lbil;

    invoke-virtual {v0}, Lbil;->b()V

    const/4 v0, 0x0

    .line 1806
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->d(Z)V

    .line 1807
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->e:Ljava/lang/Boolean;

    .line 1808
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/a;->p()V

    .line 1809
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/a;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1810
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getCurrentPosition()I

    move-result v1

    iput v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->f:I

    .line 1811
    iget v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->f:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getSecondPosition()I

    move-result v2

    invoke-virtual {p0, v1, v2, v0}, Lcom/xiaopeng/musicradio/model/music/i;->onPlayPosition(IIZ)V

    const/4 v0, 0x3

    .line 1812
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->g(I)V

    .line 1813
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    new-instance v1, Lcom/xiaopeng/musicradio/model/music/i$7;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/model/music/i$7;-><init>(Lcom/xiaopeng/musicradio/model/music/i;)V

    invoke-virtual {v0, v1}, Lask;->a(Lask$d;)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    .line 1825
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->g(I)V

    :goto_0
    return-void
.end method

.method public play()V
    .locals 1

    .line 420
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    .line 421
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->K()V

    .line 422
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->i(I)V

    return-void
.end method

.method public playNext(I)I
    .locals 9

    .line 427
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playNext: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "MusicControlModel"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->f()V

    const/4 v0, 0x0

    .line 429
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->seekTo(I)V

    .line 430
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/b;->c()I

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " neteasedown = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v1

    invoke-virtual {v1}, Lbhg;->b()Lbhi;

    move-result-object v1

    invoke-virtual {v1}, Lbhi;->h()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " kugoudown = "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 432
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v1

    invoke-virtual {v1}, Lbhg;->c()Lbhh;

    move-result-object v1

    invoke-virtual {v1}, Lbhh;->h()Z

    move-result v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 430
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    invoke-static {}, Lbbu;->a()Lbbu;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lbbu;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 435
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/model/music/i;->h(I)V

    goto/16 :goto_3

    .line 437
    :cond_0
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->b()Ljava/util/List;

    move-result-object p1

    .line 438
    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v3}, Lcom/xiaopeng/musicradio/model/music/b;->c()I

    move-result v3

    if-eq v3, v1, :cond_4

    move v3, v0

    .line 443
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 444
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbdu$b;

    .line 446
    iget v4, v4, Lbdu$b;->a:I

    iget-object v5, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v5}, Lcom/xiaopeng/musicradio/model/music/b;->c()I

    move-result v5

    const/4 v6, 0x1

    if-ne v4, v5, :cond_2

    .line 447
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    if-eq v3, v4, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 448
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 449
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbdu$b;

    .line 450
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "playNext nextData: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-static {}, Lbhg;->a()Lbhg;

    move-result-object v7

    iget v8, v5, Lbdu$b;->a:I

    invoke-virtual {v7, v8}, Lbhg;->a(I)Lbhi;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 452
    invoke-virtual {v7}, Lbhi;->h()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 453
    iget v4, v5, Lbdu$b;->a:I

    invoke-direct {p0, v4}, Lcom/xiaopeng/musicradio/model/music/i;->h(I)V

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    move v6, v0

    :goto_2
    if-eqz v6, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 440
    :cond_4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbdu$b;

    iget p1, p1, Lbdu$b;->a:I

    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/music/i;->h(I)V

    .line 467
    :cond_5
    :goto_3
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$s;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v2

    invoke-direct {p1, v2}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$s;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    .line 468
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->j:Lbil;

    invoke-virtual {p1}, Lbil;->c()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->f:I

    .line 469
    iget p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->f:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getSecondPosition()I

    move-result v2

    invoke-virtual {p0, p1, v2, v0}, Lcom/xiaopeng/musicradio/model/music/i;->onPlayPosition(IIZ)V

    .line 470
    iput v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    .line 471
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->play()V

    .line 472
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 473
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getMusicFrom()I

    move-result p1

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_6

    .line 474
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 475
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getData()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->refreshHash(Ljava/lang/String;)V

    goto :goto_4

    .line 478
    :cond_6
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getHash()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->refreshHash(Ljava/lang/String;)V

    .line 481
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result p1

    return p1
.end method

.method public playState(I)V
    .locals 4

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1302
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->j:Lbil;

    invoke-virtual {v0, p1}, Lbil;->c(I)V

    const/4 v0, -0x1

    if-eq p1, v0, :cond_8

    const/4 v0, 0x5

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p1, v0, :cond_3

    if-eq p1, v2, :cond_2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    goto/16 :goto_1

    .line 1325
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->g(I)V

    goto/16 :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 1328
    iput p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->g:I

    .line 1329
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/model/music/i;->g(I)V

    goto/16 :goto_1

    .line 1332
    :cond_2
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/model/music/i;->g(I)V

    .line 1333
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/an;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    goto :goto_1

    .line 1306
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 1307
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getIsShortListen()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_4

    .line 1308
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->getPosition()I

    move-result p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->getDuration()I

    move-result v3

    sub-int/2addr v3, v0

    if-ge p1, v3, :cond_4

    .line 1309
    sget-object p1, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v3, Lbub$a;->music_source_err_next:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/view/ToastUtils;->showToast(Landroid/content/Context;Ljava/lang/String;)V

    .line 1313
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result p1

    if-ne p1, v2, :cond_5

    .line 1314
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/an;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_0

    .line 1315
    :cond_5
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_6

    .line 1316
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/an;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V

    goto :goto_0

    .line 1317
    :cond_6
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result p1

    if-ne p1, v1, :cond_7

    .line 1318
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    const-string v0, "playend"

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/an;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;Ljava/lang/String;)V

    :cond_7
    :goto_0
    const/4 p1, 0x0

    .line 1320
    iput-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->q:Ljava/lang/String;

    .line 1321
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/model/music/i;->T()V

    .line 1322
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object p1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/an;->c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    goto :goto_1

    .line 1336
    :cond_8
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->g(I)V

    :goto_1
    return-void
.end method

.method public playSub(I)V
    .locals 3

    .line 486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "playSub: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->c()I

    move-result v0

    if-eq p1, v0, :cond_4

    const/4 v0, 0x0

    .line 488
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->seekTo(I)V

    .line 489
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->f()V

    const/4 v1, -0x1

    if-eq p1, v1, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x1

    if-eq p1, v2, :cond_1

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 498
    :cond_0
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/model/music/i;->h(I)V

    goto :goto_0

    .line 495
    :cond_1
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/model/music/i;->h(I)V

    goto :goto_0

    .line 501
    :cond_2
    invoke-direct {p0, v2}, Lcom/xiaopeng/musicradio/model/music/i;->h(I)V

    goto :goto_0

    .line 492
    :cond_3
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/model/music/i;->h(I)V

    .line 504
    :goto_0
    iput v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->c:I

    .line 505
    iget-object p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->j:Lbil;

    invoke-virtual {p1}, Lbil;->c()I

    move-result p1

    iput p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->f:I

    .line 506
    iget p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->f:I

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->getSecondPosition()I

    move-result v1

    invoke-virtual {p0, p1, v1, v0}, Lcom/xiaopeng/musicradio/model/music/i;->onPlayPosition(IIZ)V

    .line 509
    :cond_4
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->play()V

    return-void
.end method

.method public q()Lcom/xiaopeng/musicradio/model/music/n;
    .locals 1

    .line 259
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->h()Lcom/xiaopeng/musicradio/model/music/n;

    move-result-object v0

    return-object v0
.end method

.method protected r()V
    .locals 2

    const-string v0, "MusicControlModel"

    const-string v1, "changeToMusic"

    .line 293
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 294
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    invoke-virtual {v0}, Laqr;->b()I

    move-result v0

    if-eqz v0, :cond_0

    .line 295
    invoke-static {}, Laqr;->a()Laqr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Laqr;->a(I)V

    :cond_0
    return-void
.end method

.method public rebootPlay(Z)V
    .locals 3

    .line 650
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "rebootPlay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->e:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 651
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->r()V

    .line 652
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 653
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 654
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNeedRebootPlay: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/i;->e:Ljava/lang/Boolean;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 655
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/a;->a(Z)V

    :cond_0
    return-void
.end method

.method public register()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->a:Lask;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->s:Lask$a;

    invoke-virtual {v0, p0, v1}, Lask;->a(Laqt;Lask$a;)V

    .line 278
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 401
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->e()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public seekTo(I)V
    .locals 2

    .line 798
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "seekTo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 799
    iput p1, p0, Lcom/xiaopeng/musicradio/model/music/i;->f:I

    .line 800
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    if-eqz v0, :cond_0

    .line 801
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public setVolume(F)Z
    .locals 2

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    .line 926
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setVolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MusicControlModel"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->p:Lcom/xiaopeng/musicradio/model/music/j;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/model/music/j;->a(F)F

    move-result p1

    .line 929
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0, p1, p1}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->setVolume(FF)V

    const/4 p1, 0x1

    return p1
.end method

.method public stop()V
    .locals 2

    const/4 v0, -0x1

    .line 1641
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->g(I)V

    .line 1642
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->i:Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/player/PlayerSelector;->stop()V

    .line 1643
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->j()I

    move-result v1

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/an;->b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;I)V

    return-void
.end method

.method public supportRandom()Z
    .locals 1

    .line 1886
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->F()Last;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->F()Last;

    move-result-object v0

    invoke-interface {v0}, Last;->G()Z

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

.method public t()Lcom/xiaopeng/musicradio/model/music/m;
    .locals 1

    .line 513
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->n:Lcom/xiaopeng/musicradio/model/music/m;

    return-object v0
.end method

.method u()V
    .locals 2

    const-string v0, "MusicControlModel"

    const-string v1, "prevByLogic"

    .line 746
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 748
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 750
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->isNotPlayable()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->o()V

    const/4 v0, 0x0

    .line 754
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->h:Z

    .line 755
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/model/music/a;->g()I

    move-result v1

    invoke-virtual {p0, v1, v0}, Lcom/xiaopeng/musicradio/model/music/i;->a(II)V

    return-void
.end method

.method public unregister()V
    .locals 1

    .line 283
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 284
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->s()V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->a:Lask;

    invoke-virtual {v0, p0}, Lask;->a(Laqt;)V

    const-string v0, "interrupt"

    .line 287
    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->q:Ljava/lang/String;

    .line 288
    invoke-static {p0}, Lcom/xiaopeng/musicradio/utils/x;->b(Ljava/lang/Object;)V

    return-void
.end method

.method v()V
    .locals 2

    const-string v0, "MusicControlModel"

    const-string v1, "nextByLogic"

    .line 774
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 776
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/music/i;->a(Z)V

    return-void
.end method

.method public w()V
    .locals 4

    .line 877
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->c()I

    move-result v0

    .line 879
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->F()Last;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->F()Last;

    move-result-object v1

    invoke-interface {v1}, Last;->G()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    if-eq v0, v3, :cond_1

    .line 897
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/model/music/i;->a(I)V

    goto :goto_1

    .line 894
    :cond_1
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/model/music/i;->a(I)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x4

    if-eq v0, v3, :cond_4

    if-eq v0, v1, :cond_3

    .line 888
    invoke-virtual {p0, v3}, Lcom/xiaopeng/musicradio/model/music/i;->a(I)V

    goto :goto_1

    .line 885
    :cond_3
    invoke-virtual {p0, v2}, Lcom/xiaopeng/musicradio/model/music/i;->a(I)V

    goto :goto_1

    .line 882
    :cond_4
    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/model/music/i;->a(I)V

    :goto_1
    return-void
.end method

.method public x()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 1

    .line 910
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/i;->y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 1

    .line 955
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    return-object v0
.end method

.method public z()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 1

    .line 973
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/i;->o:Lcom/xiaopeng/musicradio/model/music/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/b;->i()Lcom/xiaopeng/musicradio/model/music/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/music/a;->h()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    return-object v0
.end method
