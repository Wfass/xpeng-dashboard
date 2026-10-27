.class public Lcom/xiaopeng/musicradio/mine/widget/d;
.super Ljava/lang/Object;
.source "DataListViewHolder.java"


# instance fields
.field public final a:Landroid/view/ViewGroup;

.field public final b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

.field public final c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

.field private d:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

.field private e:Ljava/lang/String;

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->a:Landroid/view/ViewGroup;

    .line 32
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->rv_list:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    .line 33
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->loading_tips_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->d:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 34
    sget v0, Lcom/xiaopeng/musicradio/mine/a$c;->logo_view:I

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    .line 35
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    sget-object v0, Lbxy;->UNKNOWN:Lbxy;

    invoke-static {p1, v0}, Laxt;->a(Landroid/view/View;Lbxy;)V

    return-void
.end method

.method private b()V
    .locals 4

    .line 80
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->d:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    if-eqz v0, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 84
    new-instance v1, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-direct {v1, v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->d:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->d:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->loading_tips_view:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setId(I)V

    .line 86
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 87
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->a:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->d:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->d:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 112
    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result v0

    return v0
.end method

.method public a(I)V
    .locals 1

    .line 39
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->a:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 40
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/mine/widget/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public a(ILjava/lang/Object;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    if-eqz v0, :cond_1

    .line 92
    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->setVisibility(I)V

    .line 93
    instance-of p1, p2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    if-eqz p1, :cond_0

    .line 94
    check-cast p2, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/bean/db/MusicInfo;->getLogo()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->setLogo(Ljava/lang/String;)V

    goto :goto_0

    .line 96
    :cond_0
    instance-of p1, p2, Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 97
    check-cast p2, Ljava/lang/String;

    .line 98
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->c:Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/mine/widget/MusicListLogoView;->setLogo(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public a(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->e:Ljava/lang/String;

    return-void
.end method

.method public b(I)V
    .locals 3

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DataListViewHolder"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/widget/d;->b()V

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 60
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->d:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->e:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setNoResultText(Ljava/lang/CharSequence;)V

    :cond_0
    if-nez p1, :cond_1

    .line 63
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 65
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->b:Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/recyclerview/ListRecyclerView;->setVisibility(I)V

    :goto_0
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    .line 69
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->d:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    iget-object v2, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setErrorIconOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 71
    :cond_2
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->d:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setErrorIconOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    :goto_1
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->d:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result v1

    if-ne p1, v1, :cond_3

    if-ne p1, v0, :cond_4

    .line 75
    :cond_3
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/d;->d:Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->setState(I)V

    :cond_4
    return-void
.end method
