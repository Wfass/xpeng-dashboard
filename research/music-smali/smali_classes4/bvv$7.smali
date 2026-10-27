.class Lbvv$7;
.super Ljava/lang/Object;
.source "OverallManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbvv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbvv;


# direct methods
.method constructor <init>(Lbvv;)V
    .locals 0

    .line 834
    iput-object p1, p0, Lbvv$7;->a:Lbvv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 839
    :try_start_0
    iget-object v0, p0, Lbvv$7;->a:Lbvv;

    invoke-static {v0}, Lbvv;->e(Lbvv;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lbvv$7;->a:Lbvv;

    invoke-static {v1}, Lbvv;->d(Lbvv;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 840
    iget-object v0, p0, Lbvv$7;->a:Lbvv;

    invoke-static {v0}, Lbvv;->f(Lbvv;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 841
    iget-object v0, p0, Lbvv$7;->a:Lbvv;

    iget-object v1, p0, Lbvv$7;->a:Lbvv;

    invoke-static {v1}, Lbvv;->f(Lbvv;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lbvv$7;->a:Lbvv;

    invoke-static {v2}, Lbvv;->g(Lbvv;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lbvv;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
