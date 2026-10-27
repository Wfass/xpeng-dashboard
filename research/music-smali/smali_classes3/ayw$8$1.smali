.class Layw$8$1;
.super Ljava/lang/Object;
.source "PreloadAllPageAction.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Layw$8;->a(Ljava/lang/Integer;)Lio/reactivex/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Throwable;",
        "Lio/reactivex/ObservableSource<",
        "+TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Integer;

.field final synthetic b:Layw$8;


# direct methods
.method constructor <init>(Layw$8;Ljava/lang/Integer;)V
    .locals 0

    .line 99
    iput-object p1, p0, Layw$8$1;->b:Layw$8;

    iput-object p2, p0, Layw$8$1;->a:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Lio/reactivex/ObservableSource;
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lio/reactivex/ObservableSource<",
            "+TT;>;"
        }
    .end annotation

    .line 102
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "apply: fail page =  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Layw$8$1;->a:Ljava/lang/Integer;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PreloadAllPageAction"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object p1, p0, Layw$8$1;->b:Layw$8;

    iget-object p1, p1, Layw$8;->b:Layw;

    invoke-static {p1}, Layw;->e(Layw;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    .line 104
    iget-object p1, p0, Layw$8$1;->b:Layw$8;

    iget-object p1, p1, Layw$8;->b:Layw;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1, v0}, Layw;->a(Layw;Ljava/util/List;)Ljava/util/List;

    .line 106
    :cond_0
    iget-object p1, p0, Layw$8$1;->b:Layw$8;

    iget-object p1, p1, Layw$8;->b:Layw;

    invoke-static {p1}, Layw;->e(Layw;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Layw$8$1;->a:Ljava/lang/Integer;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-static {}, Lio/reactivex/Observable;->empty()Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 99
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Layw$8$1;->a(Ljava/lang/Throwable;)Lio/reactivex/ObservableSource;

    move-result-object p1

    return-object p1
.end method
