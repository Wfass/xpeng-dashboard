.class Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$2;
.super Ljava/lang/Object;
.source "RdDetailPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->onHistoryChanged(Lasj$v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lasj$v;

.field final synthetic b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;Lasj$v;)V
    .locals 0

    .line 810
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$2;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$2;->a:Lasj$v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 813
    invoke-static {}, Lbmo;->a()Lbmo;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$2;->a:Lasj$v;

    invoke-virtual {v1}, Lasj$v;->a()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lbmo;->a(J)Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 815
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter$2;->b:Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;

    invoke-static {v1, v0}, Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;->a(Lcom/xiaopeng/musicradio/program/category/presenter/RdDetailPresenter;Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;)Lcom/xiaopeng/musicradio/bean/db/ReadHistoryInfo;

    :cond_0
    return-void
.end method
