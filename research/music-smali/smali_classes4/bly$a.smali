.class public Lbly$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "RdAlbumDetailAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbly;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbly;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/TextView;

.field private d:Lcom/xiaopeng/xui/widget/XLinearLayout;

.field private e:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

.field private f:Landroid/view/ViewGroup;

.field private g:Landroid/widget/TextView;

.field private h:Lcom/xiaopeng/xui/widget/XLoading;

.field private i:Lcom/xiaopeng/xui/view/XView;

.field private j:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private k:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

.field private l:Lcom/xiaopeng/xui/widget/XImageView;


# direct methods
.method public constructor <init>(Lbly;Landroid/view/View;)V
    .locals 0

    .line 175
    iput-object p1, p0, Lbly$a;->a:Lbly;

    .line 176
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 178
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->tv_track_id:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lbly$a;->b:Landroid/widget/TextView;

    .line 179
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->tv_track_name:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lbly$a;->c:Landroid/widget/TextView;

    .line 180
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->track_item_sub_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XLinearLayout;

    iput-object p1, p0, Lbly$a;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    .line 181
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->iv_play_list_state:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    iput-object p1, p0, Lbly$a;->e:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    .line 182
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->track_content_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lbly$a;->f:Landroid/view/ViewGroup;

    .line 183
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->tv_track_update_time:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lbly$a;->g:Landroid/widget/TextView;

    .line 184
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->lottie_loading:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object p1, p0, Lbly$a;->h:Lcom/xiaopeng/xui/widget/XLoading;

    .line 185
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->iv_selected_view:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/view/XView;

    iput-object p1, p0, Lbly$a;->i:Lcom/xiaopeng/xui/view/XView;

    .line 186
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->track_item:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object p1, p0, Lbly$a;->j:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 187
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->tv_index_bg:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    iput-object p1, p0, Lbly$a;->k:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    .line 188
    sget p1, Lcom/xiaopeng/musicradio/program/b$d;->label_payment:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p1, p0, Lbly$a;->l:Lcom/xiaopeng/xui/widget/XImageView;

    return-void
.end method

.method static synthetic a(Lbly$a;)Landroid/widget/TextView;
    .locals 0

    .line 162
    iget-object p0, p0, Lbly$a;->c:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic b(Lbly$a;)Landroid/widget/TextView;
    .locals 0

    .line 162
    iget-object p0, p0, Lbly$a;->b:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic c(Lbly$a;)Landroid/widget/TextView;
    .locals 0

    .line 162
    iget-object p0, p0, Lbly$a;->g:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic d(Lbly$a;)Landroid/view/ViewGroup;
    .locals 0

    .line 162
    iget-object p0, p0, Lbly$a;->f:Landroid/view/ViewGroup;

    return-object p0
.end method

.method static synthetic e(Lbly$a;)Lcom/xiaopeng/xui/widget/XLinearLayout;
    .locals 0

    .line 162
    iget-object p0, p0, Lbly$a;->d:Lcom/xiaopeng/xui/widget/XLinearLayout;

    return-object p0
.end method

.method static synthetic f(Lbly$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;
    .locals 0

    .line 162
    iget-object p0, p0, Lbly$a;->k:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    return-object p0
.end method

.method static synthetic g(Lbly$a;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 162
    iget-object p0, p0, Lbly$a;->l:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method

.method static synthetic h(Lbly$a;)Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;
    .locals 0

    .line 162
    iget-object p0, p0, Lbly$a;->e:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    return-object p0
.end method

.method static synthetic i(Lbly$a;)Lcom/xiaopeng/xui/widget/XLoading;
    .locals 0

    .line 162
    iget-object p0, p0, Lbly$a;->h:Lcom/xiaopeng/xui/widget/XLoading;

    return-object p0
.end method

.method static synthetic j(Lbly$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;
    .locals 0

    .line 162
    iget-object p0, p0, Lbly$a;->j:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-object p0
.end method
