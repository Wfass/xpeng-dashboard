.class public Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;
.super Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;
.source "SingerSelectLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$a;,
        Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$b;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SingerSelectLayout"


# instance fields
.field private mAreaAdapter:Lbjf;

.field private mAreaLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mAreaRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

.field private mClickCloseListener:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$a;

.field private mCloseLayout:Landroid/widget/FrameLayout;

.field private mContext:Landroid/content/Context;

.field private mIsHideActionStart:Z

.field private mIsShowActionStart:Z

.field private mSelectText:Lcom/xiaopeng/xui/widget/XTextView;

.field private mSingerArea:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

.field private mSingerSelectBig:Landroid/widget/RelativeLayout;

.field private mSingerSelectSmall:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field private mSingerType:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

.field private mStateChange:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$b;

.field private mTypeAdapter:Lbji;

.field private mTypeLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

.field private mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 63
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 51
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mIsShowActionStart:Z

    .line 52
    iput-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mIsHideActionStart:Z

    .line 64
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 51
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mIsShowActionStart:Z

    .line 52
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mIsHideActionStart:Z

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 73
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/MusicVuiBaseFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 51
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mIsShowActionStart:Z

    .line 52
    iput-boolean p2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mIsHideActionStart:Z

    .line 74
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;)Lbji;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mTypeAdapter:Lbji;

    return-object p0
.end method

.method static synthetic access$100(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;)Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$b;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mStateChange:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$b;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;)Lcom/xiaopeng/xui/widget/XLinearLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSingerSelectSmall:Lcom/xiaopeng/xui/widget/XLinearLayout;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mIsShowActionStart:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mMenuIndex:I

    return p0
.end method

.method static synthetic access$202(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;)Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSingerType:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    return-object p1
.end method

.method static synthetic access$300(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;)V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->setSelectTex()V

    return-void
.end method

.method static synthetic access$400(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;)Lbjf;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mAreaAdapter:Lbjf;

    return-object p0
.end method

.method static synthetic access$502(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;)Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;
    .locals 0

    .line 39
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSingerArea:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    return-object p1
.end method

.method static synthetic access$600(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;)Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$a;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mClickCloseListener:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$a;

    return-object p0
.end method

.method static synthetic access$702(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;Z)Z
    .locals 0

    .line 39
    iput-boolean p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mIsHideActionStart:Z

    return p1
.end method

.method static synthetic access$800(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;)I
    .locals 0

    .line 39
    iget p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mMenuIndex:I

    return p0
.end method

.method static synthetic access$900(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSingerSelectBig:Landroid/widget/RelativeLayout;

    return-object p0
.end method

.method private setSelectTex()V
    .locals 3

    .line 193
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSingerArea:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSingerType:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    if-eqz v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSelectText:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSingerArea:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->getAreaName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSingerType:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    invoke-virtual {v2}, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSingerSelectSmall:Lcom/xiaopeng/xui/widget/XLinearLayout;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSelectText:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v1}, Lcom/xiaopeng/xui/widget/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVuiLabel(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected createPresenter()Lcom/xiaopeng/musicradio/commonui/lifecycle/BasePresenter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected findView()V
    .locals 1

    .line 91
    sget v0, Lbez$d;->singer_type_rv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 92
    sget v0, Lbez$d;->singer_area_rv:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mAreaRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    .line 93
    sget v0, Lbez$d;->singer_select_small:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSingerSelectSmall:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 94
    sget v0, Lbez$d;->singer_select_big:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSingerSelectBig:Landroid/widget/RelativeLayout;

    .line 95
    sget v0, Lbez$d;->select_text:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSelectText:Lcom/xiaopeng/xui/widget/XTextView;

    .line 96
    sget v0, Lbez$d;->close_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mCloseLayout:Landroid/widget/FrameLayout;

    return-void
.end method

.method public getContentViewId()I
    .locals 1

    .line 85
    sget v0, Lbez$f;->music_layout_singer_select_qq:I

    return v0
.end method

.method public hideAnimation(Landroid/view/View;J)V
    .locals 10

    .line 224
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mIsHideActionStart:Z

    if-eqz v0, :cond_0

    return-void

    .line 227
    :cond_0
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/high16 v9, -0x40800000    # -1.0f

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 230
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 231
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 232
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 233
    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$5;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$5;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 250
    new-instance v0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$6;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$6;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;Landroid/view/View;)V

    invoke-static {v0, p2, p3}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setAreaData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;)V"
        }
    .end annotation

    .line 175
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mAreaAdapter:Lbjf;

    invoke-virtual {v0, p1}, Lbjf;->a(Ljava/util/List;)V

    .line 176
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mAreaAdapter:Lbjf;

    invoke-virtual {v0}, Lbjf;->notifyDataSetChanged()V

    .line 177
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 178
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSingerArea:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    .line 180
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->setSelectTex()V

    return-void
.end method

.method public setClickCloseListener(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$a;)V
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mClickCloseListener:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$a;

    return-void
.end method

.method protected setListener()V
    .locals 2

    .line 126
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mTypeAdapter:Lbji;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$1;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;)V

    invoke-virtual {v0, v1}, Lbji;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mAreaAdapter:Lbjf;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$2;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;)V

    invoke-virtual {v0, v1}, Lbjf;->a(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$c;)V

    .line 148
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSingerSelectSmall:Lcom/xiaopeng/xui/widget/XLinearLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$3;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$3;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mCloseLayout:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$4;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$4;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setStateChange(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$b;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mStateChange:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$b;

    return-void
.end method

.method public setTypeData(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;",
            ">;)V"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mTypeAdapter:Lbji;

    invoke-virtual {v0, p1}, Lbji;->a(Ljava/util/List;)V

    .line 185
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mTypeAdapter:Lbji;

    invoke-virtual {v0}, Lbji;->notifyDataSetChanged()V

    .line 186
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 187
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSingerType:Lcom/xiaopeng/musicradio/bean/music/xpbean/SingerType;

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->setSelectTex()V

    return-void
.end method

.method protected setView()V
    .locals 14

    .line 101
    new-instance v0, Lbji;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lbji;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mTypeAdapter:Lbji;

    .line 102
    new-instance v0, Lbjf;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lbjf;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mAreaAdapter:Lbjf;

    .line 103
    new-instance v0, Lcom/xiaopeng/musicradio/widget/recyclerview/h;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41300000    # 11.0f

    invoke-static {v1, v2}, Lapf;->a(Landroid/content/Context;F)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-direct {v0, v3, v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;-><init>(IIZ)V

    const/16 v1, 0xf

    .line 104
    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/h;->a(I)V

    .line 106
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 107
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mAreaRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 109
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mTypeLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 110
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mAreaLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    .line 111
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mTypeLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v3}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mAreaRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setHasFixedSize(Z)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mAreaRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mAreaLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 117
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mAreaRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 118
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mTypeAdapter:Lbji;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mAreaRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mAreaAdapter:Lbjf;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 120
    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mTypeRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->j(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-virtual/range {v2 .. v7}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    .line 121
    iget-object v8, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mAreaRecyclerView:Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;

    iget v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mMenuIndex:I

    invoke-static {v0}, Lcom/xiaopeng/musicradio/vui/c;->j(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v10

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    invoke-virtual/range {v8 .. v13}, Lcom/xiaopeng/musicradio/widget/recyclerview/BaseRecycleView;->initVuiAttr(Ljava/lang/String;Lbxu;ZZZ)V

    return-void
.end method

.method public showAnimation(Landroid/view/View;J)V
    .locals 10

    .line 263
    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mIsShowActionStart:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 266
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 267
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/high16 v7, -0x40800000    # -1.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    .line 270
    invoke-virtual {v0, p2, p3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 271
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    const/4 v1, 0x1

    .line 272
    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 273
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 274
    new-instance v1, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$7;

    invoke-direct {v1, p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$7;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;Landroid/view/View;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 291
    new-instance v0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$8;

    invoke-direct {v0, p0, p1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$8;-><init>(Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;Landroid/view/View;)V

    invoke-static {v0, p2, p3}, Lbql;->b(Ljava/lang/Runnable;J)V

    return-void
.end method

.method public showBigLayout()V
    .locals 3

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSingerSelectBig:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mIsHideActionStart:Z

    if-eqz v0, :cond_1

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSingerSelectSmall:Lcom/xiaopeng/xui/widget/XLinearLayout;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSingerSelectBig:Landroid/widget/RelativeLayout;

    const-wide/16 v1, 0x96

    invoke-virtual {p0, v0, v1, v2}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->showAnimation(Landroid/view/View;J)V

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mStateChange:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$b;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$b;->selectLayoutChange(Z)V

    :cond_1
    return-void
.end method

.method public showSmallLayout()V
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSingerSelectBig:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSingerSelectSmall:Lcom/xiaopeng/xui/widget/XLinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVisibility(I)V

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSingerSelectBig:Landroid/widget/RelativeLayout;

    const-wide/16 v2, 0x96

    invoke-virtual {p0, v0, v2, v3}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->hideAnimation(Landroid/view/View;J)V

    .line 208
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSingerSelectSmall:Lcom/xiaopeng/xui/widget/XLinearLayout;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mSelectText:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {v2}, Lcom/xiaopeng/xui/widget/XTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XLinearLayout;->setVuiLabel(Ljava/lang/String;)V

    .line 209
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout;->mStateChange:Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$b;

    invoke-interface {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/main/view/SingerSelectLayout$b;->selectLayoutChange(Z)V

    :cond_0
    return-void
.end method
