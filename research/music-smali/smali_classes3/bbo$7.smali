.class Lbbo$7;
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

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Lbbo;


# direct methods
.method constructor <init>(Lbbo;Lbbo$a;III)V
    .locals 0

    .line 84
    iput-object p1, p0, Lbbo$7;->e:Lbbo;

    iput-object p2, p0, Lbbo$7;->a:Lbbo$a;

    iput p3, p0, Lbbo$7;->b:I

    iput p4, p0, Lbbo$7;->c:I

    iput p5, p0, Lbbo$7;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Lio/reactivex/Observable;
    .locals 3
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

    .line 87
    iget-object v0, p0, Lbbo$7;->a:Lbbo$a;

    invoke-interface {v0, p1}, Lbbo$a;->a(Ljava/lang/Object;)I

    move-result p1

    int-to-float p1, p1

    iget v0, p0, Lbbo$7;->b:I

    int-to-float v0, v0

    const/4 v1, 0x0

    add-float/2addr v0, v1

    div-float/2addr p1, v0

    float-to-double v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p1, v0

    const/4 v0, 0x1

    .line 88
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 89
    iget-object v0, p0, Lbbo$7;->e:Lbbo;

    iget v1, p0, Lbbo$7;->c:I

    iget v2, p0, Lbbo$7;->d:I

    invoke-static {v0, v1, v2, p1}, Lbbo;->a(Lbbo;III)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method

.method public synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Lio/reactivex/annotations/NonNull;
        .end annotation
    .end param

    .line 84
    invoke-virtual {p0, p1}, Lbbo$7;->a(Ljava/lang/Object;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
