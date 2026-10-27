.class public interface abstract Lcom/xiaopeng/xuimanager/common/PipeListenerInt;
.super Ljava/lang/Object;
.source "PipeListenerInt.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/common/PipeListener;


# virtual methods
.method public abstract onPiped(Ljava/lang/String;I)V
.end method

.method public onPiped(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)V
    .locals 0

    .line 8
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getInt()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/xiaopeng/xuimanager/common/PipeListenerInt;->onPiped(Ljava/lang/String;I)V

    return-void
.end method
