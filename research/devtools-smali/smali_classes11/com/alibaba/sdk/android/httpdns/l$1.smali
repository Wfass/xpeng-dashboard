.class final Lcom/alibaba/sdk/android/httpdns/l$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/httpdns/l;->setContext(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/alibaba/sdk/android/httpdns/l$1;->isInitialStickyBroadcast()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/b/b;->a(Landroid/content/Context;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/l;->d()Ljava/lang/String;

    move-result-object p1

    const-string p2, "None_Network"

    if-eq p1, p2, :cond_1

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/l;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    const-string p2, "[BroadcastReceiver.onReceive] - Network state changed"

    invoke-static {p2}, Lcom/alibaba/sdk/android/httpdns/i;->d(Ljava/lang/String;)V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/d;->a()Lcom/alibaba/sdk/android/httpdns/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/alibaba/sdk/android/httpdns/d;->a()Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/d;->a()Lcom/alibaba/sdk/android/httpdns/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/d;->clear()V

    invoke-static {}, Lcom/alibaba/sdk/android/httpdns/d;->a()Lcom/alibaba/sdk/android/httpdns/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alibaba/sdk/android/httpdns/d;->a()V

    sget-boolean v0, Lcom/alibaba/sdk/android/httpdns/l;->c:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->instance:Lcom/alibaba/sdk/android/httpdns/HttpDns;

    if-eqz v0, :cond_1

    const-string v0, "[BroadcastReceiver.onReceive] - refresh host"

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/i;->d(Ljava/lang/String;)V

    sget-object v0, Lcom/alibaba/sdk/android/httpdns/HttpDns;->instance:Lcom/alibaba/sdk/android/httpdns/HttpDns;

    invoke-virtual {v0, p2}, Lcom/alibaba/sdk/android/httpdns/HttpDns;->setPreResolveHosts(Ljava/util/ArrayList;)V

    :cond_1
    invoke-static {p1}, Lcom/alibaba/sdk/android/httpdns/l;->b(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    return-void
.end method
