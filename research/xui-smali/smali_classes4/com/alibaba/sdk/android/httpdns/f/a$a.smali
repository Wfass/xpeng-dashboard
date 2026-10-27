.class Lcom/alibaba/sdk/android/httpdns/f/a$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/alibaba/sdk/android/httpdns/f/a;->a(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/alibaba/sdk/android/httpdns/f/a;


# direct methods
.method constructor <init>(Lcom/alibaba/sdk/android/httpdns/f/a;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/sdk/android/httpdns/f/a$a;->a:Lcom/alibaba/sdk/android/httpdns/f/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/alibaba/sdk/android/httpdns/f/a$a;->a:Lcom/alibaba/sdk/android/httpdns/f/a;

    invoke-static {v0}, Lcom/alibaba/sdk/android/httpdns/f/a;->a(Lcom/alibaba/sdk/android/httpdns/f/a;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/alibaba/sdk/android/httpdns/f/a$a$a;

    invoke-direct {v1, p0, p2, p1}, Lcom/alibaba/sdk/android/httpdns/f/a$a$a;-><init>(Lcom/alibaba/sdk/android/httpdns/f/a$a;Landroid/content/Intent;Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    return-void
.end method
