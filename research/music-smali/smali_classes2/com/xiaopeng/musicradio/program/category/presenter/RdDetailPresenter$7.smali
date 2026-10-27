.class Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$7;
.super Ljava/lang/Object;
.source "RdDetailPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/FMAlbumTracksBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:I

.field final synthetic c:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;Ljava/util/List;I)V
    .locals 0

    .line 573
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$7;->c:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$7;->a:Ljava/util/List;

    iput p3, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$7;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 576
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$7;->c:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->b(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$7;->c:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->c(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)I

    move-result v2

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$7;->c:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->d(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)I

    move-result v3

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$7;->c:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->e(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)I

    move-result v4

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$7;->c:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$7;->c:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->f(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;

    move-result-object v7

    iget-object v8, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$7;->a:Ljava/util/List;

    iget v9, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$7;->b:I

    const/16 v5, 0x14

    invoke-static/range {v1 .. v9}, Lcom/xiaopeng/musicradio/utils/bc;->a(Ljava/lang/String;IIIILjava/lang/String;Lcom/xiaopeng/musicradio/bean/xpbean/RdAlbumBean;Ljava/util/List;I)V

    return-void
.end method
