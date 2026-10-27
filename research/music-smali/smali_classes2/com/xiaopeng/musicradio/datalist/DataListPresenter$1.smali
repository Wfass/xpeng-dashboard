.class Lcom/xiaopeng/musicradio/datalist/DataListPresenter$1;
.super Ljava/lang/Object;
.source "DataListPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->b(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/xiaopeng/musicradio/datalist/DataListPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/datalist/DataListPresenter;Z)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter$1;->b:Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter$1;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 165
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter$1;->b:Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter$1;->a:Z

    const/4 v2, 0x0

    new-array v3, v2, [I

    invoke-virtual {v0, v1, v3}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->a(Z[I)V

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter$1;->b:Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->q()Lcom/xiaopeng/musicradio/datalist/b;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter$1;->b:Lcom/xiaopeng/musicradio/datalist/DataListPresenter;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/datalist/DataListPresenter;->l:Lcom/xiaopeng/musicradio/datalist/b;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/datalist/b;->a(Z[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
