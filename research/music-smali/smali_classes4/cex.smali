.class public Lcex;
.super Ljava/lang/Object;
.source "ClientState.java"


# static fields
.field private static final a:Ljava/lang/String; = "cex"

.field private static final b:Lcgw;


# instance fields
.field private A:Ljava/util/Hashtable;

.field private B:Ljava/util/Hashtable;

.field private C:Ljava/util/Hashtable;

.field private D:Lces;

.field private c:I

.field private d:Ljava/util/Hashtable;

.field private volatile e:Ljava/util/Vector;

.field private volatile f:Ljava/util/Vector;

.field private g:Lcfb;

.field private h:Lcew;

.field private i:Lcey;

.field private j:J

.field private k:Z

.field private l:Lcel;

.field private m:I

.field private n:I

.field private o:I

.field private p:Ljava/lang/Object;

.field private q:Ljava/lang/Object;

.field private r:Z

.field private s:J

.field private t:J

.field private u:J

.field private v:Lcgs;

.field private w:Ljava/lang/Object;

.field private x:I

.field private y:Z

.field private z:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 103
    sget-object v0, Lcex;->a:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lcgx;->a(Ljava/lang/String;Ljava/lang/String;)Lcgw;

    move-result-object v0

    sput-object v0, Lcex;->b:Lcgw;

    return-void
.end method

.method protected constructor <init>(Lcel;Lcfb;Lcey;Lcew;Lces;)V
    .locals 5

    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 111
    iput v0, p0, Lcex;->c:I

    const/4 v1, 0x0

    .line 118
    iput-object v1, p0, Lcex;->h:Lcew;

    .line 119
    iput-object v1, p0, Lcex;->i:Lcey;

    .line 124
    iput v0, p0, Lcex;->m:I

    .line 125
    iput v0, p0, Lcex;->n:I

    .line 126
    iput v0, p0, Lcex;->o:I

    .line 128
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcex;->p:Ljava/lang/Object;

    .line 129
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcex;->q:Ljava/lang/Object;

    .line 130
    iput-boolean v0, p0, Lcex;->r:Z

    const-wide/16 v2, 0x0

    .line 132
    iput-wide v2, p0, Lcex;->s:J

    .line 133
    iput-wide v2, p0, Lcex;->t:J

    .line 134
    iput-wide v2, p0, Lcex;->u:J

    .line 136
    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcex;->w:Ljava/lang/Object;

    .line 137
    iput v0, p0, Lcex;->x:I

    .line 139
    iput-boolean v0, p0, Lcex;->y:Z

    .line 141
    iput-object v1, p0, Lcex;->z:Ljava/util/Hashtable;

    .line 142
    iput-object v1, p0, Lcex;->A:Ljava/util/Hashtable;

    .line 143
    iput-object v1, p0, Lcex;->B:Ljava/util/Hashtable;

    .line 144
    iput-object v1, p0, Lcex;->C:Ljava/util/Hashtable;

    .line 146
    iput-object v1, p0, Lcex;->D:Lces;

    .line 151
    sget-object v1, Lcex;->b:Lcgw;

    invoke-virtual {p4}, Lcew;->h()Lcee;

    move-result-object v2

    invoke-interface {v2}, Lcee;->b()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcgw;->setResourceName(Ljava/lang/String;)V

    .line 152
    sget-object v1, Lcex;->b:Lcgw;

    sget-object v2, Lcex;->a:Ljava/lang/String;

    const-string v3, "<Init>"

    const-string v4, ""

    invoke-interface {v1, v2, v3, v4}, Lcgw;->finer(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcex;->d:Ljava/util/Hashtable;

    .line 155
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcex;->f:Ljava/util/Vector;

    .line 156
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcex;->z:Ljava/util/Hashtable;

    .line 157
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcex;->A:Ljava/util/Hashtable;

    .line 158
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcex;->B:Ljava/util/Hashtable;

    .line 159
    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcex;->C:Ljava/util/Hashtable;

    .line 160
    new-instance v1, Lcgg;

    invoke-direct {v1}, Lcgg;-><init>()V

    iput-object v1, p0, Lcex;->v:Lcgs;

    .line 161
    iput v0, p0, Lcex;->o:I

    .line 162
    iput v0, p0, Lcex;->n:I

    .line 164
    iput-object p1, p0, Lcex;->l:Lcel;

    .line 165
    iput-object p3, p0, Lcex;->i:Lcey;

    .line 166
    iput-object p2, p0, Lcex;->g:Lcfb;

    .line 167
    iput-object p4, p0, Lcex;->h:Lcew;

    .line 168
    iput-object p5, p0, Lcex;->D:Lces;

    .line 170
    invoke-virtual {p0}, Lcex;->d()V

    return-void
.end method

.method private a(Ljava/lang/String;Lceq;)Lcgs;
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 231
    :try_start_0
    invoke-static {p2}, Lcgs;->a(Lceq;)Lcgs;

    move-result-object p2
    :try_end_0
    .catch Lceo; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 235
    sget-object v2, Lcex;->b:Lcgw;

    sget-object v3, Lcex;->a:Ljava/lang/String;

    new-array v6, v1, [Ljava/lang/Object;

    aput-object p1, v6, v0

    const-string v4, "restoreMessage"

    const-string v5, "602"

    move-object v7, p2

    invoke-interface/range {v2 .. v7}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 236
    invoke-virtual {p2}, Lceo;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Ljava/io/EOFException;

    if-eqz v2, :cond_1

    if-eqz p1, :cond_0

    .line 239
    iget-object p2, p0, Lcex;->l:Lcel;

    invoke-interface {p2, p1}, Lcel;->remove(Ljava/lang/String;)V

    :cond_0
    const/4 p2, 0x0

    .line 247
    :goto_0
    sget-object v2, Lcex;->b:Lcgw;

    sget-object v3, Lcex;->a:Ljava/lang/String;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v0

    aput-object p2, v4, v1

    const-string p1, "restoreMessage"

    const-string v0, "601"

    invoke-interface {v2, v3, p1, v0, v4}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p2

    .line 243
    :cond_1
    throw p2
.end method

.method private a(Ljava/util/Vector;)Ljava/util/Vector;
    .locals 7

    .line 278
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 280
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    .line 287
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v6

    if-lt v2, v6, :cond_4

    .line 295
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcgs;

    invoke-virtual {v2}, Lcgs;->j()I

    move-result v2

    const v6, 0xffff

    sub-int/2addr v6, v3

    add-int/2addr v6, v2

    if-le v6, v4, :cond_1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    move v2, v6

    .line 304
    :goto_2
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v3

    if-lt v2, v3, :cond_3

    :goto_3
    if-lt v1, v6, :cond_2

    return-object v0

    .line 310
    :cond_2
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 305
    :cond_3
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 288
    :cond_4
    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcgs;

    invoke-virtual {v6}, Lcgs;->j()I

    move-result v6

    sub-int v3, v6, v3

    if-le v3, v4, :cond_5

    move v5, v2

    move v4, v3

    :cond_5
    add-int/lit8 v2, v2, 0x1

    move v3, v6

    goto :goto_0
.end method

.method private a(Ljava/util/Vector;Lcgs;)V
    .locals 3

    .line 257
    invoke-virtual {p2}, Lcgs;->j()I

    move-result v0

    const/4 v1, 0x0

    .line 258
    :goto_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 266
    invoke-virtual {p1, p2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    .line 259
    :cond_0
    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcgs;

    .line 260
    invoke-virtual {v2}, Lcgs;->j()I

    move-result v2

    if-le v2, v0, :cond_1

    .line 262
    invoke-virtual {p1, p2, v1}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private declared-synchronized d(I)V
    .locals 2

    monitor-enter p0

    .line 1230
    :try_start_0
    iget-object v0, p0, Lcex;->d:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1231
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private e(Lcgs;)Ljava/lang/String;
    .locals 2

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "s-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcgs;->j()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private f(Lcgs;)Ljava/lang/String;
    .locals 2

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sc-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcgs;->j()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private g(Lcgs;)Ljava/lang/String;
    .locals 2

    .line 199
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "r-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcgs;->j()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private h(Lcgs;)Ljava/lang/String;
    .locals 2

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "sb-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcgs;->j()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private l()V
    .locals 9

    .line 431
    new-instance v0, Ljava/util/Vector;

    iget v1, p0, Lcex;->m:I

    invoke-direct {v0, v1}, Ljava/util/Vector;-><init>(I)V

    iput-object v0, p0, Lcex;->e:Ljava/util/Vector;

    .line 432
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcex;->f:Ljava/util/Vector;

    .line 434
    iget-object v0, p0, Lcex;->z:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 435
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "restoreInflightMessages"

    const/4 v4, 0x1

    if-nez v1, :cond_3

    .line 451
    iget-object v0, p0, Lcex;->A:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    .line 452
    :goto_1
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_2

    .line 461
    iget-object v0, p0, Lcex;->B:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 462
    :goto_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-nez v1, :cond_1

    .line 471
    iget-object v0, p0, Lcex;->f:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lcex;->a(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcex;->f:Ljava/util/Vector;

    .line 472
    iget-object v0, p0, Lcex;->e:Ljava/util/Vector;

    invoke-direct {p0, v0}, Lcex;->a(Ljava/util/Vector;)Ljava/util/Vector;

    move-result-object v0

    iput-object v0, p0, Lcex;->e:Ljava/util/Vector;

    return-void

    .line 463
    :cond_1
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 464
    iget-object v5, p0, Lcex;->B:Ljava/util/Hashtable;

    invoke-virtual {v5, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcgm;

    .line 466
    sget-object v6, Lcex;->b:Lcgw;

    sget-object v7, Lcex;->a:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v1, v8, v2

    const-string v1, "512"

    invoke-interface {v6, v7, v3, v1, v8}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 467
    iget-object v1, p0, Lcex;->e:Ljava/util/Vector;

    invoke-direct {p0, v1, v5}, Lcex;->a(Ljava/util/Vector;Lcgs;)V

    goto :goto_2

    .line 453
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    .line 454
    iget-object v5, p0, Lcex;->A:Ljava/util/Hashtable;

    invoke-virtual {v5, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcgm;

    .line 455
    invoke-virtual {v5, v4}, Lcgm;->a(Z)V

    .line 457
    sget-object v6, Lcex;->b:Lcgw;

    sget-object v7, Lcex;->a:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v0, v8, v2

    const-string v0, "612"

    invoke-interface {v6, v7, v3, v0, v8}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 459
    iget-object v0, p0, Lcex;->e:Ljava/util/Vector;

    invoke-direct {p0, v0, v5}, Lcex;->a(Ljava/util/Vector;Lcgs;)V

    goto :goto_1

    .line 436
    :cond_3
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    .line 437
    iget-object v5, p0, Lcex;->z:Ljava/util/Hashtable;

    invoke-virtual {v5, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcgs;

    .line 438
    instance-of v6, v5, Lcgm;

    if-eqz v6, :cond_4

    .line 440
    sget-object v6, Lcex;->b:Lcgw;

    sget-object v7, Lcex;->a:Ljava/lang/String;

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v1, v8, v2

    const-string v1, "610"

    invoke-interface {v6, v7, v3, v1, v8}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 442
    invoke-virtual {v5, v4}, Lcgs;->a(Z)V

    .line 443
    iget-object v1, p0, Lcex;->e:Ljava/util/Vector;

    check-cast v5, Lcgm;

    invoke-direct {p0, v1, v5}, Lcex;->a(Ljava/util/Vector;Lcgs;)V

    goto/16 :goto_0

    .line 444
    :cond_4
    instance-of v6, v5, Lcgl;

    if-eqz v6, :cond_0

    .line 446
    sget-object v6, Lcex;->b:Lcgw;

    sget-object v7, Lcex;->a:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v2

    const-string v1, "611"

    invoke-interface {v6, v7, v3, v1, v4}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 448
    iget-object v1, p0, Lcex;->f:Ljava/util/Vector;

    check-cast v5, Lcgl;

    invoke-direct {p0, v1, v5}, Lcex;->a(Ljava/util/Vector;Lcgs;)V

    goto/16 :goto_0
.end method

.method private m()V
    .locals 9

    .line 892
    iget-object v0, p0, Lcex;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 893
    :try_start_0
    iget v1, p0, Lcex;->n:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, p0, Lcex;->n:I

    .line 895
    sget-object v1, Lcex;->b:Lcgw;

    sget-object v3, Lcex;->a:Ljava/lang/String;

    const-string v4, "decrementInFlight"

    const-string v5, "646"

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/Integer;

    iget v8, p0, Lcex;->n:I

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    aput-object v7, v2, v6

    invoke-interface {v1, v3, v4, v5, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 897
    invoke-virtual {p0}, Lcex;->f()Z

    move-result v1

    if-nez v1, :cond_0

    .line 898
    iget-object v1, p0, Lcex;->p:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 892
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private declared-synchronized n()I
    .locals 5

    monitor-enter p0

    .line 1240
    :try_start_0
    iget v0, p0, Lcex;->c:I

    const/4 v1, 0x0

    .line 1245
    :cond_0
    iget v2, p0, Lcex;->c:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcex;->c:I

    .line 1246
    iget v2, p0, Lcex;->c:I

    const v4, 0xffff

    if-le v2, v4, :cond_1

    .line 1247
    iput v3, p0, Lcex;->c:I

    .line 1249
    :cond_1
    iget v2, p0, Lcex;->c:I

    if-ne v2, v0, :cond_3

    add-int/lit8 v1, v1, 0x1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x7d01

    .line 1252
    invoke-static {v0}, Lcfe;->a(I)Lceo;

    move-result-object v0

    throw v0

    .line 1255
    :cond_3
    :goto_0
    iget-object v2, p0, Lcex;->d:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    iget v4, p0, Lcex;->c:I

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1256
    new-instance v0, Ljava/lang/Integer;

    iget v1, p0, Lcex;->c:I

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 1257
    iget-object v1, p0, Lcex;->d:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    iget v0, p0, Lcex;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected a()J
    .locals 2

    .line 181
    iget-wide v0, p0, Lcex;->j:J

    return-wide v0
.end method

.method public a(Lced;)Lceu;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    .line 662
    sget-object v2, Lcex;->b:Lcgw;

    sget-object v3, Lcex;->a:Ljava/lang/String;

    const/4 v4, 0x0

    new-array v5, v4, [Ljava/lang/Object;

    const-string v6, "checkForActivity"

    const-string v7, "616"

    invoke-interface {v2, v3, v6, v7, v5}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 664
    iget-object v2, v1, Lcex;->q:Ljava/lang/Object;

    monitor-enter v2

    .line 667
    :try_start_0
    iget-boolean v3, v1, Lcex;->r:Z

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 668
    monitor-exit v2

    return-object v5

    .line 664
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcex;->a()J

    .line 675
    iget-boolean v2, v1, Lcex;->y:Z

    if-eqz v2, :cond_9

    iget-wide v2, v1, Lcex;->j:J

    const-wide/16 v6, 0x0

    cmp-long v2, v2, v6

    if-lez v2, :cond_9

    .line 676
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/16 v6, 0x64

    .line 682
    iget-object v7, v1, Lcex;->w:Ljava/lang/Object;

    monitor-enter v7

    .line 685
    :try_start_1
    iget v8, v1, Lcex;->x:I

    const/4 v10, 0x5

    const/4 v13, 0x1

    if-lez v8, :cond_2

    iget-wide v14, v1, Lcex;->t:J

    sub-long v14, v2, v14

    iget-wide v11, v1, Lcex;->j:J

    int-to-long v8, v6

    add-long/2addr v11, v8

    cmp-long v8, v14, v11

    if-gez v8, :cond_1

    goto :goto_0

    .line 690
    :cond_1
    sget-object v0, Lcex;->b:Lcgw;

    sget-object v5, Lcex;->a:Ljava/lang/String;

    const-string v6, "checkForActivity"

    const-string v8, "619"

    new-array v9, v10, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/Long;

    iget-wide v11, v1, Lcex;->j:J

    invoke-direct {v10, v11, v12}, Ljava/lang/Long;-><init>(J)V

    aput-object v10, v9, v4

    new-instance v4, Ljava/lang/Long;

    iget-wide v10, v1, Lcex;->s:J

    invoke-direct {v4, v10, v11}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v9, v13

    new-instance v4, Ljava/lang/Long;

    iget-wide v10, v1, Lcex;->t:J

    invoke-direct {v4, v10, v11}, Ljava/lang/Long;-><init>(J)V

    const/4 v10, 0x2

    aput-object v4, v9, v10

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const/4 v2, 0x3

    aput-object v4, v9, v2

    new-instance v2, Ljava/lang/Long;

    iget-wide v3, v1, Lcex;->u:J

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    const/4 v3, 0x4

    aput-object v2, v9, v3

    invoke-interface {v0, v5, v6, v8, v9}, Lcgw;->severe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x7d00

    .line 694
    invoke-static {v0}, Lcfe;->a(I)Lceo;

    move-result-object v0

    throw v0

    .line 698
    :cond_2
    :goto_0
    iget v9, v1, Lcex;->x:I

    if-nez v9, :cond_4

    iget-wide v11, v1, Lcex;->s:J

    sub-long v11, v2, v11

    const-wide/16 v14, 0x2

    iget-wide v8, v1, Lcex;->j:J

    mul-long/2addr v8, v14

    cmp-long v8, v11, v8

    if-gez v8, :cond_3

    goto :goto_1

    .line 701
    :cond_3
    sget-object v0, Lcex;->b:Lcgw;

    sget-object v5, Lcex;->a:Ljava/lang/String;

    const-string v6, "checkForActivity"

    const-string v8, "642"

    new-array v9, v10, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/Long;

    iget-wide v11, v1, Lcex;->j:J

    invoke-direct {v10, v11, v12}, Ljava/lang/Long;-><init>(J)V

    aput-object v10, v9, v4

    new-instance v4, Ljava/lang/Long;

    iget-wide v10, v1, Lcex;->s:J

    invoke-direct {v4, v10, v11}, Ljava/lang/Long;-><init>(J)V

    aput-object v4, v9, v13

    new-instance v4, Ljava/lang/Long;

    iget-wide v10, v1, Lcex;->t:J

    invoke-direct {v4, v10, v11}, Ljava/lang/Long;-><init>(J)V

    const/4 v10, 0x2

    aput-object v4, v9, v10

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, v2, v3}, Ljava/lang/Long;-><init>(J)V

    const/4 v2, 0x3

    aput-object v4, v9, v2

    new-instance v2, Ljava/lang/Long;

    iget-wide v3, v1, Lcex;->u:J

    invoke-direct {v2, v3, v4}, Ljava/lang/Long;-><init>(J)V

    const/4 v3, 0x4

    aput-object v2, v9, v3

    invoke-interface {v0, v5, v6, v8, v9}, Lcgw;->severe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x7d02

    .line 705
    invoke-static {v0}, Lcfe;->a(I)Lceo;

    move-result-object v0

    throw v0

    .line 717
    :cond_4
    :goto_1
    iget v9, v1, Lcex;->x:I

    if-nez v9, :cond_5

    iget-wide v9, v1, Lcex;->t:J

    sub-long v9, v2, v9

    iget-wide v11, v1, Lcex;->j:J

    int-to-long v14, v6

    sub-long/2addr v11, v14

    cmp-long v9, v9, v11

    if-gez v9, :cond_6

    .line 718
    :cond_5
    iget-wide v9, v1, Lcex;->s:J

    sub-long v9, v2, v9

    iget-wide v11, v1, Lcex;->j:J

    int-to-long v14, v6

    sub-long/2addr v11, v14

    cmp-long v6, v9, v11

    if-ltz v6, :cond_8

    .line 721
    :cond_6
    sget-object v2, Lcex;->b:Lcgw;

    sget-object v3, Lcex;->a:Ljava/lang/String;

    const-string v5, "checkForActivity"

    const-string v6, "620"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/Long;

    iget-wide v11, v1, Lcex;->j:J

    invoke-direct {v10, v11, v12}, Ljava/lang/Long;-><init>(J)V

    aput-object v10, v9, v4

    new-instance v10, Ljava/lang/Long;

    iget-wide v11, v1, Lcex;->s:J

    invoke-direct {v10, v11, v12}, Ljava/lang/Long;-><init>(J)V

    aput-object v10, v9, v13

    new-instance v10, Ljava/lang/Long;

    iget-wide v11, v1, Lcex;->t:J

    invoke-direct {v10, v11, v12}, Ljava/lang/Long;-><init>(J)V

    const/4 v8, 0x2

    aput-object v10, v9, v8

    invoke-interface {v2, v3, v5, v6, v9}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 725
    new-instance v2, Lceu;

    iget-object v3, v1, Lcex;->h:Lcew;

    invoke-virtual {v3}, Lcew;->h()Lcee;

    move-result-object v3

    invoke-interface {v3}, Lcee;->b()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lceu;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_7

    .line 727
    invoke-virtual {v2, v0}, Lceu;->a(Lced;)V

    .line 729
    :cond_7
    iget-object v0, v1, Lcex;->g:Lcfb;

    iget-object v3, v1, Lcex;->v:Lcgs;

    invoke-virtual {v0, v2, v3}, Lcfb;->a(Lceu;Lcgs;)V

    .line 730
    iget-object v0, v1, Lcex;->f:Ljava/util/Vector;

    iget-object v3, v1, Lcex;->v:Lcgs;

    invoke-virtual {v0, v3, v4}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 732
    invoke-virtual/range {p0 .. p0}, Lcex;->a()J

    move-result-wide v5

    .line 735
    invoke-virtual/range {p0 .. p0}, Lcex;->h()V

    move-wide/from16 v16, v5

    move-object v5, v2

    move-wide/from16 v2, v16

    goto :goto_2

    .line 738
    :cond_8
    sget-object v0, Lcex;->b:Lcgw;

    sget-object v6, Lcex;->a:Ljava/lang/String;

    const-string v8, "checkForActivity"

    const-string v9, "634"

    invoke-interface {v0, v6, v8, v9, v5}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-wide/16 v8, 0x1

    .line 739
    invoke-virtual/range {p0 .. p0}, Lcex;->a()J

    move-result-wide v10

    iget-wide v14, v1, Lcex;->s:J

    sub-long/2addr v2, v14

    sub-long/2addr v10, v2

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 682
    :goto_2
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 743
    sget-object v0, Lcex;->b:Lcgw;

    sget-object v6, Lcex;->a:Ljava/lang/String;

    new-array v7, v13, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Long;

    invoke-direct {v8, v2, v3}, Ljava/lang/Long;-><init>(J)V

    aput-object v8, v7, v4

    const-string v4, "checkForActivity"

    const-string v8, "624"

    invoke-interface {v0, v6, v4, v8, v7}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 744
    iget-object v0, v1, Lcex;->D:Lces;

    invoke-interface {v0, v2, v3}, Lces;->a(J)V

    goto :goto_3

    :catchall_0
    move-exception v0

    .line 682
    :try_start_2
    monitor-exit v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_9
    :goto_3
    return-object v5

    :catchall_1
    move-exception v0

    .line 664
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0
.end method

.method public a(Lceo;)Ljava/util/Vector;
    .locals 5

    .line 1164
    sget-object v0, Lcex;->b:Lcgw;

    sget-object v1, Lcex;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "resolveOldTokens"

    const-string v4, "632"

    invoke-interface {v0, v1, v3, v4, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    .line 1171
    new-instance p1, Lceo;

    const/16 v0, 0x7d66

    invoke-direct {p1, v0}, Lceo;-><init>(I)V

    .line 1178
    :cond_0
    iget-object v0, p0, Lcex;->g:Lcfb;

    invoke-virtual {v0}, Lcfb;->c()Ljava/util/Vector;

    move-result-object v0

    .line 1179
    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v1

    .line 1180
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v0

    .line 1181
    :cond_2
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lceu;

    .line 1182
    monitor-enter v2

    .line 1183
    :try_start_0
    invoke-virtual {v2}, Lceu;->h()Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, v2, Lceu;->a:Lcfn;

    invoke-virtual {v3}, Lcfn;->e()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Lceu;->b()Lceo;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1184
    iget-object v3, v2, Lceu;->a:Lcfn;

    invoke-virtual {v3, p1}, Lcfn;->a(Lceo;)V

    .line 1182
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1187
    instance-of v3, v2, Lcen;

    if-nez v3, :cond_1

    .line 1190
    iget-object v3, p0, Lcex;->g:Lcfb;

    iget-object v2, v2, Lceu;->a:Lcfn;

    invoke-virtual {v2}, Lcfn;->o()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcfb;->b(Ljava/lang/String;)Lceu;

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 1182
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected a(I)V
    .locals 1

    .line 174
    iput p1, p0, Lcex;->m:I

    .line 175
    new-instance p1, Ljava/util/Vector;

    iget v0, p0, Lcex;->m:I

    invoke-direct {p1, v0}, Ljava/util/Vector;-><init>(I)V

    iput-object p1, p0, Lcex;->e:Ljava/util/Vector;

    return-void
.end method

.method protected a(J)V
    .locals 2

    const-wide/16 v0, 0x3e8

    mul-long/2addr p1, v0

    .line 178
    iput-wide p1, p0, Lcex;->j:J

    return-void
.end method

.method protected a(Lceu;)V
    .locals 8

    .line 1075
    iget-object v0, p1, Lceu;->a:Lcfn;

    invoke-virtual {v0}, Lcfn;->l()Lcgs;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1077
    instance-of v1, v0, Lcfz;

    if-eqz v1, :cond_2

    .line 1080
    sget-object v1, Lcex;->b:Lcgw;

    sget-object v2, Lcex;->a:Ljava/lang/String;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    .line 1081
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcgs;->j()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const/4 p1, 0x2

    aput-object v0, v3, p1

    const-string v6, "notifyComplete"

    const-string v7, "629"

    .line 1080
    invoke-interface {v1, v2, v6, v7, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1083
    move-object v1, v0

    check-cast v1, Lcfz;

    .line 1085
    instance-of v2, v1, Lcgi;

    if-eqz v2, :cond_0

    .line 1088
    iget-object p1, p0, Lcex;->l:Lcel;

    invoke-direct {p0, v0}, Lcex;->e(Lcgs;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcel;->remove(Ljava/lang/String;)V

    .line 1089
    iget-object p1, p0, Lcex;->l:Lcel;

    invoke-direct {p0, v0}, Lcex;->h(Lcgs;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lcel;->remove(Ljava/lang/String;)V

    .line 1090
    iget-object p1, p0, Lcex;->A:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Lcfz;->j()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1091
    invoke-direct {p0}, Lcex;->m()V

    .line 1092
    invoke-virtual {v0}, Lcgs;->j()I

    move-result p1

    invoke-direct {p0, p1}, Lcex;->d(I)V

    .line 1093
    iget-object p1, p0, Lcex;->g:Lcfb;

    invoke-virtual {p1, v0}, Lcfb;->b(Lcgs;)Lceu;

    .line 1095
    sget-object p1, Lcex;->b:Lcgw;

    sget-object v0, Lcex;->a:Ljava/lang/String;

    .line 1096
    new-array v2, v4, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v1}, Lcfz;->j()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v5

    const-string v1, "650"

    .line 1095
    invoke-interface {p1, v0, v6, v1, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1097
    :cond_0
    instance-of v2, v1, Lcgj;

    if-eqz v2, :cond_1

    .line 1099
    iget-object v2, p0, Lcex;->l:Lcel;

    invoke-direct {p0, v0}, Lcex;->e(Lcgs;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcel;->remove(Ljava/lang/String;)V

    .line 1100
    iget-object v2, p0, Lcex;->l:Lcel;

    invoke-direct {p0, v0}, Lcex;->f(Lcgs;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcel;->remove(Ljava/lang/String;)V

    .line 1101
    iget-object v2, p0, Lcex;->l:Lcel;

    invoke-direct {p0, v0}, Lcex;->h(Lcgs;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcel;->remove(Ljava/lang/String;)V

    .line 1102
    iget-object v2, p0, Lcex;->z:Ljava/util/Hashtable;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v1}, Lcfz;->j()I

    move-result v7

    invoke-direct {v3, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1104
    iget v2, p0, Lcex;->o:I

    sub-int/2addr v2, v4

    iput v2, p0, Lcex;->o:I

    .line 1105
    invoke-direct {p0}, Lcex;->m()V

    .line 1106
    invoke-virtual {v0}, Lcgs;->j()I

    move-result v2

    invoke-direct {p0, v2}, Lcex;->d(I)V

    .line 1107
    iget-object v2, p0, Lcex;->g:Lcfb;

    invoke-virtual {v2, v0}, Lcfb;->b(Lcgs;)Lceu;

    .line 1110
    sget-object v0, Lcex;->b:Lcgw;

    sget-object v2, Lcex;->a:Ljava/lang/String;

    new-array p1, p1, [Ljava/lang/Object;

    .line 1111
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v1}, Lcfz;->j()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, p1, v5

    .line 1112
    new-instance v1, Ljava/lang/Integer;

    iget v3, p0, Lcex;->o:I

    invoke-direct {v1, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v1, p1, v4

    const-string v1, "645"

    .line 1110
    invoke-interface {v0, v2, v6, v1, p1}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1115
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcex;->f()Z

    :cond_2
    return-void
.end method

.method protected a(Lcfz;)V
    .locals 7

    .line 936
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcex;->t:J

    .line 939
    sget-object v0, Lcex;->b:Lcgw;

    sget-object v1, Lcex;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 940
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcfz;->j()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const-string v5, "notifyReceivedAck"

    const-string v6, "627"

    .line 939
    invoke-interface {v0, v1, v5, v6, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 942
    iget-object v0, p0, Lcex;->g:Lcfb;

    invoke-virtual {v0, p1}, Lcfb;->a(Lcgs;)Lceu;

    move-result-object v0

    if-nez v0, :cond_0

    .line 947
    sget-object v0, Lcex;->b:Lcgw;

    sget-object v1, Lcex;->a:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    .line 948
    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcfz;->j()I

    move-result p1

    invoke-direct {v3, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v2, v4

    const-string p1, "notifyReceivedAck"

    const-string v3, "662"

    .line 947
    invoke-interface {v0, v1, p1, v3, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 949
    :cond_0
    instance-of v1, p1, Lcgk;

    if-eqz v1, :cond_1

    .line 954
    new-instance v1, Lcgl;

    check-cast p1, Lcgk;

    invoke-direct {v1, p1}, Lcgl;-><init>(Lcgk;)V

    .line 955
    invoke-virtual {p0, v1, v0}, Lcex;->a(Lcgs;Lceu;)V

    goto/16 :goto_1

    .line 956
    :cond_1
    instance-of v1, p1, Lcgi;

    const/4 v2, 0x0

    if-nez v1, :cond_8

    instance-of v1, p1, Lcgj;

    if-eqz v1, :cond_2

    goto/16 :goto_0

    .line 962
    :cond_2
    instance-of v1, p1, Lcgh;

    if-eqz v1, :cond_4

    .line 963
    iget-object v1, p0, Lcex;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 964
    :try_start_0
    iget v5, p0, Lcex;->x:I

    sub-int/2addr v5, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    iput v5, p0, Lcex;->x:I

    .line 965
    invoke-virtual {p0, p1, v0, v2}, Lcex;->a(Lcgs;Lceu;Lceo;)V

    .line 966
    iget v0, p0, Lcex;->x:I

    if-nez v0, :cond_3

    .line 967
    iget-object v0, p0, Lcex;->g:Lcfb;

    invoke-virtual {v0, p1}, Lcfb;->b(Lcgs;)Lceu;

    .line 963
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 971
    sget-object p1, Lcex;->b:Lcgw;

    sget-object v0, Lcex;->a:Ljava/lang/String;

    new-array v1, v3, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcex;->x:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    aput-object v2, v1, v4

    const-string v2, "notifyReceivedAck"

    const-string v3, "636"

    invoke-interface {p1, v0, v2, v3, v1}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 963
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 972
    :cond_4
    instance-of v1, p1, Lcga;

    if-eqz v1, :cond_7

    .line 973
    move-object v1, p1

    check-cast v1, Lcga;

    invoke-virtual {v1}, Lcga;->w_()I

    move-result v3

    if-nez v3, :cond_6

    .line 975
    iget-object v5, p0, Lcex;->p:Ljava/lang/Object;

    monitor-enter v5

    .line 976
    :try_start_2
    iget-boolean v3, p0, Lcex;->k:Z

    if-eqz v3, :cond_5

    .line 977
    invoke-virtual {p0}, Lcex;->c()V

    .line 980
    iget-object v3, p0, Lcex;->g:Lcfb;

    invoke-virtual {v3, v0, p1}, Lcfb;->a(Lceu;Lcgs;)V

    .line 982
    :cond_5
    iput v4, p0, Lcex;->o:I

    .line 983
    iput v4, p0, Lcex;->n:I

    .line 984
    invoke-direct {p0}, Lcex;->l()V

    .line 985
    invoke-virtual {p0}, Lcex;->g()V

    .line 975
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 992
    iget-object v3, p0, Lcex;->h:Lcew;

    invoke-virtual {v3, v1, v2}, Lcew;->a(Lcga;Lceo;)V

    .line 993
    invoke-virtual {p0, p1, v0, v2}, Lcex;->a(Lcgs;Lceu;Lceo;)V

    .line 994
    iget-object v0, p0, Lcex;->g:Lcfb;

    invoke-virtual {v0, p1}, Lcfb;->b(Lcgs;)Lceu;

    .line 997
    iget-object p1, p0, Lcex;->p:Ljava/lang/Object;

    monitor-enter p1

    .line 998
    :try_start_3
    iget-object v0, p0, Lcex;->p:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 997
    monitor-exit p1

    goto :goto_1

    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_2
    move-exception p1

    .line 975
    :try_start_4
    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    .line 988
    :cond_6
    invoke-static {v3}, Lcfe;->a(I)Lceo;

    move-result-object p1

    .line 989
    throw p1

    .line 1001
    :cond_7
    invoke-virtual {p0, p1, v0, v2}, Lcex;->a(Lcgs;Lceu;Lceo;)V

    .line 1002
    invoke-virtual {p1}, Lcfz;->j()I

    move-result v0

    invoke-direct {p0, v0}, Lcex;->d(I)V

    .line 1003
    iget-object v0, p0, Lcex;->g:Lcfb;

    invoke-virtual {v0, p1}, Lcfb;->b(Lcgs;)Lceu;

    goto :goto_1

    .line 959
    :cond_8
    :goto_0
    invoke-virtual {p0, p1, v0, v2}, Lcex;->a(Lcgs;Lceu;Lceo;)V

    .line 1006
    :goto_1
    invoke-virtual {p0}, Lcex;->f()Z

    return-void
.end method

.method protected a(Lcgm;)V
    .locals 9

    .line 621
    iget-object v0, p0, Lcex;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 623
    :try_start_0
    sget-object v1, Lcex;->b:Lcgw;

    sget-object v2, Lcex;->a:Ljava/lang/String;

    const-string v3, "undo"

    const-string v4, "618"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcgm;->j()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcgm;->h()Lcep;

    move-result-object v8

    invoke-virtual {v8}, Lcep;->c()I

    move-result v8

    invoke-direct {v6, v8}, Ljava/lang/Integer;-><init>(I)V

    const/4 v8, 0x1

    aput-object v6, v5, v8

    invoke-interface {v1, v2, v3, v4, v5}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 625
    invoke-virtual {p1}, Lcgm;->h()Lcep;

    move-result-object v1

    invoke-virtual {v1}, Lcep;->c()I

    move-result v1

    if-ne v1, v8, :cond_0

    .line 626
    iget-object v1, p0, Lcex;->A:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcgm;->j()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 628
    :cond_0
    iget-object v1, p0, Lcex;->z:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcgm;->j()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 630
    :goto_0
    iget-object v1, p0, Lcex;->e:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 631
    iget-object v1, p0, Lcex;->l:Lcel;

    invoke-direct {p0, p1}, Lcex;->e(Lcgs;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcel;->remove(Ljava/lang/String;)V

    .line 632
    iget-object v1, p0, Lcex;->g:Lcfb;

    invoke-virtual {v1, p1}, Lcfb;->b(Lcgs;)Lceu;

    .line 633
    invoke-virtual {p1}, Lcgm;->h()Lcep;

    move-result-object v1

    invoke-virtual {v1}, Lcep;->c()I

    move-result v1

    if-lez v1, :cond_1

    .line 635
    invoke-virtual {p1}, Lcgm;->j()I

    move-result v1

    invoke-direct {p0, v1}, Lcex;->d(I)V

    .line 637
    invoke-virtual {p1, v7}, Lcgm;->a(I)V

    .line 640
    :cond_1
    invoke-virtual {p0}, Lcex;->f()Z

    .line 621
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcgs;)V
    .locals 8

    const-string v0, "513"

    const-string v1, "persistBufferedMessage"

    .line 576
    invoke-direct {p0, p1}, Lcex;->h(Lcgs;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 580
    :try_start_0
    invoke-direct {p0}, Lcex;->n()I

    move-result v5

    invoke-virtual {p1, v5}, Lcgs;->a(I)V

    .line 581
    invoke-direct {p0, p1}, Lcex;->h(Lcgs;)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Lceo; {:try_start_0 .. :try_end_0} :catch_1

    .line 583
    :try_start_1
    iget-object v5, p0, Lcex;->l:Lcel;

    move-object v6, p1

    check-cast v6, Lcgm;

    invoke-interface {v5, v2, v6}, Lcel;->put(Ljava/lang/String;Lceq;)V
    :try_end_1
    .catch Lcer; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lceo; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 586
    :catch_0
    :try_start_2
    sget-object v5, Lcex;->b:Lcgw;

    sget-object v6, Lcex;->a:Ljava/lang/String;

    const-string v7, "515"

    invoke-interface {v5, v6, v1, v7}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    iget-object v5, p0, Lcex;->l:Lcel;

    iget-object v6, p0, Lcex;->h:Lcew;

    invoke-virtual {v6}, Lcew;->h()Lcee;

    move-result-object v6

    invoke-interface {v6}, Lcee;->b()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcex;->h:Lcew;

    invoke-virtual {v7}, Lcew;->h()Lcee;

    move-result-object v7

    invoke-interface {v7}, Lcee;->c()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lcel;->open(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    iget-object v5, p0, Lcex;->l:Lcel;

    check-cast p1, Lcgm;

    invoke-interface {v5, v2, p1}, Lcel;->put(Ljava/lang/String;Lceq;)V

    .line 591
    :goto_0
    sget-object p1, Lcex;->b:Lcgw;

    sget-object v5, Lcex;->a:Ljava/lang/String;

    new-array v6, v4, [Ljava/lang/Object;

    aput-object v2, v6, v3

    invoke-interface {p1, v5, v1, v0, v6}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Lceo; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 594
    :catch_1
    sget-object p1, Lcex;->b:Lcgw;

    sget-object v5, Lcex;->a:Ljava/lang/String;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    invoke-interface {p1, v5, v1, v0, v4}, Lcgw;->warning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method public a(Lcgs;Lceu;)V
    .locals 12

    .line 486
    invoke-virtual {p1}, Lcgs;->B_()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcgs;->j()I

    move-result v0

    if-nez v0, :cond_2

    .line 487
    instance-of v0, p1, Lcgm;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcgm;

    invoke-virtual {v0}, Lcgm;->h()Lcep;

    move-result-object v0

    invoke-virtual {v0}, Lcep;->c()I

    move-result v0

    if-eqz v0, :cond_0

    .line 488
    invoke-direct {p0}, Lcex;->n()I

    move-result v0

    invoke-virtual {p1, v0}, Lcgs;->a(I)V

    goto :goto_0

    .line 489
    :cond_0
    instance-of v0, p1, Lcgi;

    if-nez v0, :cond_1

    .line 490
    instance-of v0, p1, Lcgk;

    if-nez v0, :cond_1

    .line 491
    instance-of v0, p1, Lcgl;

    if-nez v0, :cond_1

    .line 492
    instance-of v0, p1, Lcgj;

    if-nez v0, :cond_1

    .line 493
    instance-of v0, p1, Lcgp;

    if-nez v0, :cond_1

    .line 494
    instance-of v0, p1, Lcgo;

    if-nez v0, :cond_1

    .line 495
    instance-of v0, p1, Lcgr;

    if-nez v0, :cond_1

    .line 496
    instance-of v0, p1, Lcgq;

    if-eqz v0, :cond_2

    .line 497
    :cond_1
    invoke-direct {p0}, Lcex;->n()I

    move-result v0

    invoke-virtual {p1, v0}, Lcgs;->a(I)V

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    .line 502
    :try_start_0
    iget-object v0, p2, Lceu;->a:Lcfn;

    invoke-virtual {p1}, Lcgs;->j()I

    move-result v1

    invoke-virtual {v0, v1}, Lcfn;->a(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 507
    :catch_0
    :cond_3
    instance-of v0, p1, Lcgm;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_7

    .line 508
    iget-object v0, p0, Lcex;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 509
    :try_start_1
    iget v4, p0, Lcex;->n:I

    iget v5, p0, Lcex;->m:I

    if-ge v4, v5, :cond_6

    .line 516
    move-object v4, p1

    check-cast v4, Lcgm;

    invoke-virtual {v4}, Lcgm;->h()Lcep;

    move-result-object v4

    .line 518
    sget-object v5, Lcex;->b:Lcgw;

    sget-object v6, Lcex;->a:Ljava/lang/String;

    const-string v7, "send"

    const-string v8, "628"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    new-instance v10, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcgs;->j()I

    move-result v11

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    aput-object v10, v9, v3

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {v4}, Lcep;->c()I

    move-result v10

    invoke-direct {v3, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v9, v2

    aput-object p1, v9, v1

    invoke-interface {v5, v6, v7, v8, v9}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 520
    invoke-virtual {v4}, Lcep;->c()I

    move-result v3

    if-eq v3, v2, :cond_5

    if-eq v3, v1, :cond_4

    goto :goto_1

    .line 522
    :cond_4
    iget-object v1, p0, Lcex;->z:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcgs;->j()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget-object v1, p0, Lcex;->l:Lcel;

    invoke-direct {p0, p1}, Lcex;->e(Lcgs;)Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcgm;

    invoke-interface {v1, v2, v3}, Lcel;->put(Ljava/lang/String;Lceq;)V

    goto :goto_1

    .line 526
    :cond_5
    iget-object v1, p0, Lcex;->A:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcgs;->j()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1, v2, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    iget-object v1, p0, Lcex;->l:Lcel;

    invoke-direct {p0, p1}, Lcex;->e(Lcgs;)Ljava/lang/String;

    move-result-object v2

    move-object v3, p1

    check-cast v3, Lcgm;

    invoke-interface {v1, v2, v3}, Lcel;->put(Ljava/lang/String;Lceq;)V

    .line 530
    :goto_1
    iget-object v1, p0, Lcex;->g:Lcfb;

    invoke-virtual {v1, p2, p1}, Lcfb;->a(Lceu;Lcgs;)V

    .line 531
    iget-object p2, p0, Lcex;->e:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 532
    iget-object p1, p0, Lcex;->p:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 508
    monitor-exit v0

    goto/16 :goto_3

    .line 511
    :cond_6
    sget-object p1, Lcex;->b:Lcgw;

    sget-object p2, Lcex;->a:Ljava/lang/String;

    const-string v1, "send"

    const-string v4, "613"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    iget v6, p0, Lcex;->n:I

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v2, v3

    invoke-interface {p1, p2, v1, v4, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 513
    new-instance p1, Lceo;

    const/16 p2, 0x7dca

    invoke-direct {p1, p2}, Lceo;-><init>(I)V

    throw p1

    :catchall_0
    move-exception p1

    .line 508
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 536
    :cond_7
    sget-object v0, Lcex;->b:Lcgw;

    sget-object v4, Lcex;->a:Ljava/lang/String;

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcgs;->j()I

    move-result v6

    invoke-direct {v5, v6}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v1, v3

    aput-object p1, v1, v2

    const-string v2, "send"

    const-string v5, "615"

    invoke-interface {v0, v4, v2, v5, v1}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 538
    instance-of v0, p1, Lcgb;

    if-eqz v0, :cond_8

    .line 539
    iget-object v0, p0, Lcex;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 542
    :try_start_2
    iget-object v1, p0, Lcex;->g:Lcfb;

    invoke-virtual {v1, p2, p1}, Lcfb;->a(Lceu;Lcgs;)V

    .line 543
    iget-object p2, p0, Lcex;->f:Ljava/util/Vector;

    invoke-virtual {p2, p1, v3}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    .line 544
    iget-object p1, p0, Lcex;->p:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 539
    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p1

    .line 547
    :cond_8
    instance-of v0, p1, Lcgg;

    if-eqz v0, :cond_9

    .line 548
    iput-object p1, p0, Lcex;->v:Lcgs;

    goto :goto_2

    .line 550
    :cond_9
    instance-of v0, p1, Lcgl;

    if-eqz v0, :cond_a

    .line 551
    iget-object v0, p0, Lcex;->z:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcgs;->j()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    iget-object v0, p0, Lcex;->l:Lcel;

    invoke-direct {p0, p1}, Lcex;->f(Lcgs;)Ljava/lang/String;

    move-result-object v1

    move-object v2, p1

    check-cast v2, Lcgl;

    invoke-interface {v0, v1, v2}, Lcel;->put(Ljava/lang/String;Lceq;)V

    goto :goto_2

    .line 554
    :cond_a
    instance-of v0, p1, Lcgj;

    if-eqz v0, :cond_b

    .line 555
    iget-object v0, p0, Lcex;->l:Lcel;

    invoke-direct {p0, p1}, Lcex;->g(Lcgs;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcel;->remove(Ljava/lang/String;)V

    .line 558
    :cond_b
    :goto_2
    iget-object v0, p0, Lcex;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 559
    :try_start_3
    instance-of v1, p1, Lcfz;

    if-nez v1, :cond_c

    .line 560
    iget-object v1, p0, Lcex;->g:Lcfb;

    invoke-virtual {v1, p2, p1}, Lcfb;->a(Lceu;Lcgs;)V

    .line 562
    :cond_c
    iget-object p2, p0, Lcex;->f:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 563
    iget-object p1, p0, Lcex;->p:Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->notifyAll()V

    .line 558
    monitor-exit v0

    :goto_3
    return-void

    :catchall_2
    move-exception p1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    throw p1
.end method

.method protected a(Lcgs;Lceu;Lceo;)V
    .locals 8

    .line 1122
    iget-object v0, p2, Lceu;->a:Lcfn;

    invoke-virtual {v0, p1, p3}, Lcfn;->a(Lcgs;Lceo;)V

    .line 1123
    iget-object v0, p2, Lceu;->a:Lcfn;

    invoke-virtual {v0}, Lcfn;->g()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const-string v3, "notifyResult"

    if-eqz p1, :cond_0

    .line 1126
    instance-of v4, p1, Lcfz;

    if-eqz v4, :cond_0

    instance-of v4, p1, Lcgk;

    if-nez v4, :cond_0

    .line 1128
    sget-object v4, Lcex;->b:Lcgw;

    sget-object v5, Lcex;->a:Ljava/lang/String;

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p2, Lceu;->a:Lcfn;

    invoke-virtual {v7}, Lcfn;->o()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    aput-object p1, v6, v0

    aput-object p3, v6, v2

    const-string v7, "648"

    invoke-interface {v4, v5, v3, v7, v6}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1129
    iget-object v4, p0, Lcex;->i:Lcey;

    invoke-virtual {v4, p2}, Lcey;->b(Lceu;)V

    :cond_0
    if-nez p1, :cond_1

    .line 1135
    sget-object p1, Lcex;->b:Lcgw;

    sget-object v4, Lcex;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p2, Lceu;->a:Lcfn;

    invoke-virtual {v5}, Lcfn;->o()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    aput-object p3, v2, v0

    const-string p3, "649"

    invoke-interface {p1, v4, v3, p3, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1136
    iget-object p1, p0, Lcex;->i:Lcey;

    invoke-virtual {p1, p2}, Lcey;->b(Lceu;)V

    :cond_1
    return-void
.end method

.method protected a(Z)V
    .locals 0

    .line 184
    iput-boolean p1, p0, Lcex;->k:Z

    return-void
.end method

.method public b(I)V
    .locals 5

    if-lez p1, :cond_0

    .line 844
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcex;->s:J

    .line 847
    :cond_0
    sget-object v0, Lcex;->b:Lcgw;

    sget-object v1, Lcex;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 848
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const-string p1, "notifySentBytes"

    const-string v3, "643"

    .line 847
    invoke-interface {v0, v1, p1, v3, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public b(J)V
    .locals 11

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_2

    .line 1273
    sget-object v0, Lcex;->b:Lcgw;

    sget-object v1, Lcex;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "quiesce"

    const-string v6, "637"

    invoke-interface {v0, v1, v4, v6, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1274
    iget-object v0, p0, Lcex;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 1275
    :try_start_0
    iput-boolean v2, p0, Lcex;->r:Z

    .line 1274
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 1278
    iget-object v0, p0, Lcex;->i:Lcey;

    invoke-virtual {v0}, Lcey;->b()V

    .line 1279
    invoke-virtual {p0}, Lcex;->h()V

    .line 1281
    iget-object v1, p0, Lcex;->q:Ljava/lang/Object;

    monitor-enter v1

    .line 1286
    :try_start_1
    iget-object v0, p0, Lcex;->g:Lcfb;

    invoke-virtual {v0}, Lcfb;->e()I

    move-result v0

    if-gtz v0, :cond_0

    .line 1287
    iget-object v3, p0, Lcex;->f:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-gtz v3, :cond_0

    iget-object v3, p0, Lcex;->i:Lcey;

    invoke-virtual {v3}, Lcey;->c()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1289
    :cond_0
    sget-object v3, Lcex;->b:Lcgw;

    sget-object v4, Lcex;->a:Ljava/lang/String;

    const-string v6, "quiesce"

    const-string v7, "639"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    iget v10, p0, Lcex;->n:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v5

    new-instance v9, Ljava/lang/Integer;

    iget-object v10, p0, Lcex;->f:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v2

    const/4 v2, 0x2

    new-instance v9, Ljava/lang/Integer;

    iget v10, p0, Lcex;->o:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v2

    const/4 v2, 0x3

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v8, v2

    invoke-interface {v3, v4, v6, v7, v8}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1293
    iget-object v0, p0, Lcex;->q:Ljava/lang/Object;

    invoke-virtual {v0, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 1281
    :catch_0
    :cond_1
    :goto_0
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1303
    iget-object p1, p0, Lcex;->p:Ljava/lang/Object;

    monitor-enter p1

    .line 1304
    :try_start_3
    iget-object p2, p0, Lcex;->e:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->clear()V

    .line 1305
    iget-object p2, p0, Lcex;->f:Ljava/util/Vector;

    invoke-virtual {p2}, Ljava/util/Vector;->clear()V

    .line 1306
    iput-boolean v5, p0, Lcex;->r:Z

    .line 1307
    iput v5, p0, Lcex;->n:I

    .line 1303
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 1310
    sget-object p1, Lcex;->b:Lcgw;

    sget-object p2, Lcex;->a:Ljava/lang/String;

    const-string v0, "quiesce"

    const-string v1, "640"

    invoke-interface {p1, p2, v0, v1}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catchall_1
    move-exception p2

    .line 1303
    :try_start_4
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p2

    .line 1281
    :goto_1
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw p1

    :catchall_2
    move-exception p1

    .line 1274
    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p1

    :cond_2
    :goto_2
    return-void
.end method

.method public b(Lceo;)V
    .locals 5

    .line 1203
    sget-object v0, Lcex;->b:Lcgw;

    sget-object v1, Lcex;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string p1, "disconnected"

    const-string v4, "633"

    invoke-interface {v0, v1, p1, v4, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1205
    iput-boolean v3, p0, Lcex;->y:Z

    .line 1208
    :try_start_0
    iget-boolean p1, p0, Lcex;->k:Z

    if-eqz p1, :cond_0

    .line 1209
    invoke-virtual {p0}, Lcex;->c()V

    .line 1212
    :cond_0
    iget-object p1, p0, Lcex;->e:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 1213
    iget-object p1, p0, Lcex;->f:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    .line 1214
    iget-object p1, p0, Lcex;->w:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Lceo; {:try_start_0 .. :try_end_0} :catch_0

    .line 1216
    :try_start_1
    iput v3, p0, Lcex;->x:I

    .line 1214
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Lceo; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method protected b(Lcgm;)V
    .locals 5

    .line 1327
    sget-object v0, Lcex;->b:Lcgw;

    sget-object v1, Lcex;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v3, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcgm;->j()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "deliveryComplete"

    const-string v4, "641"

    invoke-interface {v0, v1, v3, v4, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1329
    iget-object v0, p0, Lcex;->l:Lcel;

    invoke-direct {p0, p1}, Lcex;->g(Lcgs;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcel;->remove(Ljava/lang/String;)V

    .line 1330
    iget-object v0, p0, Lcex;->C:Ljava/util/Hashtable;

    new-instance v1, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcgm;->j()I

    move-result p1

    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public b(Lcgs;)V
    .locals 8

    const-string v0, "unPersistBufferedMessage"

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 605
    :try_start_0
    sget-object v3, Lcex;->b:Lcgw;

    sget-object v4, Lcex;->a:Ljava/lang/String;

    const-string v5, "517"

    new-array v6, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcgs;->e()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    invoke-interface {v3, v4, v0, v5, v6}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 606
    iget-object v3, p0, Lcex;->l:Lcel;

    invoke-direct {p0, p1}, Lcex;->h(Lcgs;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcel;->remove(Ljava/lang/String;)V
    :try_end_0
    .catch Lcer; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 609
    :catch_0
    sget-object v3, Lcex;->b:Lcgw;

    sget-object v4, Lcex;->a:Ljava/lang/String;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcgs;->e()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    const-string p1, "518"

    invoke-interface {v3, v4, v0, p1, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method protected b()Z
    .locals 1

    .line 187
    iget-boolean v0, p0, Lcex;->k:Z

    return v0
.end method

.method protected c()V
    .locals 4

    .line 213
    sget-object v0, Lcex;->b:Lcgw;

    sget-object v1, Lcex;->a:Ljava/lang/String;

    const-string v2, "clearState"

    const-string v3, ">"

    invoke-interface {v0, v1, v2, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget-object v0, p0, Lcex;->l:Lcel;

    invoke-interface {v0}, Lcel;->clear()V

    .line 216
    iget-object v0, p0, Lcex;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 217
    iget-object v0, p0, Lcex;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 218
    iget-object v0, p0, Lcex;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 219
    iget-object v0, p0, Lcex;->z:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 220
    iget-object v0, p0, Lcex;->A:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 221
    iget-object v0, p0, Lcex;->B:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 222
    iget-object v0, p0, Lcex;->C:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 223
    iget-object v0, p0, Lcex;->g:Lcfb;

    invoke-virtual {v0}, Lcfb;->d()V

    return-void
.end method

.method public c(I)V
    .locals 5

    if-lez p1, :cond_0

    .line 921
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcex;->t:J

    .line 924
    :cond_0
    sget-object v0, Lcex;->b:Lcgw;

    sget-object v1, Lcex;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 925
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const-string p1, "notifyReceivedBytes"

    const-string v3, "630"

    .line 924
    invoke-interface {v0, v1, p1, v3, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected c(Lcgs;)V
    .locals 8

    .line 859
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcex;->s:J

    .line 861
    sget-object v0, Lcex;->b:Lcgw;

    sget-object v1, Lcex;->a:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcgs;->e()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "notifySent"

    const-string v6, "625"

    invoke-interface {v0, v1, v4, v6, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 863
    iget-object v0, p0, Lcex;->g:Lcfb;

    invoke-virtual {v0, p1}, Lcfb;->a(Lcgs;)Lceu;

    move-result-object v0

    .line 864
    iget-object v1, v0, Lceu;->a:Lcfn;

    invoke-virtual {v1}, Lcfn;->i()V

    .line 865
    instance-of v1, p1, Lcgg;

    if-eqz v1, :cond_0

    .line 866
    iget-object v1, p0, Lcex;->w:Ljava/lang/Object;

    monitor-enter v1

    .line 867
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 868
    iget-object p1, p0, Lcex;->w:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 869
    :try_start_1
    iput-wide v3, p0, Lcex;->u:J

    .line 870
    iget v0, p0, Lcex;->x:I

    add-int/2addr v0, v2

    iput v0, p0, Lcex;->x:I

    .line 868
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 873
    :try_start_2
    sget-object p1, Lcex;->b:Lcgw;

    sget-object v0, Lcex;->a:Ljava/lang/String;

    const-string v3, "notifySent"

    const-string v4, "635"

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcex;->x:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v2, v5

    invoke-interface {p1, v0, v3, v4, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 866
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 868
    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception p1

    .line 866
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    .line 876
    :cond_0
    instance-of v1, p1, Lcgm;

    if-eqz v1, :cond_1

    .line 877
    move-object v1, p1

    check-cast v1, Lcgm;

    invoke-virtual {v1}, Lcgm;->h()Lcep;

    move-result-object v1

    invoke-virtual {v1}, Lcep;->c()I

    move-result v1

    if-nez v1, :cond_1

    .line 880
    iget-object v1, v0, Lceu;->a:Lcfn;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v2}, Lcfn;->a(Lcgs;Lceo;)V

    .line 881
    iget-object v1, p0, Lcex;->i:Lcey;

    invoke-virtual {v1, v0}, Lcey;->b(Lceu;)V

    .line 882
    invoke-direct {p0}, Lcex;->m()V

    .line 883
    invoke-virtual {p1}, Lcgs;->j()I

    move-result v0

    invoke-direct {p0, v0}, Lcex;->d(I)V

    .line 884
    iget-object v0, p0, Lcex;->g:Lcfb;

    invoke-virtual {v0, p1}, Lcfb;->b(Lcgs;)Lceu;

    .line 885
    invoke-virtual {p0}, Lcex;->f()Z

    :cond_1
    :goto_0
    return-void
.end method

.method protected d()V
    .locals 14

    .line 322
    iget-object v0, p0, Lcex;->l:Lcel;

    invoke-interface {v0}, Lcel;->keys()Ljava/util/Enumeration;

    move-result-object v0

    .line 325
    iget v1, p0, Lcex;->c:I

    .line 326
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 328
    sget-object v3, Lcex;->b:Lcgw;

    sget-object v4, Lcex;->a:Ljava/lang/String;

    const-string v5, "restoreState"

    const-string v6, "600"

    invoke-interface {v3, v4, v5, v6}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v6, 0x1

    if-nez v3, :cond_2

    .line 417
    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v3

    .line 418
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_1

    .line 426
    iput v1, p0, Lcex;->c:I

    return-void

    .line 419
    :cond_1
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 421
    sget-object v2, Lcex;->b:Lcgw;

    sget-object v7, Lcex;->a:Ljava/lang/String;

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v0, v8, v4

    const-string v9, "609"

    invoke-interface {v2, v7, v5, v9, v8}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 423
    iget-object v2, p0, Lcex;->l:Lcel;

    invoke-interface {v2, v0}, Lcel;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 331
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 332
    iget-object v7, p0, Lcex;->l:Lcel;

    invoke-interface {v7, v3}, Lcel;->get(Ljava/lang/String;)Lceq;

    move-result-object v7

    .line 333
    invoke-direct {p0, v3, v7}, Lcex;->a(Ljava/lang/String;Lceq;)Lcgs;

    move-result-object v7

    if-eqz v7, :cond_0

    const-string v8, "r-"

    .line 335
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const/4 v9, 0x2

    if-eqz v8, :cond_3

    .line 337
    sget-object v8, Lcex;->b:Lcgw;

    sget-object v10, Lcex;->a:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v4

    aput-object v7, v9, v6

    const-string v3, "604"

    invoke-interface {v8, v10, v5, v3, v9}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 340
    iget-object v3, p0, Lcex;->C:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v7}, Lcgs;->j()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v7}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    const-string v8, "s-"

    .line 341
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    const-string v10, "608"

    const-string v11, "607"

    if-eqz v8, :cond_7

    .line 342
    move-object v8, v7

    check-cast v8, Lcgm;

    .line 343
    invoke-virtual {v8}, Lcgm;->j()I

    move-result v12

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 344
    iget-object v12, p0, Lcex;->l:Lcel;

    invoke-direct {p0, v8}, Lcex;->f(Lcgs;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lcel;->containsKey(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 345
    iget-object v10, p0, Lcex;->l:Lcel;

    invoke-direct {p0, v8}, Lcex;->f(Lcgs;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11}, Lcel;->get(Ljava/lang/String;)Lceq;

    move-result-object v10

    .line 349
    invoke-direct {p0, v3, v10}, Lcex;->a(Ljava/lang/String;Lceq;)Lcgs;

    move-result-object v10

    check-cast v10, Lcgl;

    if-eqz v10, :cond_4

    .line 353
    sget-object v11, Lcex;->b:Lcgw;

    sget-object v12, Lcex;->a:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v4

    aput-object v7, v9, v6

    const-string v3, "605"

    invoke-interface {v11, v12, v5, v3, v9}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 355
    iget-object v3, p0, Lcex;->z:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v10}, Lcgl;->j()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v10}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 358
    :cond_4
    sget-object v10, Lcex;->b:Lcgw;

    sget-object v11, Lcex;->a:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v4

    aput-object v7, v9, v6

    const-string v3, "606"

    invoke-interface {v10, v11, v5, v3, v9}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 363
    :cond_5
    invoke-virtual {v8, v6}, Lcgm;->a(Z)V

    .line 364
    invoke-virtual {v8}, Lcgm;->h()Lcep;

    move-result-object v12

    invoke-virtual {v12}, Lcep;->c()I

    move-result v12

    if-ne v12, v9, :cond_6

    .line 366
    sget-object v10, Lcex;->b:Lcgw;

    sget-object v12, Lcex;->a:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v4

    aput-object v7, v9, v6

    invoke-interface {v10, v12, v5, v11, v9}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    iget-object v3, p0, Lcex;->z:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v8}, Lcgm;->j()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 371
    :cond_6
    sget-object v11, Lcex;->b:Lcgw;

    sget-object v12, Lcex;->a:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v4

    aput-object v7, v9, v6

    invoke-interface {v11, v12, v5, v10, v9}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    iget-object v3, p0, Lcex;->A:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v8}, Lcgm;->j()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    :goto_2
    iget-object v3, p0, Lcex;->g:Lcfb;

    invoke-virtual {v3, v8}, Lcfb;->a(Lcgm;)Lcen;

    move-result-object v3

    .line 377
    iget-object v3, v3, Lcen;->a:Lcfn;

    iget-object v4, p0, Lcex;->h:Lcew;

    invoke-virtual {v4}, Lcew;->h()Lcee;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcfn;->a(Lcee;)V

    .line 378
    iget-object v3, p0, Lcex;->d:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v8}, Lcgm;->j()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v8}, Lcgm;->j()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_7
    const-string v8, "sb-"

    .line 379
    invoke-virtual {v3, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_a

    .line 382
    move-object v8, v7

    check-cast v8, Lcgm;

    .line 383
    invoke-virtual {v8}, Lcgm;->j()I

    move-result v12

    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 384
    invoke-virtual {v8}, Lcgm;->h()Lcep;

    move-result-object v12

    invoke-virtual {v12}, Lcep;->c()I

    move-result v12

    if-ne v12, v9, :cond_8

    .line 386
    sget-object v10, Lcex;->b:Lcgw;

    sget-object v12, Lcex;->a:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v4

    aput-object v7, v9, v6

    invoke-interface {v10, v12, v5, v11, v9}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 387
    iget-object v3, p0, Lcex;->z:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v8}, Lcgm;->j()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 388
    :cond_8
    invoke-virtual {v8}, Lcgm;->h()Lcep;

    move-result-object v11

    invoke-virtual {v11}, Lcep;->c()I

    move-result v11

    if-ne v11, v6, :cond_9

    .line 390
    sget-object v11, Lcex;->b:Lcgw;

    sget-object v12, Lcex;->a:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v4

    aput-object v7, v9, v6

    invoke-interface {v11, v12, v5, v10, v9}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    iget-object v3, p0, Lcex;->A:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v8}, Lcgm;->j()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 396
    :cond_9
    sget-object v10, Lcex;->b:Lcgw;

    sget-object v11, Lcex;->a:Ljava/lang/String;

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v4

    aput-object v7, v9, v6

    const-string v4, "511"

    invoke-interface {v10, v11, v5, v4, v9}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    iget-object v4, p0, Lcex;->B:Ljava/util/Hashtable;

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v8}, Lcgm;->j()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4, v6, v8}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 399
    iget-object v4, p0, Lcex;->l:Lcel;

    invoke-interface {v4, v3}, Lcel;->remove(Ljava/lang/String;)V

    .line 403
    :goto_3
    iget-object v3, p0, Lcex;->g:Lcfb;

    invoke-virtual {v3, v8}, Lcfb;->a(Lcgm;)Lcen;

    move-result-object v3

    .line 404
    iget-object v3, v3, Lcen;->a:Lcfn;

    iget-object v4, p0, Lcex;->h:Lcew;

    invoke-virtual {v4}, Lcew;->h()Lcee;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcfn;->a(Lcee;)V

    .line 405
    iget-object v3, p0, Lcex;->d:Ljava/util/Hashtable;

    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {v8}, Lcgm;->j()I

    move-result v6

    invoke-direct {v4, v6}, Ljava/lang/Integer;-><init>(I)V

    new-instance v6, Ljava/lang/Integer;

    invoke-virtual {v8}, Lcgm;->j()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v6}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_a
    const-string v4, "sc-"

    .line 408
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 409
    check-cast v7, Lcgl;

    .line 410
    iget-object v4, p0, Lcex;->l:Lcel;

    invoke-direct {p0, v7}, Lcex;->e(Lcgs;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Lcel;->containsKey(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 411
    invoke-virtual {v2, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method protected d(Lcgs;)V
    .locals 7

    .line 1018
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcex;->t:J

    .line 1021
    sget-object v0, Lcex;->b:Lcgw;

    sget-object v1, Lcex;->a:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    .line 1022
    new-instance v4, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcgs;->j()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v4, 0x1

    aput-object p1, v3, v4

    const-string v5, "notifyReceivedMsg"

    const-string v6, "651"

    .line 1021
    invoke-interface {v0, v1, v5, v6, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1024
    iget-boolean v0, p0, Lcex;->r:Z

    if-nez v0, :cond_4

    .line 1025
    instance-of v0, p1, Lcgm;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 1026
    move-object v0, p1

    check-cast v0, Lcgm;

    .line 1027
    invoke-virtual {v0}, Lcgm;->h()Lcep;

    move-result-object v3

    invoke-virtual {v3}, Lcep;->c()I

    move-result v3

    if-eqz v3, :cond_1

    if-eq v3, v4, :cond_1

    if-eq v3, v2, :cond_0

    goto :goto_0

    .line 1035
    :cond_0
    iget-object v2, p0, Lcex;->l:Lcel;

    invoke-direct {p0, p1}, Lcex;->g(Lcgs;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v2, p1, v0}, Lcel;->put(Ljava/lang/String;Lceq;)V

    .line 1037
    iget-object p1, p0, Lcex;->C:Ljava/util/Hashtable;

    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v0}, Lcgm;->j()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {p1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1038
    new-instance p1, Lcgk;

    invoke-direct {p1, v0}, Lcgk;-><init>(Lcgm;)V

    invoke-virtual {p0, p1, v1}, Lcex;->a(Lcgs;Lceu;)V

    goto :goto_0

    .line 1030
    :cond_1
    iget-object p1, p0, Lcex;->i:Lcey;

    if-eqz p1, :cond_4

    .line 1031
    invoke-virtual {p1, v0}, Lcey;->a(Lcgm;)V

    goto :goto_0

    .line 1044
    :cond_2
    instance-of v0, p1, Lcgl;

    if-eqz v0, :cond_4

    .line 1045
    iget-object v0, p0, Lcex;->C:Ljava/util/Hashtable;

    .line 1046
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {p1}, Lcgs;->j()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcgm;

    if-eqz v0, :cond_3

    .line 1048
    iget-object p1, p0, Lcex;->i:Lcey;

    if-eqz p1, :cond_4

    .line 1049
    invoke-virtual {p1, v0}, Lcey;->a(Lcgm;)V

    goto :goto_0

    .line 1053
    :cond_3
    new-instance v0, Lcgj;

    .line 1054
    invoke-virtual {p1}, Lcgs;->j()I

    move-result p1

    .line 1053
    invoke-direct {v0, p1}, Lcgj;-><init>(I)V

    .line 1055
    invoke-virtual {p0, v0, v1}, Lcex;->a(Lcgs;Lceu;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected e()Lcgs;
    .locals 11

    .line 765
    iget-object v0, p0, Lcex;->p:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    move-object v2, v1

    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    :try_start_0
    monitor-exit v0

    return-object v2

    .line 771
    :cond_1
    iget-object v3, p0, Lcex;->e:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcex;->f:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 772
    :cond_2
    iget-object v3, p0, Lcex;->f:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    iget v3, p0, Lcex;->n:I

    iget v4, p0, Lcex;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt v3, v4, :cond_4

    .line 775
    :cond_3
    :try_start_1
    sget-object v3, Lcex;->b:Lcgw;

    sget-object v4, Lcex;->a:Ljava/lang/String;

    const-string v5, "get"

    const-string v6, "644"

    invoke-interface {v3, v4, v5, v6}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    iget-object v3, p0, Lcex;->p:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V

    .line 780
    sget-object v3, Lcex;->b:Lcgw;

    sget-object v4, Lcex;->a:Ljava/lang/String;

    const-string v5, "get"

    const-string v6, "647"

    invoke-interface {v3, v4, v5, v6}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 788
    :catch_0
    :cond_4
    :try_start_2
    iget-boolean v3, p0, Lcex;->y:Z

    const/4 v4, 0x0

    if-nez v3, :cond_6

    .line 789
    iget-object v3, p0, Lcex;->f:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcex;->f:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcgs;

    instance-of v3, v3, Lcgb;

    if-nez v3, :cond_6

    .line 791
    :cond_5
    sget-object v2, Lcex;->b:Lcgw;

    sget-object v3, Lcex;->a:Ljava/lang/String;

    const-string v4, "get"

    const-string v5, "621"

    invoke-interface {v2, v3, v4, v5}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    monitor-exit v0

    return-object v1

    .line 803
    :cond_6
    iget-object v3, p0, Lcex;->f:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    const/4 v5, 0x1

    if-nez v3, :cond_8

    .line 805
    iget-object v2, p0, Lcex;->f:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcgs;

    .line 806
    instance-of v3, v2, Lcgl;

    if-eqz v3, :cond_7

    .line 807
    iget v3, p0, Lcex;->o:I

    add-int/2addr v3, v5

    iput v3, p0, Lcex;->o:I

    .line 810
    sget-object v3, Lcex;->b:Lcgw;

    sget-object v6, Lcex;->a:Ljava/lang/String;

    const-string v7, "get"

    const-string v8, "617"

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    iget v10, p0, Lcex;->o:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v5, v4

    invoke-interface {v3, v6, v7, v8, v5}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 813
    :cond_7
    invoke-virtual {p0}, Lcex;->f()Z

    goto/16 :goto_0

    .line 814
    :cond_8
    iget-object v3, p0, Lcex;->e:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 818
    iget v3, p0, Lcex;->n:I

    iget v6, p0, Lcex;->m:I

    if-ge v3, v6, :cond_9

    .line 821
    iget-object v2, p0, Lcex;->e:Ljava/util/Vector;

    invoke-virtual {v2, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcgs;

    .line 822
    iget-object v3, p0, Lcex;->e:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->removeElementAt(I)V

    .line 823
    iget v3, p0, Lcex;->n:I

    add-int/2addr v3, v5

    iput v3, p0, Lcex;->n:I

    .line 826
    sget-object v3, Lcex;->b:Lcgw;

    sget-object v6, Lcex;->a:Ljava/lang/String;

    const-string v7, "get"

    const-string v8, "623"

    new-array v5, v5, [Ljava/lang/Object;

    new-instance v9, Ljava/lang/Integer;

    iget v10, p0, Lcex;->n:I

    invoke-direct {v9, v10}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v5, v4

    invoke-interface {v3, v6, v7, v8, v5}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 829
    :cond_9
    sget-object v3, Lcex;->b:Lcgw;

    sget-object v4, Lcex;->a:Ljava/lang/String;

    const-string v5, "get"

    const-string v6, "622"

    invoke-interface {v3, v4, v5, v6}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    .line 765
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected f()Z
    .locals 8

    .line 906
    iget-object v0, p0, Lcex;->g:Lcfb;

    invoke-virtual {v0}, Lcfb;->e()I

    move-result v0

    .line 907
    iget-boolean v1, p0, Lcex;->r:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcex;->f:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcex;->i:Lcey;

    invoke-virtual {v1}, Lcey;->c()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 909
    sget-object v1, Lcex;->b:Lcgw;

    sget-object v3, Lcex;->a:Ljava/lang/String;

    const/4 v4, 0x6

    new-array v4, v4, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/Boolean;

    iget-boolean v6, p0, Lcex;->r:Z

    invoke-direct {v5, v6}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v5, v4, v2

    new-instance v2, Ljava/lang/Integer;

    iget v5, p0, Lcex;->n:I

    invoke-direct {v2, v5}, Ljava/lang/Integer;-><init>(I)V

    const/4 v5, 0x1

    aput-object v2, v4, v5

    const/4 v2, 0x2

    new-instance v6, Ljava/lang/Integer;

    iget-object v7, p0, Lcex;->f:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v2

    const/4 v2, 0x3

    new-instance v6, Ljava/lang/Integer;

    iget v7, p0, Lcex;->o:I

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v2

    const/4 v2, 0x4

    iget-object v6, p0, Lcex;->i:Lcey;

    invoke-virtual {v6}, Lcey;->c()Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v2

    const/4 v2, 0x5

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    aput-object v6, v4, v2

    const-string v0, "checkQuiesceLock"

    const-string v2, "626"

    invoke-interface {v1, v3, v0, v2, v4}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 910
    iget-object v0, p0, Lcex;->q:Ljava/lang/Object;

    monitor-enter v0

    .line 911
    :try_start_0
    iget-object v1, p0, Lcex;->q:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 910
    monitor-exit v0

    return v5

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    return v2
.end method

.method public g()V
    .locals 4

    .line 1146
    sget-object v0, Lcex;->b:Lcgw;

    sget-object v1, Lcex;->a:Ljava/lang/String;

    const-string v2, "connected"

    const-string v3, "631"

    invoke-interface {v0, v1, v2, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1147
    iput-boolean v0, p0, Lcex;->y:Z

    .line 1149
    iget-object v0, p0, Lcex;->D:Lces;

    invoke-interface {v0}, Lces;->a()V

    return-void
.end method

.method public h()V
    .locals 5

    .line 1316
    iget-object v0, p0, Lcex;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 1318
    :try_start_0
    sget-object v1, Lcex;->b:Lcgw;

    sget-object v2, Lcex;->a:Ljava/lang/String;

    const-string v3, "notifyQueueLock"

    const-string v4, "638"

    invoke-interface {v1, v2, v3, v4}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    iget-object v1, p0, Lcex;->p:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 1316
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public i()I
    .locals 1

    .line 1344
    iget v0, p0, Lcex;->n:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 1348
    iget v0, p0, Lcex;->m:I

    return v0
.end method

.method protected k()V
    .locals 1

    .line 1357
    iget-object v0, p0, Lcex;->d:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1358
    iget-object v0, p0, Lcex;->e:Ljava/util/Vector;

    if-eqz v0, :cond_0

    .line 1359
    iget-object v0, p0, Lcex;->e:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1361
    :cond_0
    iget-object v0, p0, Lcex;->f:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 1362
    iget-object v0, p0, Lcex;->z:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1363
    iget-object v0, p0, Lcex;->A:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1364
    iget-object v0, p0, Lcex;->B:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1365
    iget-object v0, p0, Lcex;->C:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 1366
    iget-object v0, p0, Lcex;->g:Lcfb;

    invoke-virtual {v0}, Lcfb;->d()V

    const/4 v0, 0x0

    .line 1367
    iput-object v0, p0, Lcex;->d:Ljava/util/Hashtable;

    .line 1368
    iput-object v0, p0, Lcex;->e:Ljava/util/Vector;

    .line 1369
    iput-object v0, p0, Lcex;->f:Ljava/util/Vector;

    .line 1370
    iput-object v0, p0, Lcex;->z:Ljava/util/Hashtable;

    .line 1371
    iput-object v0, p0, Lcex;->A:Ljava/util/Hashtable;

    .line 1372
    iput-object v0, p0, Lcex;->B:Ljava/util/Hashtable;

    .line 1373
    iput-object v0, p0, Lcex;->C:Ljava/util/Hashtable;

    .line 1374
    iput-object v0, p0, Lcex;->g:Lcfb;

    .line 1375
    iput-object v0, p0, Lcex;->i:Lcey;

    .line 1376
    iput-object v0, p0, Lcex;->h:Lcew;

    .line 1377
    iput-object v0, p0, Lcex;->l:Lcel;

    .line 1378
    iput-object v0, p0, Lcex;->v:Lcgs;

    return-void
.end method
