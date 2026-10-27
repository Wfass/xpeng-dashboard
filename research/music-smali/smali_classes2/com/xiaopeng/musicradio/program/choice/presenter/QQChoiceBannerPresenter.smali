.class public Lcom/xiaopeng/musicradio/program/choice/presenter/QQChoiceBannerPresenter;
.super Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;
.source "QQChoiceBannerPresenter.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/ChoiceBannerPresenter;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    .line 16
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->history_layout:I

    invoke-static {v0}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecuteLong(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/program/fragment/sub/history"

    .line 18
    invoke-static {p1, v0}, Lbmz;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    invoke-static {}, Lbmx;->b()V

    :cond_0
    return-void
.end method
