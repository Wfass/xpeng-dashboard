.class public interface abstract Lcom/xiaopeng/xuimanager/common/PipeListenerParcelable;
.super Ljava/lang/Object;
.source "PipeListenerParcelable.java"

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
.method public abstract onPiped(Ljava/lang/String;Landroid/os/Parcelable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation
.end method

.method public onPiped(Ljava/lang/String;Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;)V
    .locals 0

    .line 10
    invoke-virtual {p2}, Lcom/xiaopeng/xuimanager/pipebus/ParcelableContainer;->getParcelable()Landroid/os/Parcelable;

    move-result-object p2

    .line 11
    invoke-interface {p0, p1, p2}, Lcom/xiaopeng/xuimanager/common/PipeListenerParcelable;->onPiped(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
