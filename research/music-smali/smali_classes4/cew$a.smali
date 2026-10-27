.class Lcew$a;
.super Ljava/lang/Object;
.source "ClientComms.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcew;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Lcew;

.field b:Lceu;

.field c:Lcgb;

.field final synthetic d:Lcew;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcew;Lcew;Lceu;Lcgb;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 667
    iput-object p1, p0, Lcew$a;->d:Lcew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x0

    .line 662
    iput-object p5, p0, Lcew$a;->a:Lcew;

    .line 668
    iput-object p2, p0, Lcew$a;->a:Lcew;

    .line 669
    iput-object p3, p0, Lcew$a;->b:Lceu;

    .line 670
    iput-object p4, p0, Lcew$a;->c:Lcgb;

    .line 671
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "MQTT Con: "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcew;->h()Lcee;

    move-result-object p1

    invoke-interface {p1}, Lcee;->b()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcew$a;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    .line 675
    iget-object v0, p0, Lcew$a;->d:Lcew;

    invoke-static {v0}, Lcew;->a(Lcew;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 8

    .line 679
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcew$a;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 683
    invoke-static {}, Lcew;->k()Lcgw;

    move-result-object v0

    invoke-static {}, Lcew;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "connectBG:run"

    const-string v3, "220"

    invoke-interface {v0, v1, v2, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 689
    :try_start_0
    iget-object v1, p0, Lcew$a;->d:Lcew;

    invoke-static {v1}, Lcew;->b(Lcew;)Lcfb;

    move-result-object v1

    invoke-virtual {v1}, Lcfb;->b()[Lcen;

    move-result-object v1

    const/4 v2, 0x0

    .line 690
    :goto_0
    array-length v3, v1

    if-lt v2, v3, :cond_0

    .line 695
    iget-object v1, p0, Lcew$a;->d:Lcew;

    invoke-static {v1}, Lcew;->b(Lcew;)Lcfb;

    move-result-object v1

    iget-object v2, p0, Lcew$a;->b:Lceu;

    iget-object v3, p0, Lcew$a;->c:Lcgb;

    invoke-virtual {v1, v2, v3}, Lcfb;->a(Lceu;Lcgs;)V

    .line 700
    iget-object v1, p0, Lcew$a;->d:Lcew;

    invoke-static {v1}, Lcew;->c(Lcew;)[Lcfj;

    move-result-object v1

    iget-object v2, p0, Lcew$a;->d:Lcew;

    invoke-static {v2}, Lcew;->d(Lcew;)I

    move-result v2

    aget-object v1, v1, v2

    .line 701
    invoke-interface {v1}, Lcfj;->a()V

    .line 702
    iget-object v2, p0, Lcew$a;->d:Lcew;

    new-instance v3, Lcez;

    iget-object v4, p0, Lcew$a;->a:Lcew;

    iget-object v5, p0, Lcew$a;->d:Lcew;

    invoke-static {v5}, Lcew;->e(Lcew;)Lcex;

    move-result-object v5

    iget-object v6, p0, Lcew$a;->d:Lcew;

    invoke-static {v6}, Lcew;->b(Lcew;)Lcfb;

    move-result-object v6

    invoke-interface {v1}, Lcfj;->b()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v3, v4, v5, v6, v7}, Lcez;-><init>(Lcew;Lcex;Lcfb;Ljava/io/InputStream;)V

    invoke-static {v2, v3}, Lcew;->a(Lcew;Lcez;)V

    .line 703
    iget-object v2, p0, Lcew$a;->d:Lcew;

    invoke-static {v2}, Lcew;->f(Lcew;)Lcez;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "MQTT Rec: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcew$a;->d:Lcew;

    invoke-virtual {v4}, Lcew;->h()Lcee;

    move-result-object v4

    invoke-interface {v4}, Lcee;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcew$a;->d:Lcew;

    invoke-static {v4}, Lcew;->a(Lcew;)Ljava/util/concurrent/ExecutorService;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcez;->a(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 704
    iget-object v2, p0, Lcew$a;->d:Lcew;

    new-instance v3, Lcfa;

    iget-object v4, p0, Lcew$a;->a:Lcew;

    iget-object v5, p0, Lcew$a;->d:Lcew;

    invoke-static {v5}, Lcew;->e(Lcew;)Lcex;

    move-result-object v5

    iget-object v6, p0, Lcew$a;->d:Lcew;

    invoke-static {v6}, Lcew;->b(Lcew;)Lcfb;

    move-result-object v6

    invoke-interface {v1}, Lcfj;->c()Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v3, v4, v5, v6, v1}, Lcfa;-><init>(Lcew;Lcex;Lcfb;Ljava/io/OutputStream;)V

    invoke-static {v2, v3}, Lcew;->a(Lcew;Lcfa;)V

    .line 705
    iget-object v1, p0, Lcew$a;->d:Lcew;

    invoke-static {v1}, Lcew;->g(Lcew;)Lcfa;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MQTT Snd: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcew$a;->d:Lcew;

    invoke-virtual {v3}, Lcew;->h()Lcee;

    move-result-object v3

    invoke-interface {v3}, Lcee;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcew$a;->d:Lcew;

    invoke-static {v3}, Lcew;->a(Lcew;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcfa;->a(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 706
    iget-object v1, p0, Lcew$a;->d:Lcew;

    invoke-static {v1}, Lcew;->h(Lcew;)Lcey;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "MQTT Call: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcew$a;->d:Lcew;

    invoke-virtual {v3}, Lcew;->h()Lcee;

    move-result-object v3

    invoke-interface {v3}, Lcee;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcew$a;->d:Lcew;

    invoke-static {v3}, Lcew;->a(Lcew;)Ljava/util/concurrent/ExecutorService;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcey;->a(Ljava/lang/String;Ljava/util/concurrent/ExecutorService;)V

    .line 707
    iget-object v1, p0, Lcew$a;->d:Lcew;

    iget-object v2, p0, Lcew$a;->c:Lcgb;

    iget-object v3, p0, Lcew$a;->b:Lceu;

    invoke-virtual {v1, v2, v3}, Lcew;->a(Lcgs;Lceu;)V

    goto :goto_1

    .line 691
    :cond_0
    aget-object v3, v1, v2

    iget-object v3, v3, Lcen;->a:Lcfn;

    invoke-virtual {v3, v0}, Lcfn;->a(Lceo;)V
    :try_end_0
    .catch Lceo; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .line 714
    invoke-static {}, Lcew;->k()Lcgw;

    move-result-object v1

    invoke-static {}, Lcew;->l()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const-string v3, "connectBG:run"

    const-string v4, "209"

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 715
    invoke-static {v0}, Lcfe;->a(Ljava/lang/Throwable;)Lceo;

    move-result-object v0

    goto :goto_1

    :catch_1
    move-exception v0

    .line 710
    invoke-static {}, Lcew;->k()Lcgw;

    move-result-object v1

    invoke-static {}, Lcew;->l()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    const-string v3, "connectBG:run"

    const-string v4, "212"

    move-object v6, v0

    invoke-interface/range {v1 .. v6}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz v0, :cond_1

    .line 719
    iget-object v1, p0, Lcew$a;->d:Lcew;

    iget-object v2, p0, Lcew$a;->b:Lceu;

    invoke-virtual {v1, v2, v0}, Lcew;->a(Lceu;Lceo;)V

    :cond_1
    return-void
.end method
