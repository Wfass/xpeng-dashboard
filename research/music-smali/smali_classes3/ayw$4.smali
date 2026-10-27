.class Layw$4;
.super Ljava/lang/Object;
.source "PreloadAllPageAction.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


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
        "Lio/reactivex/functions/Consumer<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Layw;


# direct methods
.method constructor <init>(Layw;)V
    .locals 0

    .line 125
    iput-object p1, p0, Layw$4;->a:Layw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accept: full result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " mNextPageList = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Layw$4;->a:Layw;

    invoke-static {v1}, Layw;->c(Layw;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreloadAllPageAction"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    iget-object v0, p0, Layw$4;->a:Layw;

    invoke-static {v0}, Layw;->b(Layw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 130
    iget-object p1, p0, Layw$4;->a:Layw;

    invoke-static {p1}, Layw;->c(Layw;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 131
    iget-object p1, p0, Layw$4;->a:Layw;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Layw;->a(Layw;Z)Z

    .line 132
    iget-object p1, p0, Layw$4;->a:Layw;

    invoke-static {p1}, Layw;->a(Layw;)Layw$a;

    move-result-object p1

    iget-object v0, p0, Layw$4;->a:Layw;

    invoke-static {v0}, Layw;->b(Layw;)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Layw$a;->a(Ljava/util/List;)V

    goto :goto_0

    .line 134
    :cond_0
    iget-object p1, p0, Layw$4;->a:Layw;

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {p1}, Layw;->c(Layw;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Layw$4;->a:Layw;

    invoke-static {v1}, Layw;->d(Layw;)I

    move-result v1

    iget-object v2, p0, Layw$4;->a:Layw;

    invoke-static {v2}, Layw;->a(Layw;)Layw$a;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Layw;->a(Ljava/util/List;ILayw$a;)V

    :goto_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 125
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Layw$4;->a(Ljava/util/List;)V

    return-void
.end method
