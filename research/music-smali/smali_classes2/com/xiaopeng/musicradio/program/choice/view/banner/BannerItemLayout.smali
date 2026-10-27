.class public Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;
.source "BannerItemLayout.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$a;
.implements Lcom/xiaopeng/musicradio/program/choice/view/banner/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout<",
        "Lcom/xiaopeng/musicradio/program/choice/view/banner/a;",
        "Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$a;",
        "Lcom/xiaopeng/musicradio/program/choice/view/banner/a;"
    }
.end annotation


# instance fields
.field protected b:Landroid/widget/FrameLayout;

.field protected c:Lcom/xiaopeng/musicradio/widget/PlayControlView;

.field protected d:Lcom/xiaopeng/xui/widget/XTextView;

.field private e:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private f:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

.field private g:Lcom/xiaopeng/xui/widget/XTextView;

.field private h:Lcom/xiaopeng/xui/widget/XImageView;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:I

.field private n:Ljava/lang/String;

.field private o:Ljava/lang/String;

.field private p:Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;

.field private q:Z

.field private r:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "#0da5c8d9"

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->i:Ljava/lang/String;

    const-string p1, "#f8caca"

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->j:Ljava/lang/String;

    const-string p1, "#511B1B"

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->k:Ljava/lang/String;

    const-string p1, "#43231F"

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->l:Ljava/lang/String;

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->n:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->o:Ljava/lang/String;

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->q:Z

    .line 235
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->r:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "#0da5c8d9"

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->i:Ljava/lang/String;

    const-string p1, "#f8caca"

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->j:Ljava/lang/String;

    const-string p1, "#511B1B"

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->k:Ljava/lang/String;

    const-string p1, "#43231F"

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->l:Ljava/lang/String;

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->n:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->o:Ljava/lang/String;

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->q:Z

    .line 235
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->r:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "#0da5c8d9"

    .line 49
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->i:Ljava/lang/String;

    const-string p1, "#f8caca"

    .line 50
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->j:Ljava/lang/String;

    const-string p1, "#511B1B"

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->k:Ljava/lang/String;

    const-string p1, "#43231F"

    .line 52
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->l:Ljava/lang/String;

    const/4 p1, 0x0

    .line 54
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->n:Ljava/lang/String;

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->o:Ljava/lang/String;

    const/4 p1, 0x0

    .line 57
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->q:Z

    .line 235
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->r:Z

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->a:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;)Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->p:Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;

    return-object p0
.end method

.method private b(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "^#(([0-9a-f]{6})|([0-9a-f]{8}))$"

    const/4 v1, 0x2

    .line 232
    invoke-static {v0, v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method

.method private getShowVuiLabel()Ljava/lang/String;
    .locals 2

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 264
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->o:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->n:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 268
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_1

    const-string v1, "|"

    .line 269
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->n:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected synthetic a()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 40
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->e()Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->c:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->setPlayState(I)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 244
    :goto_0
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->r:Z

    if-eq v0, p1, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->c:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    invoke-static {v0, v1, p1}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    .line 246
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->r:Z

    :cond_1
    return-void
.end method

.method public a(J)V
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->g:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string p2, "MM-dd"

    invoke-static {p2, p1}, Lcom/xiaopeng/musicradio/utils/r;->a(Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 253
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->g:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    return-void
.end method

.method public a(Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;)V
    .locals 7

    .line 183
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->p:Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;

    .line 184
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->e:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->h:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/xiaopeng/musicradio/program/b$c;->pic_covers_music_220:I

    invoke-static {v0, v1, v2, v3, v4}, Lbxo;->a(Landroid/content/Context;Lcom/xiaopeng/xui/widget/XImageView;Lcom/xiaopeng/xui/widget/XImageView;Ljava/lang/String;I)V

    .line 185
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getColorBean()Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 186
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getColorBean()Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;->getStartColorDaytime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getColorBean()Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;->getStartColorDaytime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getColorBean()Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;->getStartColorDaytime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->i:Ljava/lang/String;

    .line 189
    :cond_0
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getColorBean()Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;->getEndColorDaytime()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getColorBean()Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;->getEndColorDaytime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getColorBean()Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;->getEndColorDaytime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->j:Ljava/lang/String;

    .line 192
    :cond_1
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getColorBean()Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;->getStartColorNight()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getColorBean()Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;->getStartColorNight()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 193
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getColorBean()Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;->getStartColorNight()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->k:Ljava/lang/String;

    .line 195
    :cond_2
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getColorBean()Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;->getEndColorNight()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getColorBean()Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;->getEndColorNight()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 196
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getColorBean()Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$BackgroundColorBean;->getEndColorNight()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->l:Ljava/lang/String;

    .line 199
    :cond_3
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->f()V

    .line 200
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getTrackInfoBos()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getTrackInfoBos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 202
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getTrackInfoBos()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;

    .line 203
    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 204
    new-instance v3, Lbmd;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$TrackInfoBosItem;->getUpdateTime()J

    move-result-wide v5

    invoke-direct {v3, v4, v5, v6}, Lbmd;-><init>(Ljava/lang/String;J)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 209
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->f:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->setTextList(Ljava/util/List;)V

    .line 210
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->f:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    const-wide/16 v2, 0x4e20

    invoke-virtual {v1, v2, v3}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->setTextStillTime(J)V

    .line 211
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->a:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getChannelId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->c(I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 212
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->c:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->setPlayState(I)V

    goto :goto_1

    .line 214
    :cond_6
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->c:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->setPlayState(I)V

    .line 216
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->a:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v1, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;

    invoke-virtual {v1, p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->a(Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;)V

    .line 217
    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->m:I

    invoke-virtual {p0, v1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->setVuiPosition(I)V

    .line 218
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getChannelName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->o:Ljava/lang/String;

    .line 219
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-lt v1, v2, :cond_7

    const/4 v1, 0x0

    .line 220
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbmd;

    invoke-virtual {v0}, Lbmd;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->n:Ljava/lang/String;

    .line 222
    :cond_7
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->getShowVuiLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "program_banner_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->m:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 224
    sget-object v0, Lbxx;->CLICK:Lbxx;

    invoke-virtual {v0}, Lbxx;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->setVuiAction(Ljava/lang/String;)V

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->c:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    iget v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->m:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->setVuiPosition(I)V

    .line 226
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->c:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->c:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->getId()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "_"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->m:I

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 227
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->a:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/xpbean/TodayNewsChannelBean$DataBean$ListBean;->getChannelId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->c(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->r:Z

    .line 228
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->c:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    iget-boolean v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->r:Z

    invoke-static {p1, v0, v1}, Lcom/xiaopeng/musicradio/vui/c;->a(Landroid/content/Context;Landroid/view/View;Z)V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->n:Ljava/lang/String;

    return-void
.end method

.method protected b()V
    .locals 1

    .line 82
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->album_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->b:Landroid/widget/FrameLayout;

    .line 83
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->album_logo:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->e:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 84
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->play_state:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/PlayControlView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->c:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    .line 85
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->title_scroller:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->f:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    .line 86
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->date:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->g:Lcom/xiaopeng/xui/widget/XTextView;

    .line 87
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->bg_iv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->h:Lcom/xiaopeng/xui/widget/XImageView;

    .line 88
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->d:Lcom/xiaopeng/xui/widget/XTextView;

    return-void
.end method

.method protected c()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->f:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    invoke-virtual {v0, p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->setCallback(Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle$a;)V

    return-void
.end method

.method protected d()V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->c:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    new-instance v1, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout$1;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected e()Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;
    .locals 1

    .line 77
    new-instance v0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;-><init>()V

    return-object v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public g()V
    .locals 1

    const/4 v0, 0x1

    .line 159
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->q:Z

    .line 160
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->f:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->startAutoScroll()V

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 150
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->item_banner:I

    return v0
.end method

.method public getPagerIndex()I
    .locals 1

    .line 132
    iget v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->m:I

    return v0
.end method

.method public h()V
    .locals 1

    const/4 v0, 0x0

    .line 165
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->q:Z

    .line 166
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->f:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->stopAutoScroll()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 93
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->onAttachedToWindow()V

    .line 94
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->q:Z

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->f:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->startAutoScroll()V

    :cond_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 178
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 179
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->f()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 101
    invoke-super {p0}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->onDetachedFromWindow()V

    .line 102
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->f:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->stopAutoScroll()V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/n;)V
    .locals 0

    .line 112
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->onPause(Landroidx/lifecycle/n;)V

    .line 113
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->f:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->stopAutoScroll()V

    :cond_0
    return-void
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 120
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseConstraintLayout;->onResume(Landroidx/lifecycle/n;)V

    .line 121
    iget-boolean p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->q:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->f:Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;

    if-eqz p1, :cond_0

    .line 122
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/program/choice/view/banner/VerticalBannerTitle;->startAutoScroll()V

    :cond_0
    return-void
.end method

.method public setPagerIndex(I)V
    .locals 1

    .line 127
    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->m:I

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/banner/BannerItemLayout;->a:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    check-cast v0, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/program/choice/presenter/banner/BannerItemPresenter;->a(I)V

    return-void
.end method
