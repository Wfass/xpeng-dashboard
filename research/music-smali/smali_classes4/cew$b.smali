.class Lcew$b;
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
    name = "b"
.end annotation


# instance fields
.field a:Lcgc;

.field b:J

.field c:Lceu;

.field final synthetic d:Lcew;

.field private e:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcew;Lcgc;JLceu;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 732
    iput-object p1, p0, Lcew$b;->d:Lcew;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 733
    iput-object p2, p0, Lcew$b;->a:Lcgc;

    .line 734
    iput-wide p3, p0, Lcew$b;->b:J

    .line 735
    iput-object p5, p0, Lcew$b;->c:Lceu;

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 739
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MQTT Disc: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcew$b;->d:Lcew;

    invoke-virtual {v1}, Lcew;->h()Lcee;

    move-result-object v1

    invoke-interface {v1}, Lcee;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcew$b;->e:Ljava/lang/String;

    .line 740
    iget-object v0, p0, Lcew$b;->d:Lcew;

    invoke-static {v0}, Lcew;->a(Lcew;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 4

    .line 744
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lcew$b;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 747
    invoke-static {}, Lcew;->k()Lcgw;

    move-result-object v0

    invoke-static {}, Lcew;->l()Ljava/lang/String;

    move-result-object v1

    const-string v2, "disconnectBG:run"

    const-string v3, "221"

    invoke-interface {v0, v1, v2, v3}, Lcgw;->fine(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    iget-object v0, p0, Lcew$b;->d:Lcew;

    invoke-static {v0}, Lcew;->e(Lcew;)Lcex;

    move-result-object v0

    iget-wide v1, p0, Lcew$b;->b:J

    invoke-virtual {v0, v1, v2}, Lcex;->b(J)V

    const/4 v0, 0x0

    .line 752
    :try_start_0
    iget-object v1, p0, Lcew$b;->d:Lcew;

    iget-object v2, p0, Lcew$b;->a:Lcgc;

    iget-object v3, p0, Lcew$b;->c:Lceu;

    invoke-virtual {v1, v2, v3}, Lcew;->a(Lcgs;Lceu;)V

    .line 753
    iget-object v1, p0, Lcew$b;->c:Lceu;

    iget-object v1, v1, Lceu;->a:Lcfn;

    invoke-virtual {v1}, Lcfn;->h()V
    :try_end_0
    .catch Lceo; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 758
    iget-object v2, p0, Lcew$b;->c:Lceu;

    iget-object v2, v2, Lceu;->a:Lcfn;

    invoke-virtual {v2, v0, v0}, Lcfn;->a(Lcgs;Lceo;)V

    .line 759
    iget-object v2, p0, Lcew$b;->d:Lcew;

    iget-object v3, p0, Lcew$b;->c:Lceu;

    invoke-virtual {v2, v3, v0}, Lcew;->a(Lceu;Lceo;)V

    .line 760
    throw v1

    .line 758
    :catch_0
    :goto_0
    iget-object v1, p0, Lcew$b;->c:Lceu;

    iget-object v1, v1, Lceu;->a:Lcfn;

    invoke-virtual {v1, v0, v0}, Lcfn;->a(Lcgs;Lceo;)V

    .line 759
    iget-object v1, p0, Lcew$b;->d:Lcew;

    iget-object v2, p0, Lcew$b;->c:Lceu;

    invoke-virtual {v1, v2, v0}, Lcew;->a(Lceu;Lceo;)V

    return-void
.end method
