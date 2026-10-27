.class Lbbo$1;
.super Ljava/lang/Object;
.source "PreloadPageHandler.java"

# interfaces
.implements Lio/reactivex/functions/Function;


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
        "Lio/reactivex/functions/Function<",
        "TT;",
        "Lio/reactivex/ObservableSource<",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lbbo$a;

.field final synthetic b:Lcom/xiaopeng/musicradio/bean/ListSignBean;

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lbbo$a;Lcom/xiaopeng/musicradio/bean/ListSignBean;II)V
    .locals 0

    .line 62
    iput-object p1, p0, Lbbo$1;->e:Lbbo;

    iput-object p2, p0, Lbbo$1;->a:Lbbo$a;

    iput-object p3, p0, Lbbo$1;->b:Lcom/xiaopeng/musicradio/bean/ListSignBean;

    iput p4, p0, Lbbo$1;->c:I

    iput p5, p0, Lbbo$1;->d:I

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

    const-string v0, "PreloadPageHandler"

    const-string v1, "apply2: ======="

    .line 65
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    iget-object v1, p0, Lbbo$1;->a:Lbbo$a;

    invoke-interface {v1, p1}, Lbbo$a;->a(Ljava/lang/Object;)I

    move-result v1

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "preloadPageReq:retTotalPage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 68
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 69
    iget-object v2, p0, Lbbo$1;->a:Lbbo$a;

    iget-object v3, p0, Lbbo$1;->b:Lcom/xiaopeng/musicradio/bean/ListSignBean;

    invoke-interface {v2, v3, p1, v1}, Lbbo$a;->a(Lcom/xiaopeng/musicradio/bean/ListSignBean;Ljava/lang/Object;I)V

    if-ne v1, v0, :cond_0

    .line 71
    iget-object p1, p0, Lbbo$1;->e:Lbbo;

    invoke-static {p1, v0}, Lbbo;->a(Lbbo;Z)Z

    .line 73
    :cond_0
    iget-object p1, p0, Lbbo$1;->e:Lbbo;

    iget v2, p0, Lbbo$1;->c:I

    add-int/2addr v2, v0

    iget v3, p0, Lbbo$1;->d:I

    sub-int/2addr v3, v0

    invoke-static {p1, v2, v3, v1}, Lbbo;->a(Lbbo;III)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 62
    invoke-virtual {p0, p1}, Lbbo$1;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
