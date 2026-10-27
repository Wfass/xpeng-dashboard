.class Lare$5;
.super Ljava/lang/Object;
.source "ReissueOperation.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lare;->e(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Lare;


# direct methods
.method constructor <init>(Lare;Ljava/util/List;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lare$5;->b:Lare;

    iput-object p2, p0, Lare$5;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 163
    iget-object v0, p0, Lare$5;->b:Lare;

    invoke-static {v0}, Lare;->c(Lare;)Ljava/util/HashSet;

    move-result-object v0

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object v1, p0, Lare$5;->b:Lare;

    invoke-static {v1}, Lare;->c(Lare;)Ljava/util/HashSet;

    move-result-object v1

    iget-object v2, p0, Lare$5;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 165
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
