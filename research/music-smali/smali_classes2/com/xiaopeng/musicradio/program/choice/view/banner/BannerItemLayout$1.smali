.class Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout$1;
.super Ljava/lang/Object;
.source "BannerItemLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;)V
    .locals 0

    .line 137
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 140
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->play_state:I

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecute(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 141
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->a(Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->c()V

    .line 142
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout$1;->a:Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->b(Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;)Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getChannelName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lbmx;->b(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
