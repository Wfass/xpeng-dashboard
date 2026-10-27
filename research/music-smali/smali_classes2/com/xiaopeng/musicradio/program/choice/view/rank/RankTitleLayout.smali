.class public Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout;
.source "RankTitleLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout<",
        "Lcom/xiaopeng/musicradio/program/choice/view/rank/a;",
        "Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankTitleLayoutPresenter;",
        ">;"
    }
.end annotation


# instance fields
.field private c:Lcom/xiaopeng/xui/widget/XTextView;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;->e()Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankTitleLayoutPresenter;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;II)V
    .locals 3

    .line 71
    iget-object p3, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;->c:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p3, p1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p3

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/view/View;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;->c:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p3, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiLabelUnSupportText([Landroid/view/View;)V

    .line 73
    iget-object p3, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;->f:Landroid/view/View;

    check-cast p3, Lcom/xiaopeng/xui/vui/VuiView;

    invoke-interface {p3, p1}, Lcom/xiaopeng/xui/vui/VuiView;->setVuiLabel(Ljava/lang/String;)V

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;->d:Ljava/lang/String;

    .line 75
    iput p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;->e:I

    .line 76
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object p3, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;->c:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;->c:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XTextView;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "_rankid_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p1

    iget-object p3, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;->f:Landroid/view/View;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;->f:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;->f:Landroid/view/View;

    check-cast p1, Lcom/xiaopeng/xui/vui/VuiView;

    .line 79
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object p2

    iget-object p3, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;->c:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p2, p3}, Lcom/xiaopeng/speech/vui/VuiEngine;->getVuiElementTag(Landroid/view/View;)Ljava/lang/String;

    move-result-object p2

    .line 78
    invoke-static {p1, p2}, Lcom/xiaopeng/musicradio/vui/c;->a(Lcom/xiaopeng/xui/vui/VuiView;Ljava/lang/String;)V

    return-void
.end method

.method protected b()V
    .locals 1

    .line 47
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->rank_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;->c:Lcom/xiaopeng/xui/widget/XTextView;

    .line 48
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->rank_root:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/rank/RankTitleLayout;->f:Landroid/view/View;

    return-void
.end method

.method protected c()V
    .locals 0

    return-void
.end method

.method protected d()V
    .locals 0

    return-void
.end method

.method protected e()Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankTitleLayoutPresenter;
    .locals 1

    .line 42
    new-instance v0, Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankTitleLayoutPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/program/choice/presenter/rank/RankTitleLayoutPresenter;-><init>()V

    return-object v0
.end method

.method public getContentViewId()I
    .locals 1

    .line 67
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->layout_rank_title:I

    return v0
.end method

.method public onResume(Landroidx/lifecycle/n;)V
    .locals 0

    .line 62
    invoke-super {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseLinearLayout;->onResume(Landroidx/lifecycle/n;)V

    return-void
.end method
