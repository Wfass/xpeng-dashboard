.class public abstract Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;
.super Lcom/blankj/utilcode/util/ThreadUtils$Task;
.source "ThreadUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blankj/utilcode/util/ThreadUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/blankj/utilcode/util/ThreadUtils$Task<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1154
    .local p0, "this":Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;, "Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask<TT;>;"
    invoke-direct {p0}, Lcom/blankj/utilcode/util/ThreadUtils$Task;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .line 1158
    .local p0, "this":Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;, "Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask<TT;>;"
    const-string v0, "ThreadUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCancel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    return-void
.end method

.method public onFail(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 1163
    .local p0, "this":Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask;, "Lcom/blankj/utilcode/util/ThreadUtils$SimpleTask<TT;>;"
    const-string v0, "ThreadUtils"

    const-string v1, "onFail: "

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1164
    return-void
.end method
