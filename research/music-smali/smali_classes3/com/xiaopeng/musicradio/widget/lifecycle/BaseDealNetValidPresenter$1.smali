.class Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter$1;
.super Ljava/lang/Object;
.source "BaseDealNetValidPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->dealNetValid(Lcom/xiaopeng/musicradio/event/common/CommonEvent$ad;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;)V
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter$1;->a:Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 37
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/NetUtils;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter$1;->a:Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/lifecycle/BaseDealNetValidPresenter;->g()V

    :cond_0
    return-void
.end method
