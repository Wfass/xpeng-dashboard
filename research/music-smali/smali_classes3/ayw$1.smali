.class Layw$1;
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
        "TT;",
        "Lio/reactivex/ObservableSource<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Layw;


# direct methods
.method constructor <init>(Layw;)V
    .locals 0

    .line 69
    iput-object p1, p0, Layw$1;->a:Layw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Layw$1;->a:Layw;

    invoke-static {v0}, Layw;->a(Layw;)Layw$a;

    move-result-object v0

    invoke-interface {v0, p1}, Layw$a;->b(Ljava/lang/Object;)I

    move-result v0

    .line 73
    iget-object v1, p0, Layw$1;->a:Layw;

    invoke-static {v1}, Layw;->a(Layw;)Layw$a;

    move-result-object v1

    invoke-interface {v1, p1}, Layw$a;->c(Ljava/lang/Object;)V

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "preloadPageReq:retTotalPage = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PreloadAllPageAction"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget-object v1, p0, Layw$1;->a:Layw;

    invoke-static {v1}, Layw;->b(Layw;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 76
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 77
    iget-object v1, p0, Layw$1;->a:Layw;

    invoke-static {v1}, Layw;->c(Layw;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x7

    :goto_0
    if-gt v1, v0, :cond_0

    .line 79
    iget-object v2, p0, Layw$1;->a:Layw;

    invoke-static {v2}, Layw;->c(Layw;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    iget-object v1, p0, Layw$1;->a:Layw;

    invoke-static {v1}, Layw;->a(Layw;)Layw$a;

    move-result-object v1

    invoke-interface {v1, p1}, Layw$a;->a(Ljava/lang/Object;)V

    .line 82
    iget-object p1, p0, Layw$1;->a:Layw;

    const/4 v1, 0x2

    const/4 v2, 0x5

    invoke-static {p1, v1, v2, v0}, Layw;->a(Layw;III)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 69
    invoke-virtual {p0, p1}, Layw$1;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
