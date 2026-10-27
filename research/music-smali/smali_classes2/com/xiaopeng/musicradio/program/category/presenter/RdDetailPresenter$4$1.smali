.class Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4$1;
.super Ljava/lang/Object;
.source "RdDetailPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 278
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/program/category/view/b;->updateData()V

    .line 279
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/b;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/program/category/view/b;->refreshLove(Z)V

    .line 280
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 281
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/b;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4$1;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$4;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-static {v1}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/program/category/view/b;->onUpdateSort(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
