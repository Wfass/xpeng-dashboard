.class Lcom/alibaba/sdk/android/httpdns/f/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/httpdns/f/a$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic a:Landroid/content/Intent;

.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/f/a$a;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/httpdns/f/a$a;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/f/a$a$a;->a:Lcom/alibaba/sdk/android/httpdns/f/a$a;

    iput-object p2, p0, Lcom/alibaba/sdk/android/httpdns/f/a$a$a;->a:Landroid/content/Intent;

    iput-object p3, p0, Lcom/alibaba/sdk/android/httpdns/f/a$a$a;->a:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "None_Network"

    :try_start_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/f/a$a$a;->a:Lcom/alibaba/sdk/android/httpdns/f/a$a;

    invoke-virtual {v1}, Landroid/content/BroadcastReceiver;->isInitialStickyBroadcast()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/f/a$a$a;->a:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/f/a$a$a;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/f/a;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/alibaba/sdk/android/httpdns/f/a$a$a;->a:Lcom/alibaba/sdk/android/httpdns/f/a$a;

    iget-object v1, v1, Lcom/alibaba/sdk/android/httpdns/f/a$a;->a:Lcom/alibaba/sdk/android/httpdns/f/a;

    invoke-static {v1}, Lcom/alibaba/sdk/android/httpdns/f/a;->a(Lcom/alibaba/sdk/android/httpdns/f/a;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->getInstance()Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;

    move-result-object v2

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/alibaba/sdk/android/httpdns/net/HttpDnsNetworkDetector;->cleanCache(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/f/a$a$a;->a:Lcom/alibaba/sdk/android/httpdns/f/a$a;

    iget-object v2, v2, Lcom/alibaba/sdk/android/httpdns/f/a$a;->a:Lcom/alibaba/sdk/android/httpdns/f/a;

    invoke-static {v2}, Lcom/alibaba/sdk/android/httpdns/f/a;->b(Lcom/alibaba/sdk/android/httpdns/f/a;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/alibaba/sdk/android/httpdns/f/a$a$a;->a:Lcom/alibaba/sdk/android/httpdns/f/a$a;

    iget-object v2, v2, Lcom/alibaba/sdk/android/httpdns/f/a$a;->a:Lcom/alibaba/sdk/android/httpdns/f/a;

    invoke-static {v2}, Lcom/alibaba/sdk/android/httpdns/f/a;->a(Lcom/alibaba/sdk/android/httpdns/f/a;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/alibaba/sdk/android/httpdns/f/a$c;

    invoke-interface {v3, v1}, Lcom/alibaba/sdk/android/httpdns/f/a$c;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/f/a$a$a;->a:Lcom/alibaba/sdk/android/httpdns/f/a$a;

    iget-object v0, v0, Lcom/alibaba/sdk/android/httpdns/f/a$a;->a:Lcom/alibaba/sdk/android/httpdns/f/a;

    invoke-static {v0, v1}, Lcom/alibaba/sdk/android/httpdns/f/a;->a(Lcom/alibaba/sdk/android/httpdns/f/a;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method
