.class Layw$8;
.super Ljava/lang/Object;
.source "PreloadAllPageAction.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layw;->a(Ljava/util/List;ILayw$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Integer;",
        "Lio/reactivex/ObservableSource<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Layw;


# direct methods
.method constructor <init>(Layw;I)V
    .locals 0

    .line 95
    iput-object p1, p0, Layw$8;->b:Layw;

    iput p2, p0, Layw$8;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Lio/reactivex/Observable;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flat apply: page = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreloadAllPageAction"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    iget-object v0, p0, Layw$8;->b:Layw;

    invoke-static {v0}, Layw;->a(Layw;)Layw$a;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget v2, p0, Layw$8;->a:I

    invoke-interface {v0, v1, v2}, Layw$a;->a(II)Lio/reactivex/Observable;

    move-result-object v0

    new-instance v1, Layw$8$1;

    invoke-direct {v1, p0, p1}, Layw$8$1;-><init>(Layw$8;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1}, Lio/reactivex/Observable;->onErrorResumeNext(Lio/reactivex/functions/Function;)Lio/reactivex/Observable;

    move-result-object p1

    .line 109
    invoke-static {}, Lio/reactivex/schedulers/Schedulers;->io()Lio/reactivex/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->subscribeOn(Lio/reactivex/Scheduler;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 95
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Layw$8;->a(Ljava/lang/Integer;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
