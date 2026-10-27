.class Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$3;
.super Ljava/lang/Object;
.source "ChoiceBannerLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$3;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 161
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout$3;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;->d(Lcom/xiaopeng/musicradio/program/choice/view/banner/ChoiceBannerLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/presenter/QQChoiceBannerPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/QQChoiceBannerPresenter;->e()V

    return-void
.end method
