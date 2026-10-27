.class Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13$1;
.super Ljava/lang/Object;
.source "ChoiceBannerLayout13.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;)V
    .locals 0

    .line 126
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(II)V
    .locals 1

    .line 129
    invoke-static {}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;->i()Ljava/lang/String;

    move-result-object p1

    const-string v0, "click: ========"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;->a(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/presenter/QQChoiceBannerPresenter;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/program/choice/presenter/QQChoiceBannerPresenter;->a(I)V

    .line 131
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;->b(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout13;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/presenter/QQChoiceBannerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/QQChoiceBannerPresenter;->g()V

    return-void
.end method
