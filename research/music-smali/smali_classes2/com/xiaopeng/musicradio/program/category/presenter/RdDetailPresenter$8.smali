.class Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$8;
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
.field final synthetic a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;)V
    .locals 0

    .line 580
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$8;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 583
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$8;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 584
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$8;->a:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/category/view/b;

    invoke-interface {v0}, Lcom/xiaopeng/musicradio/program/category/view/b;->playAll()V

    :cond_0
    return-void
.end method
