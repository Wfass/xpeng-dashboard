.class public interface abstract Lcom/xiaopeng/xuimanager/common/PipeListenerString;
.super Ljava/lang/Object;
.source "PipeListenerString.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/common/PipeListener;


# virtual methods
.method public onPiped(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)V
    .locals 2

    .line 8
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getStringArray()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 9
    array-length v0, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    aget-object p2, p2, v0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p0, p1, p2}, Lcom/xiaopeng/xuimanager/common/PipeListenerString;->onPiped(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public abstract onPiped(Ljava/lang/String;Ljava/lang/String;)V
.end method
