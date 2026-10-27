.class public abstract Lass;
.super Ljava/lang/Object;
.source "AbsMediaSource.java"

# interfaces
.implements Last;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Last<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;
    .annotation build Lcom/xiaopeng/musicradio/bean/db/ReadingInfo$SORT;
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Z

.field private l:Last$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Last$a<",
            "TV;>;"
        }
    .end annotation
.end field

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Z

.field private t:Ljava/lang/String;

.field private u:Ljava/lang/String;

.field private v:I

.field private w:Z

.field private x:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 35
    iput v0, p0, Lass;->g:I

    const-string v0, "timeAsc"

    .line 36
    iput-object v0, p0, Lass;->h:Ljava/lang/String;

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lass;->n:Z

    .line 44
    iput-boolean v0, p0, Lass;->o:Z

    .line 45
    iput-boolean v0, p0, Lass;->p:Z

    .line 46
    iput-boolean v0, p0, Lass;->q:Z

    .line 47
    iput-boolean v0, p0, Lass;->r:Z

    .line 50
    iput-boolean v0, p0, Lass;->s:Z

    const/4 v1, 0x0

    .line 52
    iput-object v1, p0, Lass;->t:Ljava/lang/String;

    const-string v1, ""

    .line 54
    iput-object v1, p0, Lass;->u:Ljava/lang/String;

    const/4 v1, -0x1

    .line 55
    iput v1, p0, Lass;->v:I

    const/4 v2, 0x1

    .line 57
    iput-boolean v2, p0, Lass;->w:Z

    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string p1, "Invalid"

    .line 61
    iput-object p1, p0, Lass;->a:Ljava/lang/String;

    goto :goto_0

    .line 63
    :cond_0
    iput-object p1, p0, Lass;->a:Ljava/lang/String;

    .line 66
    :goto_0
    iput v1, p0, Lass;->d:I

    .line 67
    iput v1, p0, Lass;->c:I

    .line 68
    iput v1, p0, Lass;->e:I

    .line 69
    iput v1, p0, Lass;->f:I

    .line 70
    iput-boolean v0, p0, Lass;->k:Z

    .line 71
    iput p2, p0, Lass;->g:I

    .line 72
    iput v1, p0, Lass;->j:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 85
    invoke-direct {p0, p1, p3}, Lass;-><init>(Ljava/lang/String;I)V

    .line 86
    iput p2, p0, Lass;->d:I

    .line 87
    iput p2, p0, Lass;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;ZLjava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "TV;>;I)V"
        }
    .end annotation

    .line 92
    invoke-direct {p0, p1, p5}, Lass;-><init>(Ljava/lang/String;I)V

    .line 93
    iput p2, p0, Lass;->d:I

    .line 94
    iput p2, p0, Lass;->c:I

    .line 95
    iput p3, p0, Lass;->e:I

    .line 96
    iput p4, p0, Lass;->f:I

    .line 97
    iput-object p6, p0, Lass;->h:Ljava/lang/String;

    .line 98
    iput-object p8, p0, Lass;->i:Ljava/util/List;

    .line 99
    iput p9, p0, Lass;->j:I

    .line 100
    iput-boolean p7, p0, Lass;->n:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIIILjava/lang/String;ZLjava/util/List;IZLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/List<",
            "TV;>;IZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 105
    invoke-direct {p0, p1, p5}, Lass;-><init>(Ljava/lang/String;I)V

    .line 106
    iput p2, p0, Lass;->d:I

    .line 107
    iput p2, p0, Lass;->c:I

    .line 108
    iput p3, p0, Lass;->e:I

    .line 109
    iput p4, p0, Lass;->f:I

    .line 110
    iput-object p6, p0, Lass;->h:Ljava/lang/String;

    .line 111
    iput-object p8, p0, Lass;->i:Ljava/util/List;

    .line 112
    iput p9, p0, Lass;->j:I

    .line 113
    iput-boolean p7, p0, Lass;->n:Z

    .line 114
    iput-boolean p10, p0, Lass;->p:Z

    .line 115
    iput-object p11, p0, Lass;->t:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/util/List;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TV;>;I)V"
        }
    .end annotation

    .line 76
    invoke-direct {p0, p1, p3}, Lass;-><init>(Ljava/lang/String;I)V

    .line 77
    iput p2, p0, Lass;->d:I

    .line 78
    iput p2, p0, Lass;->c:I

    .line 79
    iput-object p4, p0, Lass;->h:Ljava/lang/String;

    .line 80
    iput-object p5, p0, Lass;->i:Ljava/util/List;

    .line 81
    iput p6, p0, Lass;->j:I

    return-void
.end method

.method private d(I)V
    .locals 6

    .line 248
    iget v3, p0, Lass;->g:I

    iget-object v4, p0, Lass;->h:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move v2, p1

    invoke-virtual/range {v0 .. v5}, Lass;->a(ZIILjava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public A()Z
    .locals 1

    .line 406
    iget-boolean v0, p0, Lass;->o:Z

    return v0
.end method

.method public B()Z
    .locals 1

    .line 419
    iget-boolean v0, p0, Lass;->r:Z

    return v0
.end method

.method public C()V
    .locals 1

    const/4 v0, 0x0

    .line 424
    iput-boolean v0, p0, Lass;->k:Z

    return-void
.end method

.method public D()Z
    .locals 1

    .line 429
    iget-boolean v0, p0, Lass;->m:Z

    return v0
.end method

.method public E()Z
    .locals 1

    .line 433
    iget-boolean v0, p0, Lass;->s:Z

    return v0
.end method

.method public F()I
    .locals 1

    .line 459
    iget v0, p0, Lass;->v:I

    return v0
.end method

.method public G()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public H()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public I()Z
    .locals 1

    .line 471
    iget-boolean v0, p0, Lass;->w:Z

    return v0
.end method

.method public a()V
    .locals 1

    const/4 v0, 0x1

    .line 125
    iput-boolean v0, p0, Lass;->k:Z

    const/4 v0, 0x0

    .line 126
    iput-boolean v0, p0, Lass;->m:Z

    return-void
.end method

.method public a(I)V
    .locals 0

    .line 162
    iput p1, p0, Lass;->j:I

    return-void
.end method

.method public a(Lass;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 374
    :cond_0
    iget-object v0, p1, Lass;->a:Ljava/lang/String;

    iput-object v0, p0, Lass;->a:Ljava/lang/String;

    .line 375
    iget v0, p1, Lass;->c:I

    iput v0, p0, Lass;->c:I

    .line 376
    iget v0, p1, Lass;->d:I

    iput v0, p0, Lass;->d:I

    .line 377
    iget v0, p1, Lass;->e:I

    iput v0, p0, Lass;->e:I

    .line 378
    iget v0, p1, Lass;->f:I

    iput v0, p0, Lass;->f:I

    .line 379
    iget v0, p1, Lass;->g:I

    iput v0, p0, Lass;->g:I

    .line 380
    iget-object v0, p1, Lass;->h:Ljava/lang/String;

    iput-object v0, p0, Lass;->h:Ljava/lang/String;

    .line 381
    iget-object p1, p1, Lass;->t:Ljava/lang/String;

    iput-object p1, p0, Lass;->t:Ljava/lang/String;

    return-void
.end method

.method public a(Last$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Last$a<",
            "TV;>;)V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lass;->l:Last$a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lass;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TV;>;)V"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lass;->i:Ljava/util/List;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 172
    iput-boolean p1, p0, Lass;->x:Z

    return-void
.end method

.method public a(ZIIILjava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIII",
            "Ljava/util/List<",
            "TV;>;)V"
        }
    .end annotation

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSuccesList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isNext = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mCancel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lass;->k:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " callback = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lass;->l:Last$a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " page = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " totalPage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsMediaSource"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    .line 320
    :cond_0
    invoke-virtual {p0}, Lass;->x()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, v1, p2}, Lass;->a(ZILjava/lang/String;)V

    .line 321
    iput-boolean v2, p0, Lass;->p:Z

    return-void

    .line 325
    :cond_1
    iput p3, p0, Lass;->e:I

    .line 326
    iput p4, p0, Lass;->f:I

    if-eqz p1, :cond_3

    .line 329
    iput p2, p0, Lass;->d:I

    .line 330
    iput-boolean v2, p0, Lass;->m:Z

    .line 331
    iget p1, p0, Lass;->c:I

    if-ne p1, v1, :cond_2

    .line 332
    iget p1, p0, Lass;->d:I

    iput p1, p0, Lass;->c:I

    .line 335
    :cond_2
    iget-boolean p1, p0, Lass;->k:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lass;->l:Last$a;

    if-eqz p1, :cond_4

    .line 336
    invoke-interface {p1, p5}, Last$a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 339
    :cond_3
    iput p2, p0, Lass;->c:I

    .line 340
    iput-boolean v2, p0, Lass;->b:Z

    .line 341
    iget-boolean p1, p0, Lass;->k:Z

    if-nez p1, :cond_4

    iget-object p1, p0, Lass;->l:Last$a;

    if-eqz p1, :cond_4

    .line 342
    invoke-interface {p1, p5}, Last$a;->b(Ljava/util/List;)V

    .line 345
    :cond_4
    :goto_0
    iput-boolean v2, p0, Lass;->p:Z

    .line 346
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcom/xiaopeng/musicradio/event/common/BaseAudioEvent$Info;-><init>(I)V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    .line 347
    new-instance p1, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ao;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$ao;-><init>()V

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    return-void
.end method

.method protected abstract a(ZIILjava/lang/String;Z)V
.end method

.method public a(ZILjava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 356
    iput-boolean v0, p0, Lass;->m:Z

    .line 357
    iget-boolean p1, p0, Lass;->k:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lass;->l:Last$a;

    if-eqz p1, :cond_1

    .line 358
    invoke-interface {p1, p2, p3}, Last$a;->a(ILjava/lang/String;)V

    goto :goto_0

    .line 361
    :cond_0
    iput-boolean v0, p0, Lass;->b:Z

    .line 362
    iget-boolean p1, p0, Lass;->k:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lass;->l:Last$a;

    if-eqz p1, :cond_1

    .line 363
    invoke-interface {p1, p2, p3}, Last$a;->b(ILjava/lang/String;)V

    .line 366
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lass;->p:Z

    .line 367
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lass;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-----"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " code = "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AbsMediaSource"

    invoke-static {p2, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 138
    iget-object v0, p0, Lass;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(I)V
    .locals 0

    .line 205
    iput p1, p0, Lass;->e:I

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lass;->h:Ljava/lang/String;

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 215
    iput-boolean p1, p0, Lass;->p:Z

    return-void
.end method

.method public c(I)V
    .locals 0

    .line 454
    iput p1, p0, Lass;->v:I

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 401
    iput-boolean p1, p0, Lass;->n:Z

    return-void
.end method

.method public c()Z
    .locals 2

    .line 142
    iget-object v0, p0, Lass;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lass;->j:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 150
    iget-object v0, p0, Lass;->i:Ljava/util/List;

    return-object v0
.end method

.method public d(Z)V
    .locals 0

    .line 411
    iput-boolean p1, p0, Lass;->o:Z

    return-void
.end method

.method public e()I
    .locals 1

    .line 158
    iget v0, p0, Lass;->j:I

    return v0
.end method

.method public e(Z)V
    .locals 0

    .line 415
    iput-boolean p1, p0, Lass;->r:Z

    return-void
.end method

.method public f()V
    .locals 1

    const/4 v0, -0x1

    .line 166
    iput v0, p0, Lass;->j:I

    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lass;->i:Ljava/util/List;

    return-void
.end method

.method public f(Z)V
    .locals 0

    .line 437
    iput-boolean p1, p0, Lass;->s:Z

    return-void
.end method

.method public g()Z
    .locals 1

    .line 176
    iget-boolean v0, p0, Lass;->x:Z

    return v0
.end method

.method public h()I
    .locals 1

    .line 181
    iget v0, p0, Lass;->d:I

    return v0
.end method

.method public i()I
    .locals 1

    .line 191
    iget v0, p0, Lass;->e:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 196
    iget v0, p0, Lass;->f:I

    return v0
.end method

.method public k()I
    .locals 1

    .line 201
    iget v0, p0, Lass;->g:I

    return v0
.end method

.method public l()Z
    .locals 1

    .line 210
    iget-boolean v0, p0, Lass;->p:Z

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 219
    iget-object v0, p0, Lass;->t:Ljava/lang/String;

    return-object v0
.end method

.method public n()V
    .locals 2

    .line 224
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reqList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lass;->m:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " sort = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lass;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsMediaSource"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    iget-boolean v0, p0, Lass;->m:Z

    if-eqz v0, :cond_0

    return-void

    .line 228
    :cond_0
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    invoke-virtual {v0}, Lask;->c()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lass;->w:Z

    .line 229
    iput-boolean v1, p0, Lass;->m:Z

    .line 230
    iput-boolean v1, p0, Lass;->q:Z

    .line 231
    invoke-direct {p0, v1}, Lass;->d(I)V

    return-void
.end method

.method public o()V
    .locals 2

    .line 235
    iget-boolean v0, p0, Lass;->m:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lass;->p()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 238
    iput-boolean v0, p0, Lass;->m:Z

    const/4 v1, 0x0

    .line 239
    iput-boolean v1, p0, Lass;->q:Z

    .line 240
    iget v1, p0, Lass;->d:I

    add-int/2addr v1, v0

    invoke-direct {p0, v1}, Lass;->d(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public q()Z
    .locals 1

    .line 255
    iget-boolean v0, p0, Lass;->q:Z

    return v0
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public s()Z
    .locals 2

    .line 264
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hasNextPage mCurrentPage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lass;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTotalPage:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lass;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AbsMediaSource"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 265
    iget v0, p0, Lass;->d:I

    iget v1, p0, Lass;->e:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public t()Z
    .locals 2

    .line 270
    iget v0, p0, Lass;->d:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AbsMediaSource{mListSign=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lass;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", mCurrentPage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lass;->d:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mTotalPage="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lass;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mTotalCount="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lass;->f:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mPageSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lass;->g:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mBeginIndex="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lass;->j:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mSource=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lass;->u:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u()Z
    .locals 9

    .line 275
    iget-boolean v0, p0, Lass;->b:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lass;->v()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 278
    iput-boolean v0, p0, Lass;->b:Z

    .line 279
    iget v2, p0, Lass;->c:I

    add-int/lit8 v5, v2, -0x1

    .line 282
    iput-boolean v1, p0, Lass;->q:Z

    const/4 v4, 0x0

    .line 283
    iget v6, p0, Lass;->g:I

    iget-object v7, p0, Lass;->h:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lass;->a(ZIILjava/lang/String;Z)V

    return v0

    :cond_1
    :goto_0
    return v1
.end method

.method public v()Z
    .locals 2

    .line 288
    iget v0, p0, Lass;->c:I

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public w()Z
    .locals 9

    .line 296
    invoke-virtual {p0}, Lass;->r()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 299
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "nextPage: curPage = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lass;->h()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " total = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lass;->e:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "AbsMediaSource"

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget v0, p0, Lass;->d:I

    const/4 v2, 0x1

    add-int/2addr v0, v2

    .line 301
    iget v3, p0, Lass;->e:I

    if-le v0, v3, :cond_1

    const/4 v0, -0x1

    if-eq v3, v0, :cond_1

    return v1

    .line 305
    :cond_1
    iget-boolean v0, p0, Lass;->m:Z

    if-eqz v0, :cond_2

    return v2

    .line 308
    :cond_2
    iput-boolean v2, p0, Lass;->m:Z

    .line 310
    iput-boolean v1, p0, Lass;->q:Z

    const/4 v4, 0x1

    .line 311
    iget v0, p0, Lass;->d:I

    add-int/lit8 v5, v0, 0x1

    iget v6, p0, Lass;->g:I

    iget-object v7, p0, Lass;->h:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lass;->a(ZIILjava/lang/String;Z)V

    return v2
.end method

.method protected x()Ljava/lang/String;
    .locals 2

    .line 351
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    sget v1, Lcom/xiaopeng/musicradio/common/k$g;->common_mediasource_error_hint:I

    invoke-virtual {v0, v1}, Landroid/app/Application;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public y()Ljava/lang/String;
    .locals 1
    .annotation build Lcom/xiaopeng/musicradio/bean/db/ReadingInfo$SORT;
    .end annotation

    .line 388
    iget-object v0, p0, Lass;->h:Ljava/lang/String;

    return-object v0
.end method

.method public z()Z
    .locals 1

    .line 396
    iget-boolean v0, p0, Lass;->n:Z

    return v0
.end method
