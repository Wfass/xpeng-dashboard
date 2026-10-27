.class public Lcfn;
.super Ljava/lang/Object;
.source "Token.java"


# static fields
.field private static final b:Ljava/lang/String; = "cfn"

.field private static final c:Lcgw;


# instance fields
.field protected a:Lcep;

.field private volatile d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/Object;

.field private h:Ljava/lang/Object;

.field private i:Lcgs;

.field private j:Lceo;

.field private k:[Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Lcee;

.field private n:Lced;

.field private o:Ljava/lang/Object;

.field private p:I

.field private q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 32
    sget-object v0, Lcfn;->b:Ljava/lang/String;

    const-string v1, "org.eclipse.paho.client.mqttv3.internal.nls.logcat"

    invoke-static {v1, v0}, Lcgx;->a(Ljava/lang/String;Ljava/lang/String;)Lcgw;

    move-result-object v0

    sput-object v0, Lcfn;->c:Lcgw;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 34
    iput-boolean v0, p0, Lcfn;->d:Z

    .line 35
    iput-boolean v0, p0, Lcfn;->e:Z

    .line 36
    iput-boolean v0, p0, Lcfn;->f:Z

    .line 38
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcfn;->g:Ljava/lang/Object;

    .line 39
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcfn;->h:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 41
    iput-object v1, p0, Lcfn;->a:Lcep;

    .line 42
    iput-object v1, p0, Lcfn;->i:Lcgs;

    .line 43
    iput-object v1, p0, Lcfn;->j:Lceo;

    .line 44
    iput-object v1, p0, Lcfn;->k:[Ljava/lang/String;

    .line 48
    iput-object v1, p0, Lcfn;->m:Lcee;

    .line 49
    iput-object v1, p0, Lcfn;->n:Lced;

    .line 51
    iput-object v1, p0, Lcfn;->o:Ljava/lang/Object;

    .line 53
    iput v0, p0, Lcfn;->p:I

    .line 54
    iput-boolean v0, p0, Lcfn;->q:Z

    .line 57
    sget-object v0, Lcfn;->c:Lcgw;

    invoke-interface {v0, p1}, Lcgw;->setResourceName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 61
    iget v0, p0, Lcfn;->p:I

    return v0
.end method

.method public a(I)V
    .locals 0

    .line 65
    iput p1, p0, Lcfn;->p:I

    return-void
.end method

.method public a(J)V
    .locals 8

    .line 106
    sget-object v0, Lcfn;->c:Lcgw;

    sget-object v1, Lcfn;->b:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcfn;->o()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Ljava/lang/Long;

    invoke-direct {v3, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v3, 0x2

    aput-object p0, v2, v3

    const-string v6, "waitForCompletion"

    const-string v7, "407"

    invoke-interface {v0, v1, v6, v7, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    invoke-virtual {p0, p1, p2}, Lcfn;->b(J)Lcgs;

    move-result-object p1

    if-nez p1, :cond_1

    .line 109
    iget-boolean p1, p0, Lcfn;->d:Z

    if-eqz p1, :cond_0

    goto :goto_0

    .line 111
    :cond_0
    sget-object p1, Lcfn;->c:Lcgw;

    sget-object p2, Lcfn;->b:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcfn;->o()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    aput-object p0, v0, v5

    const-string v1, "406"

    invoke-interface {p1, p2, v6, v1, v0}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 112
    new-instance p1, Lceo;

    const/16 p2, 0x7d00

    invoke-direct {p1, p2}, Lceo;-><init>(I)V

    iput-object p1, p0, Lcfn;->j:Lceo;

    .line 113
    iget-object p1, p0, Lcfn;->j:Lceo;

    throw p1

    .line 115
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcfn;->b()Z

    return-void
.end method

.method public a(Lced;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lcfn;->n:Lced;

    return-void
.end method

.method protected a(Lcee;)V
    .locals 0

    .line 285
    iput-object p1, p0, Lcfn;->m:Lcee;

    return-void
.end method

.method public a(Lceo;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcfn;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_0
    iput-object p1, p0, Lcfn;->j:Lceo;

    .line 343
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Lcep;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcfn;->a:Lcep;

    return-void
.end method

.method protected a(Lcgs;Lceo;)V
    .locals 6

    .line 178
    sget-object v0, Lcfn;->c:Lcgw;

    sget-object v1, Lcfn;->b:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcfn;->o()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v4, 0x2

    aput-object p2, v2, v4

    const-string v4, "markComplete"

    const-string v5, "404"

    invoke-interface {v0, v1, v4, v5, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    iget-object v0, p0, Lcfn;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 182
    :try_start_0
    instance-of v1, p1, Lcfz;

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    .line 183
    iput-object v1, p0, Lcfn;->a:Lcep;

    .line 185
    :cond_0
    iput-boolean v3, p0, Lcfn;->e:Z

    .line 186
    iput-object p1, p0, Lcfn;->i:Lcgs;

    .line 187
    iput-object p2, p0, Lcfn;->j:Lceo;

    .line 180
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0

    .line 331
    iput-object p1, p0, Lcfn;->o:Ljava/lang/Object;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcfn;->l:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 353
    iput-boolean p1, p0, Lcfn;->q:Z

    return-void
.end method

.method public a([Ljava/lang/String;)V
    .locals 0

    .line 323
    iput-object p1, p0, Lcfn;->k:[Ljava/lang/String;

    return-void
.end method

.method protected b(J)Lcgs;
    .locals 12

    .line 132
    iget-object v0, p0, Lcfn;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 134
    :try_start_0
    sget-object v1, Lcfn;->c:Lcgw;

    sget-object v2, Lcfn;->b:Ljava/lang/String;

    const-string v3, "waitForResponse"

    const-string v4, "400"

    const/4 v5, 0x7

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcfn;->o()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    new-instance v6, Ljava/lang/Long;

    invoke-direct {v6, p1, p2}, Ljava/lang/Long;-><init>(J)V

    const/4 v8, 0x1

    aput-object v6, v5, v8

    new-instance v6, Ljava/lang/Boolean;

    iget-boolean v9, p0, Lcfn;->f:Z

    invoke-direct {v6, v9}, Ljava/lang/Boolean;-><init>(Z)V

    const/4 v9, 0x2

    aput-object v6, v5, v9

    const/4 v6, 0x3

    new-instance v10, Ljava/lang/Boolean;

    iget-boolean v11, p0, Lcfn;->d:Z

    invoke-direct {v10, v11}, Ljava/lang/Boolean;-><init>(Z)V

    aput-object v10, v5, v6

    const/4 v6, 0x4

    iget-object v10, p0, Lcfn;->j:Lceo;

    if-nez v10, :cond_0

    const-string v10, "false"

    goto :goto_0

    :cond_0
    const-string v10, "true"

    :goto_0
    aput-object v10, v5, v6

    const/4 v6, 0x5

    iget-object v10, p0, Lcfn;->i:Lcgs;

    aput-object v10, v5, v6

    const/4 v6, 0x6

    aput-object p0, v5, v6

    iget-object v6, p0, Lcfn;->j:Lceo;

    invoke-interface/range {v1 .. v6}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 136
    :cond_1
    iget-boolean v1, p0, Lcfn;->d:Z

    if-eqz v1, :cond_2

    goto :goto_2

    .line 137
    :cond_2
    iget-object v1, p0, Lcfn;->j:Lceo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v2, 0x0

    if-nez v1, :cond_4

    .line 140
    :try_start_1
    sget-object v1, Lcfn;->c:Lcgw;

    sget-object v4, Lcfn;->b:Ljava/lang/String;

    const-string v5, "waitForResponse"

    const-string v6, "408"

    new-array v10, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcfn;->o()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v7

    new-instance v11, Ljava/lang/Long;

    invoke-direct {v11, p1, p2}, Ljava/lang/Long;-><init>(J)V

    aput-object v11, v10, v8

    invoke-interface {v1, v4, v5, v6, v10}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    cmp-long v1, p1, v2

    if-gtz v1, :cond_3

    .line 143
    iget-object v1, p0, Lcfn;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V

    goto :goto_1

    .line 145
    :cond_3
    iget-object v1, p0, Lcfn;->g:Ljava/lang/Object;

    invoke-virtual {v1, p1, p2}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 148
    :try_start_2
    new-instance v4, Lceo;

    invoke-direct {v4, v1}, Lceo;-><init>(Ljava/lang/Throwable;)V

    iput-object v4, p0, Lcfn;->j:Lceo;

    .line 151
    :cond_4
    :goto_1
    iget-boolean v1, p0, Lcfn;->d:Z

    if-nez v1, :cond_1

    .line 152
    iget-object v1, p0, Lcfn;->j:Lceo;

    if-nez v1, :cond_5

    cmp-long v1, p1, v2

    if-lez v1, :cond_1

    .line 132
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 166
    sget-object p1, Lcfn;->c:Lcgw;

    sget-object p2, Lcfn;->b:Ljava/lang/String;

    new-array v0, v9, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcfn;->o()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v1, p0, Lcfn;->i:Lcgs;

    aput-object v1, v0, v8

    const-string v1, "waitForResponse"

    const-string v2, "402"

    invoke-interface {p1, p2, v1, v2, v0}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 167
    iget-object p1, p0, Lcfn;->i:Lcgs;

    return-object p1

    .line 154
    :cond_5
    :try_start_3
    sget-object v1, Lcfn;->c:Lcgw;

    sget-object v2, Lcfn;->b:Ljava/lang/String;

    const-string v3, "waitForResponse"

    const-string v4, "401"

    const/4 v5, 0x0

    iget-object v6, p0, Lcfn;->j:Lceo;

    invoke-interface/range {v1 .. v6}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 155
    iget-object p1, p0, Lcfn;->j:Lceo;

    throw p1

    :catchall_0
    move-exception p1

    .line 132
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public b()Z
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcfn;->c()Lceo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcfn;->c()Lceo;

    move-result-object v0

    throw v0
.end method

.method public c()Lceo;
    .locals 1

    .line 76
    iget-object v0, p0, Lcfn;->j:Lceo;

    return-object v0
.end method

.method public d()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcfn;->d:Z

    return v0
.end method

.method protected e()Z
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcfn;->e:Z

    return v0
.end method

.method public f()Lced;
    .locals 1

    .line 96
    iget-object v0, p0, Lcfn;->n:Lced;

    return-object v0
.end method

.method protected g()V
    .locals 7

    .line 197
    sget-object v0, Lcfn;->c:Lcgw;

    sget-object v1, Lcfn;->b:Ljava/lang/String;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcfn;->o()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcfn;->i:Lcgs;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v3, p0, Lcfn;->j:Lceo;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    const-string v3, "notifyComplete"

    const-string v6, "404"

    invoke-interface {v0, v1, v3, v6, v2}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcfn;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 204
    :try_start_0
    iget-object v1, p0, Lcfn;->j:Lceo;

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcfn;->e:Z

    if-eqz v1, :cond_0

    .line 205
    iput-boolean v5, p0, Lcfn;->d:Z

    .line 206
    iput-boolean v4, p0, Lcfn;->e:Z

    goto :goto_0

    .line 208
    :cond_0
    iput-boolean v4, p0, Lcfn;->e:Z

    .line 211
    :goto_0
    iget-object v1, p0, Lcfn;->g:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 199
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 213
    iget-object v1, p0, Lcfn;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 214
    :try_start_1
    iput-boolean v5, p0, Lcfn;->f:Z

    .line 215
    iget-object v0, p0, Lcfn;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 213
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 199
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public h()V
    .locals 8

    .line 237
    iget-object v0, p0, Lcfn;->h:Ljava/lang/Object;

    monitor-enter v0

    .line 238
    :try_start_0
    iget-object v1, p0, Lcfn;->g:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 239
    :try_start_1
    iget-object v2, p0, Lcfn;->j:Lceo;

    if-nez v2, :cond_3

    .line 238
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :catch_0
    :goto_0
    :try_start_2
    iget-boolean v1, p0, Lcfn;->f:Z

    if-eqz v1, :cond_2

    .line 253
    iget-boolean v1, p0, Lcfn;->f:Z

    if-nez v1, :cond_1

    .line 254
    iget-object v1, p0, Lcfn;->j:Lceo;

    if-nez v1, :cond_0

    const/4 v1, 0x6

    .line 255
    invoke-static {v1}, Lcfe;->a(I)Lceo;

    move-result-object v1

    throw v1

    .line 257
    :cond_0
    iget-object v1, p0, Lcfn;->j:Lceo;

    throw v1

    .line 237
    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    .line 246
    :cond_2
    :try_start_3
    sget-object v1, Lcfn;->c:Lcgw;

    sget-object v2, Lcfn;->b:Ljava/lang/String;

    const-string v3, "waitUntilSent"

    const-string v4, "409"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcfn;->o()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-interface {v1, v2, v3, v4, v5}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 248
    iget-object v1, p0, Lcfn;->h:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 240
    :cond_3
    :try_start_4
    iget-object v2, p0, Lcfn;->j:Lceo;

    throw v2

    :catchall_0
    move-exception v2

    .line 238
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v2

    :catchall_1
    move-exception v1

    .line 237
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v1
.end method

.method protected i()V
    .locals 7

    .line 269
    sget-object v0, Lcfn;->c:Lcgw;

    sget-object v1, Lcfn;->b:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcfn;->o()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "notifySent"

    const-string v6, "403"

    invoke-interface {v0, v1, v4, v6, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 270
    iget-object v0, p0, Lcfn;->g:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 271
    :try_start_0
    iput-object v1, p0, Lcfn;->i:Lcgs;

    .line 272
    iput-boolean v5, p0, Lcfn;->d:Z

    .line 270
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 274
    iget-object v1, p0, Lcfn;->h:Ljava/lang/Object;

    monitor-enter v1

    .line 275
    :try_start_1
    iput-boolean v2, p0, Lcfn;->f:Z

    .line 276
    iget-object v0, p0, Lcfn;->h:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 274
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v1

    .line 270
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public j()Lcee;
    .locals 1

    .line 281
    iget-object v0, p0, Lcfn;->m:Lcee;

    return-object v0
.end method

.method public k()Lcep;
    .locals 1

    .line 306
    iget-object v0, p0, Lcfn;->a:Lcep;

    return-object v0
.end method

.method public l()Lcgs;
    .locals 1

    .line 310
    iget-object v0, p0, Lcfn;->i:Lcgs;

    return-object v0
.end method

.method public m()[Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcfn;->k:[Ljava/lang/String;

    return-object v0
.end method

.method public n()Ljava/lang/Object;
    .locals 1

    .line 327
    iget-object v0, p0, Lcfn;->o:Ljava/lang/Object;

    return-object v0
.end method

.method public o()Ljava/lang/String;
    .locals 1

    .line 339
    iget-object v0, p0, Lcfn;->l:Ljava/lang/String;

    return-object v0
.end method

.method public p()Z
    .locals 1

    .line 349
    iget-boolean v0, p0, Lcfn;->q:Z

    return v0
.end method

.method public q()Lcgs;
    .locals 1

    .line 391
    iget-object v0, p0, Lcfn;->i:Lcgs;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 357
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "key="

    .line 358
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcfn;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, " ,topics="

    .line 359
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    invoke-virtual {p0}, Lcfn;->m()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    .line 361
    :goto_0
    invoke-virtual {p0}, Lcfn;->m()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-lt v1, v2, :cond_0

    goto :goto_1

    .line 362
    :cond_0
    invoke-virtual {p0}, Lcfn;->m()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    const-string v1, " ,usercontext="

    .line 365
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcfn;->n()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " ,isComplete="

    .line 366
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcfn;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, " ,isNotified="

    .line 367
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcfn;->p()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    const-string v1, " ,exception="

    .line 368
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcfn;->c()Lceo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    const-string v1, " ,actioncallback="

    .line 369
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcfn;->f()Lced;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
