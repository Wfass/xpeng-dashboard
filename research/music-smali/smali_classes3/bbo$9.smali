.class Lbbo$9;
.super Ljava/lang/Object;
.source "PreloadPageHandler.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbo;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;IIIIZLbbo$a;)V
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
.field final synthetic a:Lbbo$a;

.field final synthetic b:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lbbo$a;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lbbo$9;->b:Lbbo;

    iput-object p2, p0, Lbbo$9;->a:Lbbo$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "accept: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lbbo$9;->b:Lbbo;

    invoke-static {v1}, Lbbo;->a(Lbbo;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreloadPageHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    iget-object v0, p0, Lbbo$9;->b:Lbbo;

    invoke-static {v0}, Lbbo;->a(Lbbo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 126
    iget-object v0, p0, Lbbo$9;->b:Lbbo;

    invoke-static {v0}, Lbbo;->b(Lbbo;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object p1, p0, Lbbo$9;->a:Lbbo$a;

    invoke-interface {p1}, Lbbo$a;->a()V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lbbo$9;->a:Lbbo$a;

    invoke-interface {v0, p1}, Lbbo$a;->a(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 121
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lbbo$9;->a(Ljava/util/List;)V

    return-void
.end method
