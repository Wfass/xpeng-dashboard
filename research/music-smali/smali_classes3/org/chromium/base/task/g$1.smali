.class Lorg/chromium/base/task/g$1;
.super Ljava/lang/Object;
.source "SerialExecutor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/chromium/base/task/g;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;

.field final synthetic b:Lorg/chromium/base/task/g;


# direct methods
.method constructor <init>(Lorg/chromium/base/task/g;Ljava/lang/Runnable;)V
    .locals 0

    .line 16
    iput-object p1, p0, Lorg/chromium/base/task/g$1;->b:Lorg/chromium/base/task/g;

    iput-object p2, p0, Lorg/chromium/base/task/g$1;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 20
    :try_start_0
    iget-object v0, p0, Lorg/chromium/base/task/g$1;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    iget-object v0, p0, Lorg/chromium/base/task/g$1;->b:Lorg/chromium/base/task/g;

    invoke-virtual {v0}, Lorg/chromium/base/task/g;->a()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/chromium/base/task/g$1;->b:Lorg/chromium/base/task/g;

    invoke-virtual {v1}, Lorg/chromium/base/task/g;->a()V

    throw v0
.end method
