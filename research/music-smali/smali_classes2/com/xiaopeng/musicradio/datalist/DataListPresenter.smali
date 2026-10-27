.class public abstract Lcom/xiaopeng/musicradio/datalist/DataListPresenter;
.super Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
.source "DataListPresenter.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/datalist/b$a;
.implements Lcom/xiaopeng/musicradio/datalist/l;
.implements Lcom/xiaopeng/musicradio/widget/recyclerview/i$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/datalist/DataListPresenter$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<UIInterface:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter<",
        "TUIInterface;>;",
        "Lcom/xiaopeng/musicradio/datalist/b$a;",
        "Lcom/xiaopeng/musicradio/datalist/l;",
        "Lcom/xiaopeng/musicradio/widget/recyclerview/i$a;"
    }
.end annotation


# instance fields
.field protected b:I

.field protected c:I

.field protected d:Lcom/xiaopeng/musicradio/datalist/g;

.field protected e:Ljava/util/List;

.field protected f:Ljava/lang/String;

.field protected g:Z

.field protected h:I

.field protected final i:I

.field protected final j:J

.field protected final k:I

.field protected l:Lcom/xiaopeng/musicradio/datalist/b;

.field protected m:Z

.field protected n:J

.field protected o:Ljava/lang/Runnable;

.field protected p:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x32

    .line 61
    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 64
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->e:Ljava/util/List;

    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->i:I

    const-wide v1, 0x7fffffffffffffffL

    .line 46
    iput-wide v1, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->j:J

    .line 48
    iput v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->k:I

    .line 52
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->m:Z

    .line 58
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->p:Z

    const/16 v0, -0x3e8

    if-ne p1, v0, :cond_0

    .line 66
    iput v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->h:I

    goto :goto_0

    :cond_0
    if-gtz p1, :cond_1

    const/16 p1, 0x32

    .line 68
    :cond_1
    iput p1, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->h:I

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->v()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->c(Lcom/xiaopeng/musicradio/datalist/g;)V

    return-void
.end method

.method private c(Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 7

    .line 253
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->n()Lcom/xiaopeng/musicradio/datalist/c;

    move-result-object v0

    const-string v1, "DataListPresenter"

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->q()Lcom/xiaopeng/musicradio/datalist/b;

    move-result-object p1

    const/4 v0, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0, v2, v3}, Lcom/xiaopeng/musicradio/datalist/b;->a(ZZ[Ljava/lang/Object;)V

    const-string p1, "onDataLoaded(skip):dataHolder=null"

    .line 259
    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 262
    :cond_1
    iget v3, p1, Lcom/xiaopeng/musicradio/datalist/g;->k:I

    iget v4, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->c:I

    if-eq v3, v4, :cond_2

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataLoaded(skip):"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 266
    :cond_2
    iput-object p1, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->d:Lcom/xiaopeng/musicradio/datalist/g;

    .line 267
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c;->c()Lcom/xiaopeng/musicradio/widget/recyclerview/i;

    move-result-object v1

    .line 268
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c;->d()Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object v3

    .line 269
    iget-boolean v4, p1, Lcom/xiaopeng/musicradio/datalist/g;->l:Z

    if-eqz v4, :cond_3

    .line 270
    invoke-interface {v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/i;->a()V

    goto :goto_0

    .line 272
    :cond_3
    iget-object v4, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->e:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 275
    :goto_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->a()Ljava/lang/Object;

    move-result-object v4

    .line 276
    instance-of v5, v4, Lcom/xiaopeng/musicradio/datalist/k;

    const/4 v6, 0x0

    if-eqz v5, :cond_4

    .line 277
    check-cast v4, Lcom/xiaopeng/musicradio/datalist/k;

    goto :goto_1

    :cond_4
    move-object v4, v6

    .line 279
    :goto_1
    instance-of v5, p1, Lcom/xiaopeng/musicradio/datalist/e;

    if-eqz v5, :cond_6

    if-eqz v4, :cond_5

    .line 281
    invoke-interface {v4, p1}, Lcom/xiaopeng/musicradio/datalist/k;->b(Lcom/xiaopeng/musicradio/datalist/g;)V

    .line 283
    :cond_5
    iget-boolean p1, p1, Lcom/xiaopeng/musicradio/datalist/g;->l:Z

    invoke-virtual {p0, p1, v6}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->a(ZLjava/lang/Throwable;)V

    goto :goto_2

    .line 285
    :cond_6
    iget-object v5, p1, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    if-eqz v5, :cond_7

    iget-object v5, p1, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_7

    .line 286
    iget-object v5, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->e:Ljava/util/List;

    iget-object v6, p1, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 288
    :cond_7
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c;->a()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 289
    iget-boolean v5, p1, Lcom/xiaopeng/musicradio/datalist/g;->n:Z

    invoke-virtual {v0, v5}, Lcom/xiaopeng/musicradio/datalist/c;->a(Z)V

    .line 290
    iget-boolean v5, p1, Lcom/xiaopeng/musicradio/datalist/g;->n:Z

    invoke-interface {v1, v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/i;->setLoadMoreEnable(Z)V

    if-eqz v3, :cond_8

    .line 291
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/c;->b()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-boolean v1, p1, Lcom/xiaopeng/musicradio/datalist/g;->n:Z

    if-nez v1, :cond_8

    .line 292
    invoke-virtual {v3, v2}, Lcom/xiaopeng/musicradio/datalist/d;->f(I)V

    .line 296
    :cond_8
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->a(Lcom/xiaopeng/musicradio/datalist/g;Lcom/xiaopeng/musicradio/datalist/c;)V

    if-eqz v4, :cond_9

    .line 298
    invoke-interface {v4, p1}, Lcom/xiaopeng/musicradio/datalist/k;->a(Lcom/xiaopeng/musicradio/datalist/g;)V

    .line 300
    :cond_9
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->b(Lcom/xiaopeng/musicradio/datalist/g;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    if-eqz v4, :cond_a

    .line 303
    invoke-interface {v4, p1}, Lcom/xiaopeng/musicradio/datalist/k;->b(Lcom/xiaopeng/musicradio/datalist/g;)V

    .line 305
    :cond_a
    iget-boolean p1, p1, Lcom/xiaopeng/musicradio/datalist/g;->l:Z

    invoke-virtual {p0, p1, v0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->a(ZLjava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method private u()V
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/musicradio/datalist/j;

    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/datalist/j;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/datalist/j;->onPreGetDataList()V

    :cond_0
    return-void
.end method

.method private v()V
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->o:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    const-string v0, "DataListPresenter"

    const-string v1, "runFirstDelayRunnable"

    .line 379
    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 380
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->o:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    .line 381
    iput-object v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->o:Ljava/lang/Runnable;

    :cond_0
    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)Ljava/util/List;
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 408
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object p1
.end method

.method public a(I)V
    .locals 3

    .line 178
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    .line 179
    instance-of v1, v0, Lcom/xiaopeng/musicradio/datalist/m;

    if-eqz v1, :cond_1

    .line 180
    iget v1, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->b:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 183
    :cond_0
    check-cast v0, Lcom/xiaopeng/musicradio/datalist/m;

    invoke-interface {v0, p1}, Lcom/xiaopeng/musicradio/datalist/m;->setLoadingStatus(I)V

    .line 185
    :cond_1
    iput p1, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->b:I

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/datalist/f;)V
    .locals 0

    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 8

    .line 221
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, ", "

    const-string v1, "DataListPresenter"

    if-eqz p1, :cond_1

    .line 224
    iget v2, p1, Lcom/xiaopeng/musicradio/datalist/g;->k:I

    iget v3, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->c:I

    if-eq v2, v3, :cond_1

    .line 225
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDataLoaded skip(resp.reqId != mReqId): resp = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", mReqId = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->c:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    .line 228
    :cond_1
    iget-boolean v2, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->m:Z

    if-eqz v2, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->n:J

    sub-long/2addr v2, v4

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->s()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 229
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onDataLoaded:needDelay="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", resp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", mReqId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->c:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", cost="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->n:J

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 229
    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v2, :cond_3

    .line 233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataLoaded(Delay):resp="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 234
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter$2;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter$2;-><init>(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;Lcom/xiaopeng/musicradio/datalist/g;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->o:Ljava/lang/Runnable;

    goto :goto_1

    .line 241
    :cond_3
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->c(Lcom/xiaopeng/musicradio/datalist/g;)V

    :goto_1
    return-void
.end method

.method protected a(Lcom/xiaopeng/musicradio/datalist/g;Lcom/xiaopeng/musicradio/datalist/c;)V
    .locals 2

    .line 386
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 389
    :cond_0
    iget-boolean v0, p1, Lcom/xiaopeng/musicradio/datalist/g;->l:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/xiaopeng/musicradio/datalist/g;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    return-void

    .line 393
    :cond_2
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/datalist/c;->d()Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    .line 396
    iget-boolean p1, p1, Lcom/xiaopeng/musicradio/datalist/g;->l:Z

    if-eqz p1, :cond_3

    .line 397
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/d;->getItemCount()I

    move-result p1

    .line 398
    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/datalist/q;->a(Lcom/xiaopeng/musicradio/datalist/c;I)Z

    move-result v1

    .line 400
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->e:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(Ljava/util/List;Z)V

    :cond_4
    return-void
.end method

.method protected a(ZLjava/lang/Throwable;)V
    .locals 3

    .line 311
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDataError:more="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "DataListPresenter"

    invoke-static {v0, p2}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->n()Lcom/xiaopeng/musicradio/datalist/c;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p1, "onDataError(skip):dataHolder=null"

    .line 314
    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 317
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/datalist/c;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 318
    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/datalist/c;->d()Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 p2, 0x2

    .line 320
    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/datalist/d;->f(I)V

    :cond_1
    return-void
.end method

.method public varargs a(Z[I)V
    .locals 9

    .line 326
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->p()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 331
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->n()Lcom/xiaopeng/musicradio/datalist/c;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 332
    iget-object v3, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->d:Lcom/xiaopeng/musicradio/datalist/g;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p2, :cond_2

    .line 341
    array-length v3, p2

    if-lez v3, :cond_2

    .line 342
    aget v0, p2, v2

    goto :goto_0

    .line 345
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->d:Lcom/xiaopeng/musicradio/datalist/g;

    iget v0, v0, Lcom/xiaopeng/musicradio/datalist/g;->d:I

    .line 347
    :goto_0
    iget-object v3, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->d:Lcom/xiaopeng/musicradio/datalist/g;

    iget-wide v3, v3, Lcom/xiaopeng/musicradio/datalist/g;->h:J

    goto :goto_3

    .line 333
    :cond_3
    :goto_1
    invoke-static {}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter$a;->a()I

    move-result v0

    iput v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->c:I

    .line 334
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->j()I

    move-result v0

    .line 335
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->k()J

    move-result-wide v3

    if-eqz v1, :cond_4

    .line 336
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/datalist/c;->c()Lcom/xiaopeng/musicradio/widget/recyclerview/i;

    move-result-object v5

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_5

    .line 337
    invoke-interface {v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/i;->v_()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 338
    invoke-interface {v5}, Lcom/xiaopeng/musicradio/widget/recyclerview/i;->a()V

    :cond_5
    :goto_3
    move-wide v5, v3

    move v4, v0

    if-eqz v1, :cond_7

    .line 349
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/datalist/c;->b()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 350
    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/datalist/c;->d()Lcom/xiaopeng/musicradio/datalist/d;

    move-result-object v0

    if-eqz v0, :cond_7

    if-eqz p1, :cond_6

    const/4 v1, 0x1

    .line 353
    invoke-virtual {v0, v1, v1}, Lcom/xiaopeng/musicradio/datalist/d;->a(ZI)V

    goto :goto_4

    :cond_6
    const/4 v1, -0x1

    .line 355
    invoke-virtual {v0, v2, v1, v2}, Lcom/xiaopeng/musicradio/datalist/d;->a(ZIZ)V

    .line 359
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->l()I

    move-result v7

    .line 360
    new-instance v8, Lcom/xiaopeng/musicradio/datalist/f;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->m()I

    move-result v1

    iget v2, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->c:I

    move-object v0, v8

    move v3, p1

    invoke-direct/range {v0 .. v7}, Lcom/xiaopeng/musicradio/datalist/f;-><init>(IIZIJI)V

    .line 364
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->m:Z

    if-eqz v0, :cond_8

    iget-wide v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_8

    .line 365
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->n:J

    .line 366
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter$3;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter$3;-><init>(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;)V

    .line 372
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->s()J

    move-result-wide v1

    .line 366
    invoke-static {v0, v1, v2}, Lbql;->b(Ljava/lang/Runnable;J)V

    .line 374
    :cond_8
    invoke-virtual {p0, v8}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->a(Lcom/xiaopeng/musicradio/datalist/f;)V

    return-void
.end method

.method public varargs a([Ljava/lang/Object;)V
    .locals 0

    .line 426
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->p()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 427
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->h()V

    :cond_0
    return-void
.end method

.method public a(Z)Z
    .locals 1

    .line 125
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->g:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 127
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->g:Z

    :cond_0
    return v0
.end method

.method public b(I)V
    .locals 0

    .line 201
    iput p1, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->h:I

    return-void
.end method

.method public b(Lcom/xiaopeng/musicradio/datalist/g;)V
    .locals 0

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 156
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    .line 160
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->u()V

    .line 162
    :cond_1
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter$1;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter$1;-><init>(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;Z)V

    invoke-static {v0}, Lbql;->g(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected c()V
    .locals 1

    .line 92
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->q()Lcom/xiaopeng/musicradio/datalist/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->l:Lcom/xiaopeng/musicradio/datalist/b;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/b;->a(Lcom/xiaopeng/musicradio/datalist/b$a;)V

    :cond_0
    return-void
.end method

.method protected d()V
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->q()Lcom/xiaopeng/musicradio/datalist/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->l:Lcom/xiaopeng/musicradio/datalist/b;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/datalist/b;->b(Lcom/xiaopeng/musicradio/datalist/b$a;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->l:Lcom/xiaopeng/musicradio/datalist/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/b;->a()V

    const/4 v0, 0x0

    .line 101
    iput-object v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->l:Lcom/xiaopeng/musicradio/datalist/b;

    :cond_0
    return-void
.end method

.method protected e()V
    .locals 1

    .line 106
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 109
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->h()V

    :cond_1
    return-void
.end method

.method public f()Z
    .locals 3

    .line 115
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->t()Ljava/lang/String;

    move-result-object v0

    .line 116
    iget-object v1, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->f:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->f:Ljava/lang/String;

    .line 118
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 119
    :goto_0
    iput-object v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->f:Ljava/lang/String;

    .line 120
    iput-boolean v1, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->g:Z

    return v1
.end method

.method public g()Ljava/util/List;
    .locals 1

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->e:Ljava/util/List;

    return-object v0
.end method

.method public final h()V
    .locals 1

    .line 142
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->p()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 145
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->b(Z)V

    return-void
.end method

.method protected i()Z
    .locals 1

    .line 174
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    return v0
.end method

.method protected j()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected k()J
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    return-wide v0
.end method

.method protected l()I
    .locals 1

    .line 197
    iget v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->h:I

    return v0
.end method

.method protected m()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public n()Lcom/xiaopeng/musicradio/datalist/c;
    .locals 2

    .line 209
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    .line 210
    instance-of v1, v0, Lcom/xiaopeng/musicradio/datalist/i;

    if-eqz v1, :cond_0

    .line 211
    check-cast v0, Lcom/xiaopeng/musicradio/datalist/i;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/datalist/i;->getDataHolder()Lcom/xiaopeng/musicradio/datalist/c;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()V
    .locals 1

    const/4 v0, 0x1

    .line 413
    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->b(Z)V

    return-void
.end method

.method public onCreate(Landroidx/lifecycle/n;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onCreate(Landroidx/lifecycle/n;)V

    .line 75
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->c()V

    const/4 p1, 0x0

    .line 76
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->p:Z

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/n;)V
    .locals 0

    .line 81
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onDestroy(Landroidx/lifecycle/n;)V

    .line 82
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->d()V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;->onResume(Landroidx/lifecycle/n;)V

    .line 88
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->e()V

    return-void
.end method

.method protected p()Z
    .locals 1

    .line 432
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/musicradio/datalist/n;

    if-eqz v0, :cond_0

    .line 433
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/datalist/n;

    .line 434
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/datalist/n;->isShowing()Z

    move-result v0

    return v0

    .line 436
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final q()Lcom/xiaopeng/musicradio/datalist/b;
    .locals 1

    .line 441
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->l:Lcom/xiaopeng/musicradio/datalist/b;

    if-nez v0, :cond_0

    .line 442
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->r()Lcom/xiaopeng/musicradio/datalist/b;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->l:Lcom/xiaopeng/musicradio/datalist/b;

    .line 444
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->l:Lcom/xiaopeng/musicradio/datalist/b;

    return-object v0
.end method

.method public r()Lcom/xiaopeng/musicradio/datalist/b;
    .locals 1

    .line 448
    new-instance v0, Lcom/xiaopeng/musicradio/datalist/b;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/datalist/b;-><init>()V

    return-object v0
.end method

.method public s()J
    .locals 2

    const-wide/16 v0, 0x12c

    return-wide v0
.end method

.method public abstract t()Ljava/lang/String;
.end method
