.class public Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;
.super Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;
.source "ProgramSmallPlayerSubViewCreator.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/program/player/view/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout<",
        "Lcom/xiaopeng/musicradio/program/player/view/c;",
        "Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;",
        ">;",
        "Lcom/xiaopeng/musicradio/program/player/view/c;"
    }
.end annotation


# instance fields
.field private mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

.field private mSpeedImg:Lcom/xiaopeng/xui/widget/XImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 28
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/commonui/base/BaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;)Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 0

    .line 21
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;->mPresenter:Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;

    return-object p0
.end method


# virtual methods
.method protected bridge synthetic createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    .line 21
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;->createPresenter()Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;

    move-result-object v0

    return-object v0
.end method

.method protected createPresenter()Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;
    .locals 1

    .line 42
    new-instance v0, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/program/player/presenter/ProgramSmallPlayerSubViewPresenter;-><init>()V

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 47
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->image_love:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    .line 48
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->image_speed:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;->mSpeedImg:Lcom/xiaopeng/xui/widget/XImageView;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 75
    sget v0, Lcom/xiaopeng/musicradio/program/b$f;->layout_small_program_player:I

    return v0
.end method

.method protected setListener()V
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator$1;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;->mSpeedImg:Lcom/xiaopeng/xui/widget/XImageView;

    new-instance v1, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator$2;-><init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setSpeed(F)V
    .locals 2

    .line 87
    sget v0, Lcom/xiaopeng/musicradio/program/b$c;->icon_player_speed:I

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    .line 89
    sget v0, Lcom/xiaopeng/musicradio/program/b$c;->ic_120_10:I

    goto :goto_0

    :cond_0
    const/high16 v1, 0x3fa00000    # 1.25f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_1

    .line 91
    sget v0, Lcom/xiaopeng/musicradio/program/b$c;->ic_120_x125:I

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3fc00000    # 1.5f

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    .line 93
    sget v0, Lcom/xiaopeng/musicradio/program/b$c;->ic_120_15:I

    goto :goto_0

    :cond_2
    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float p1, p1, v1

    if-nez p1, :cond_3

    .line 95
    sget v0, Lcom/xiaopeng/musicradio/program/b$c;->ic_120_20:I

    .line 97
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;->mSpeedImg:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;->mSpeedImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    return-void
.end method

.method protected setView()V
    .locals 0

    return-void
.end method

.method public showDefault()V
    .locals 2

    .line 103
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;->mSpeedImg:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lcom/xiaopeng/musicradio/program/b$c;->ic_120_10:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;->mSpeedImg:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    return-void
.end method

.method public updateLove(Z)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XImageView;->setSelected(Z)V

    .line 81
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramSmallPlayerSubViewCreator;->mLoveImg:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/utils/at;->a(Landroid/view/View;Z)V

    return-void
.end method
