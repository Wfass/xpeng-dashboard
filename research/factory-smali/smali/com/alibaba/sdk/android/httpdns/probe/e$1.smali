.class Lcom/alibaba/sdk/android/httpdns/probe/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/alibaba/sdk/android/httpdns/probe/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/sdk/android/httpdns/probe/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/probe/e;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/httpdns/probe/e;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/probe/e$1;->a:Lcom/alibaba/sdk/android/httpdns/probe/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(JLcom/alibaba/sdk/android/httpdns/probe/c;)V
    .locals 9

    if-eqz p3, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/e$1;->a:Lcom/alibaba/sdk/android/httpdns/probe/e;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/probe/e;->a(Lcom/alibaba/sdk/android/httpdns/probe/e;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/probe/c;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/e$1;->a:Lcom/alibaba/sdk/android/httpdns/probe/e;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/probe/e;->a(Lcom/alibaba/sdk/android/httpdns/probe/e;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/probe/c;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long p1, v0, p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p3, :cond_2

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/probe/c;->a()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/probe/c;->i()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/probe/c;->j()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/probe/c;->getHostName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "defultId:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/probe/c;->i()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", selectedIp:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/probe/c;->j()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", promote:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/probe/c;->c()J

    move-result-wide v0

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/probe/c;->d()J

    move-result-wide v2

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/i;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/probe/e$1;->a:Lcom/alibaba/sdk/android/httpdns/probe/e;

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/probe/c;->getHostName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/probe/c;->i()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/probe/c;->j()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/probe/c;->c()J

    move-result-wide v4

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/probe/c;->d()J

    move-result-wide v6

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/probe/c;->a()[Ljava/lang/String;

    move-result-object p1

    array-length v8, p1

    invoke-static/range {v0 .. v8}, Lcom/alibaba/sdk/android/httpdns/probe/e;->a(Lcom/alibaba/sdk/android/httpdns/probe/e;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJI)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/probe/e$1;->a:Lcom/alibaba/sdk/android/httpdns/probe/e;

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/probe/e;->a(Lcom/alibaba/sdk/android/httpdns/probe/e;)Lcom/alibaba/sdk/android/httpdns/probe/b;

    move-result-object p1

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/probe/c;->getHostName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/probe/c;->a()[Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/alibaba/sdk/android/httpdns/probe/b;->a(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p1, p0, Lcom/alibaba/sdk/android/httpdns/probe/e$1;->a:Lcom/alibaba/sdk/android/httpdns/probe/e;

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/probe/e;->a(Lcom/alibaba/sdk/android/httpdns/probe/e;)Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object p1

    invoke-virtual {p3}, Lcom/alibaba/sdk/android/httpdns/probe/c;->getHostName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    :goto_0
    const-string p1, "corresponding tasknumber not exists, drop the result"

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/i;->d(Ljava/lang/String;)V

    :cond_2
    return-void
.end method
