.class public Lbws;
.super Lbvk$a;
.source "AgentProxy.java"

# interfaces
.implements Lbuf$a;


# instance fields
.field private a:Lcom/xiaopeng/speech/common/util/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/speech/common/util/b<",
            "Lbvk;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Lbvk;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 24
    invoke-direct {p0}, Lbvk$a;-><init>()V

    .line 20
    new-instance v0, Lcom/xiaopeng/speech/common/util/b;

    const-string v1, "AgentProxy"

    invoke-direct {v0, v1}, Lcom/xiaopeng/speech/common/util/b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    .line 22
    iput-object v1, p0, Lbws;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 42
    iput-object v0, p0, Lbws;->b:Lbvk;

    .line 43
    iget-object v1, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public a(I)V
    .locals 1

    .line 445
    iget-object v0, p0, Lbws;->b:Lbvk;

    invoke-interface {v0, p1}, Lbvk;->a(I)V

    return-void
.end method

.method public a(ILjava/lang/String;)V
    .locals 2

    .line 328
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$17;

    invoke-direct {v1, p0, p1, p2}, Lbws$17;-><init>(Lbws;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(I[ILjava/lang/String;)V
    .locals 1

    .line 428
    :try_start_0
    iget-object v0, p0, Lbws;->b:Lbvk;

    invoke-interface {v0, p1, p2, p3}, Lbvk;->a(I[ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 430
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public a(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 405
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v8, Lbws$25;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lbws$25;-><init>(Lbws;Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Landroid/os/IBinder;Z)V
    .locals 2

    .line 252
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$10;

    invoke-direct {v1, p0, p1, p2}, Lbws$10;-><init>(Lbws;Landroid/os/IBinder;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Lbun;)V
    .locals 1

    .line 31
    :try_start_0
    invoke-interface {p1}, Lbun;->e()Lbvk;

    move-result-object p1

    .line 32
    iput-object p1, p0, Lbws;->b:Lbvk;

    .line 33
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/b;->c(Ljava/lang/Object;)V

    .line 34
    iget-object p1, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    invoke-virtual {p1}, Lcom/xiaopeng/speech/common/util/b;->b()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "onConnect exception "

    .line 36
    invoke-static {p0, v0, p1}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Lcom/xiaopeng/speech/common/util/f;)V
    .locals 1

    .line 225
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/speech/common/util/b;->a(Lcom/xiaopeng/speech/common/util/f;)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 2

    .line 48
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$1;

    invoke-direct {v1, p0, p1}, Lbws$1;-><init>(Lbws;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;I)V
    .locals 2

    .line 372
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$21;

    invoke-direct {v1, p0, p1, p2}, Lbws$21;-><init>(Lbws;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/xiaopeng/speech/common/bean/SliceData;I)V
    .locals 2

    .line 394
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$24;

    invoke-direct {v1, p0, p1, p2, p3}, Lbws$24;-><init>(Lbws;Ljava/lang/String;Lcom/xiaopeng/speech/common/bean/SliceData;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 70
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$23;

    invoke-direct {v1, p0, p1, p2}, Lbws$23;-><init>(Lbws;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 2

    .line 383
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$22;

    invoke-direct {v1, p0, p1, p2, p3}, Lbws$22;-><init>(Lbws;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lbvp;)V
    .locals 2

    .line 416
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$26;

    invoke-direct {v1, p0, p1, p2, p3}, Lbws$26;-><init>(Lbws;Ljava/lang/String;Ljava/lang/String;Lbvp;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8

    .line 103
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v7, Lbws$29;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lbws$29;-><init>(Lbws;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 362
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v8, Lbws$20;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v1 .. v7}, Lbws$20;-><init>(Lbws;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v8}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Ljava/lang/String;[Ljava/lang/String;Z)V
    .locals 2

    .line 114
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$30;

    invoke-direct {v1, p0, p1, p2, p3}, Lbws$30;-><init>(Lbws;Ljava/lang/String;[Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public a(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 140
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$32;

    invoke-direct {v1, p0, p1}, Lbws$32;-><init>(Lbws;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(I[ILjava/lang/String;)I
    .locals 1

    .line 450
    iget-object v0, p0, Lbws;->b:Lbvk;

    invoke-interface {v0, p1, p2, p3}, Lbvk;->b(I[ILjava/lang/String;)I

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/String;)V
    .locals 2

    .line 92
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$28;

    invoke-direct {v1, p0, p1}, Lbws$28;-><init>(Lbws;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;I)V
    .locals 2

    .line 59
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$12;

    invoke-direct {v1, p0, p1, p2}, Lbws$12;-><init>(Lbws;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 81
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$27;

    invoke-direct {v1, p0, p1, p2}, Lbws$27;-><init>(Lbws;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b(Z)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 194
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$5;

    invoke-direct {v1, p0, p1}, Lbws$5;-><init>(Lbws;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public b()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 155
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$2;

    invoke-direct {v1, p0}, Lbws$2;-><init>(Lbws;)V

    const/4 v2, 0x0

    .line 160
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 155
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 165
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$3;

    invoke-direct {v1, p0, p1}, Lbws$3;-><init>(Lbws;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 125
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$31;

    invoke-direct {v1, p0, p1, p2}, Lbws$31;-><init>(Lbws;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public c(Z)V
    .locals 2

    .line 205
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$6;

    invoke-direct {v1, p0, p1}, Lbws$6;-><init>(Lbws;Z)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public c()Z
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$4;

    invoke-direct {v1, p0}, Lbws$4;-><init>(Lbws;)V

    const/4 v2, 0x0

    .line 185
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 180
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 230
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$8;

    invoke-direct {v1, p0, p1}, Lbws$8;-><init>(Lbws;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$9;

    invoke-direct {v1, p0, p1, p2}, Lbws$9;-><init>(Lbws;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public d()Z
    .locals 3

    .line 216
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$7;

    invoke-direct {v1, p0}, Lbws$7;-><init>(Lbws;)V

    const/4 v2, 0x0

    .line 221
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 216
    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 277
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$11;

    invoke-direct {v1, p0, p1}, Lbws$11;-><init>(Lbws;Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 317
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$16;

    invoke-direct {v1, p0, p1, p2}, Lbws$16;-><init>(Lbws;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public e()Z
    .locals 3

    .line 263
    iget-object v0, p0, Lbws;->b:Lbvk;

    if-eqz v0, :cond_0

    .line 266
    :try_start_0
    invoke-interface {v0}, Lbvk;->e()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "AgentProxy"

    const-string v2, "remote error: "

    .line 268
    invoke-static {v1, v2, v0}, Lcom/xiaopeng/speech/common/util/c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 287
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$13;

    invoke-direct {v1, p0, p1}, Lbws$13;-><init>(Lbws;Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public f()V
    .locals 1

    .line 437
    :try_start_0
    iget-object v0, p0, Lbws;->b:Lbvk;

    invoke-interface {v0}, Lbvk;->f()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 439
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 338
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$18;

    invoke-direct {v1, p0, p1, p2}, Lbws$18;-><init>(Lbws;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 349
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$19;

    invoke-direct {v1, p0, p1, p2}, Lbws$19;-><init>(Lbws;Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public g(Ljava/lang/String;)V
    .locals 2

    .line 297
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$14;

    invoke-direct {v1, p0, p1}, Lbws$14;-><init>(Lbws;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public h(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 308
    iget-object v0, p0, Lbws;->a:Lcom/xiaopeng/speech/common/util/b;

    new-instance v1, Lbws$15;

    invoke-direct {v1, p0, p1}, Lbws$15;-><init>(Lbws;Ljava/lang/String;)V

    const-string p1, ""

    invoke-virtual {v0, v1, p1}, Lcom/xiaopeng/speech/common/util/b;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 456
    :try_start_0
    iget-object v0, p0, Lbws;->b:Lbvk;

    invoke-interface {v0, p1, p2}, Lbvk;->h(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 458
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public i(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 465
    :try_start_0
    iget-object v0, p0, Lbws;->b:Lbvk;

    invoke-interface {v0, p1}, Lbvk;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 467
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method
