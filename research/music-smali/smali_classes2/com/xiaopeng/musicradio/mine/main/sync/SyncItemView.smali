.class public Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;
.super Lcom/xiaopeng/xui/widget/XLinearLayout;
.source "SyncItemView.java"


# instance fields
.field private a:Landroid/view/View;

.field private b:Lcom/xiaopeng/xui/widget/XImageView;

.field private c:Landroid/graphics/drawable/Drawable;

.field private d:Landroid/graphics/drawable/Drawable;

.field private e:Ljava/lang/String;

.field private f:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

.field private g:Lcom/xiaopeng/xui/widget/XImageView;

.field private h:Lcom/xiaopeng/xui/widget/XTextView;

.field private i:Landroid/content/res/TypedArray;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 46
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XLinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    if-eqz p2, :cond_0

    .line 52
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object p3, Lcom/xiaopeng/musicradio/mine/a$f;->SyncItemView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->i:Landroid/content/res/TypedArray;

    .line 53
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->i:Landroid/content/res/TypedArray;

    sget p2, Lcom/xiaopeng/musicradio/mine/a$f;->SyncItemView_sync_iv_icon:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->c:Landroid/graphics/drawable/Drawable;

    .line 54
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->i:Landroid/content/res/TypedArray;

    sget p2, Lcom/xiaopeng/musicradio/mine/a$f;->SyncItemView_sync_iv_icon_night:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->d:Landroid/graphics/drawable/Drawable;

    .line 55
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->i:Landroid/content/res/TypedArray;

    sget p2, Lcom/xiaopeng/musicradio/mine/a$f;->SyncItemView_sync_iv_text:I

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->e:Ljava/lang/String;

    .line 56
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->i:Landroid/content/res/TypedArray;

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->d()V

    return-void
.end method

.method private d()V
    .locals 3

    .line 62
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/mine/a$d;->item_sync_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->a:Landroid/view/View;

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->a:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->addView(Landroid/view/View;)V

    .line 64
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->a:Landroid/view/View;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->iv_sync_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    .line 65
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->a:Landroid/view/View;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->progress_bar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->f:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->a:Landroid/view/View;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->iv_sync_state:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->g:Lcom/xiaopeng/xui/widget/XImageView;

    .line 67
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->a:Landroid/view/View;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$c;->tv_sync_state:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->h:Lcom/xiaopeng/xui/widget/XTextView;

    .line 69
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->e()V

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->h:Lcom/xiaopeng/xui/widget/XTextView;

    if-eqz v0, :cond_0

    .line 71
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 2

    .line 76
    sget-object v0, Lcom/xiaopeng/musicradio/a;->a:Landroid/app/Application;

    invoke-static {v0}, Lapo;->d(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->d:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 78
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 82
    iget-object v1, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->b:Lcom/xiaopeng/xui/widget/XImageView;

    invoke-virtual {v1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->f:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setVisibility(I)V

    .line 109
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->g:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 110
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->g:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$b;->ic_sync_fail:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->f:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setVisibility(I)V

    .line 115
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->g:Lcom/xiaopeng/xui/widget/XImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 116
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->g:Lcom/xiaopeng/xui/widget/XImageView;

    sget v1, Lcom/xiaopeng/musicradio/mine/a$b;->ic_common_check_o:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    return-void
.end method

.method public c()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->f:Lcom/xiaopeng/xui/widget/XCircularProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XCircularProgressBar;->setVisibility(I)V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->g:Lcom/xiaopeng/xui/widget/XImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lcom/xiaopeng/xui/widget/XLinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 90
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->e()V

    return-void
.end method

.method public setResultState(Lcom/xiaopeng/musicradio/bean/mine/ResultState;)V
    .locals 1

    .line 94
    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/bean/mine/ResultState;->getState()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->b()V

    goto :goto_0

    .line 102
    :cond_1
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->c()V

    goto :goto_0

    .line 99
    :cond_2
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/mine/main/sync/SyncItemView;->a()V

    :goto_0
    return-void
.end method
