.class public interface abstract Lcom/xiaopeng/xuimanager/common/PipeListenerLong;
.super Ljava/lang/Object;
.source "PipeListenerLong.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/common/PipeListener;


# virtual methods
.method public abstract onPiped(Ljava/lang/String;J)V
.end method

.method public onPiped(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)V
    .locals 2

    .line 8
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getLong()J

    move-result-wide v0

    invoke-interface {p0, p1, v0, v1}, Lcom/xiaopeng/xuimanager/common/PipeListenerLong;->onPiped(Ljava/lang/String;J)V

    return-void
.end method
