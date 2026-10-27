.class public interface abstract Lcom/xiaopeng/appstart/core/base/TaskInterface;
.super Ljava/lang/Object;
.source "TaskInterface.java"


# virtual methods
.method public abstract getDependsTaskList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/xiaopeng/appstart/core/AppStartTask;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract needWait()Z
.end method

.method public abstract priority()I
.end method

.method public abstract runOnExecutor()Ljava/util/concurrent/Executor;
.end method
