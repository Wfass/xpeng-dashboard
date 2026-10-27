.class public abstract Lcom/xiaopeng/musicradio/model/music/a;
.super Ljava/lang/Object;
.source "AbsDataProvider.java"


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation
.end field

.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field c:I

.field d:I

.field e:Ljava/lang/String;

.field private f:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->b:Ljava/util/List;

    const/4 v0, 0x2

    .line 49
    iput v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->c:I

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->d:I

    const-string v0, ""

    .line 56
    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->e:Ljava/lang/String;

    .line 274
    new-instance v0, Lcom/xiaopeng/musicradio/model/music/a$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/model/music/a$1;-><init>(Lcom/xiaopeng/musicradio/model/music/a;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->f:Ljava/lang/Runnable;

    .line 59
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/a;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->a:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/model/music/a;I)Z
    .locals 0

    .line 44
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/model/music/a;->e(I)Z

    move-result p0

    return p0
.end method

.method private e(I)Z
    .locals 1

    if-ltz p1, :cond_1

    .line 200
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->b:Ljava/util/List;

    .line 201
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I
    .locals 4

    .line 91
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    .line 92
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v1, 0x0

    .line 95
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 96
    invoke-direct {p0, v1}, Lcom/xiaopeng/musicradio/model/music/a;->e(I)Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    .line 99
    :cond_1
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/a;->a:Ljava/util/List;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/model/music/a;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 100
    invoke-virtual {v2, p1}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return v0
.end method

.method a(I)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    return-object v0

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    return-object v0

    .line 119
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 120
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_2

    return-object v0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    return-object p1
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

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public abstract a(Z)V
.end method

.method public abstract a(ZZ)V
.end method

.method public b()V
    .locals 4

    .line 70
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    move v1, v0

    .line 73
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/a;->a:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 74
    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/a;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/a;->j()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 77
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/a;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    goto :goto_1

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/a;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 81
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateIndexLis: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/a;->j()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIndexList = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AbsDataProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    new-instance v1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$f;

    invoke-direct {v1, v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$f;-><init>(I)V

    invoke-static {v1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public b(I)V
    .locals 3

    .line 209
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 210
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->c:I

    const-string v1, "AbsDataProvider"

    if-ne v0, p1, :cond_0

    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayMode: same mode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 214
    :cond_0
    iput p1, p0, Lcom/xiaopeng/musicradio/model/music/a;->c:I

    .line 215
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPlayMode: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/model/music/a;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 217
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/a;->f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    .line 218
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/a;->b()V

    .line 219
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/music/a;->a(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->d:I

    .line 221
    :cond_1
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/model/music/a;->c(I)V

    .line 222
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$c;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$c;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract b(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
.end method

.method public b(Z)V
    .locals 0

    return-void
.end method

.method c()I
    .locals 2

    .line 131
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 135
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->d:I

    add-int/lit8 v0, v0, 0x1

    .line 136
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/a;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method

.method public abstract c(I)V
.end method

.method public abstract c(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
.end method

.method d()I
    .locals 1

    .line 147
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    .line 151
    :cond_0
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->d:I

    add-int/lit8 v0, v0, -0x1

    if-gez v0, :cond_1

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_1
    return v0
.end method

.method public abstract d(I)V
.end method

.method public abstract d(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
.end method

.method public e()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/db/MusicInfo;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->a:Ljava/util/List;

    return-object v0
.end method

.method protected abstract e(Lcom/xiaopeng/musicradio/bean/db/MusicInfo;)V
.end method

.method public f()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 2

    .line 171
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->d:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 174
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/model/music/a;->a(I)Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .line 178
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->d:I

    return v0
.end method

.method public h()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 3

    .line 182
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 183
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/a;->d()I

    move-result v0

    .line 184
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/music/a;->e(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 187
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/a;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/a;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    :goto_0
    return-object v2
.end method

.method public i()Lcom/xiaopeng/musicradio/bean/db/MusicInfo;
    .locals 3

    .line 191
    invoke-static {}, Lcom/xiaopeng/musicradio/utils/al;->a()V

    .line 192
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/a;->c()I

    move-result v0

    .line 193
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/model/music/a;->e(I)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 196
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/model/music/a;->a:Ljava/util/List;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/model/music/a;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    :goto_0
    return-object v2
.end method

.method public j()I
    .locals 1

    .line 256
    iget v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->c:I

    return v0
.end method

.method public k()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->b:Ljava/util/List;

    return-object v0
.end method

.method public l()V
    .locals 3

    .line 267
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->f:Ljava/lang/Runnable;

    const-wide/16 v1, 0x2710

    invoke-static {v0, v1, v2}, Lbql;->a(Ljava/lang/Runnable;J)V

    return-void
.end method

.method protected m()V
    .locals 1

    .line 271
    iget-object v0, p0, Lcom/xiaopeng/musicradio/model/music/a;->f:Ljava/lang/Runnable;

    invoke-static {v0}, Lbql;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public abstract n()V
.end method

.method public abstract o()V
.end method

.method public abstract p()V
.end method

.method public abstract q()Ljava/lang/String;
.end method

.method public abstract r()I
.end method

.method public abstract s()V
.end method

.method public t()V
    .locals 4

    .line 448
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/a;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/model/music/a;->r()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, v3}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$h;-><init>(ILjava/lang/String;IZ)V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method
