.class Lbre$1;
.super Ljava/lang/Object;
.source "UsbRequestQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbre;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbre;


# direct methods
.method constructor <init>(Lbre;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lbre$1;->a:Lbre;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 59
    iget-object v0, p0, Lbre$1;->a:Lbre;

    invoke-static {v0}, Lbre;->a(Lbre;)V

    .line 60
    iget-object v0, p0, Lbre$1;->a:Lbre;

    invoke-static {v0}, Lbre;->b(Lbre;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 61
    iget-object v0, p0, Lbre$1;->a:Lbre;

    invoke-static {v0}, Lbre;->e(Lbre;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lbre$1;->a:Lbre;

    invoke-static {v1}, Lbre;->c(Lbre;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lbre$1;->a:Lbre;

    invoke-static {v2}, Lbre;->d(Lbre;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
