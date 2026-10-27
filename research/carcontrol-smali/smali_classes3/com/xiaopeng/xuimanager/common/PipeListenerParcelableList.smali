.class public interface abstract Lcom/xiaopeng/xuimanager/common/PipeListenerParcelableList;
.super Ljava/lang/Object;
.source "PipeListenerParcelableList.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/common/PipeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Landroid/os/Parcelable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/xiaopeng/xuimanager/common/PipeListener;"
    }
.end annotation


# virtual methods
.method public onPiped(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)V
    .locals 0

    .line 12
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelableList()Ljava/util/List;

    move-result-object p2

    .line 13
    invoke-interface {p0, p1, p2}, Lcom/xiaopeng/xuimanager/common/PipeListenerParcelableList;->onPiped(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public abstract onPiped(Ljava/lang/String;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation
.end method
