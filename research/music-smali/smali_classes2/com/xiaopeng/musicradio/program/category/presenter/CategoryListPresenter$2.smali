.class Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$2;
.super Ljava/lang/Object;
.source "CategoryListPresenter.java"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->a(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Consumer<",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;I)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$2;->b:Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;

    iput p2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$2;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 2

    .line 94
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$2;->b:Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$2;->b:Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/a;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$2;->a:I

    invoke-interface {v0, p1, v1}, Lcom/xiaopeng/musicradio/program/category/view/a;->showLoadingFailed(Ljava/lang/String;I)V

    .line 98
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getRankTotalAlbumList#error() called with: msg = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "]"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CategoryListPresenter"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 91
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/program/category/presenter/CategoryListPresenter$2;->a(Ljava/lang/Throwable;)V

    return-void
.end method
