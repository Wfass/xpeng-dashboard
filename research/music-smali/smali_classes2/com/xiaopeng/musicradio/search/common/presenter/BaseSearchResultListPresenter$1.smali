.class Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$1;
.super Ljava/lang/Object;
.source "BaseSearchResultListPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter$1;->a:Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;

    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v1

    invoke-virtual {v1}, Lbnz;->f()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lbnz;->a()Lbnz;

    move-result-object v2

    invoke-virtual {v2}, Lbnz;->e()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/musicradio/search/common/presenter/BaseSearchResultListPresenter;->a(Ljava/lang/String;I)V

    return-void
.end method
