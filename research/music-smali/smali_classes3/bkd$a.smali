.class Lbkd$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NrRadioAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbkd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbkd;

.field private b:Lcom/xiaopeng/xui/widget/XTextView;

.field private c:Lcom/xiaopeng/xui/widget/XTextView;

.field private d:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private e:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private f:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private g:Lcom/xiaopeng/xui/widget/XImageView;

.field private h:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private i:Lcom/xiaopeng/xui/widget/XImageView;

.field private j:Lcom/xiaopeng/xui/widget/XTextView;

.field private k:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

.field private l:Landroid/view/View;


# direct methods
.method constructor <init>(Lbkd;Landroid/view/View;)V
    .locals 0

    .line 190
    iput-object p1, p0, Lbkd$a;->a:Lbkd;

    .line 191
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 192
    sget p1, Lbuc$d;->rd_title:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lbkd$a;->b:Lcom/xiaopeng/xui/widget/XTextView;

    .line 193
    sget p1, Lbuc$d;->rd_program:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lbkd$a;->c:Lcom/xiaopeng/xui/widget/XTextView;

    .line 194
    sget p1, Lbuc$d;->rd_logo:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object p1, p0, Lbkd$a;->d:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 195
    sget p1, Lbuc$d;->rd_logo_bg:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object p1, p0, Lbkd$a;->e:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 196
    sget p1, Lbuc$d;->item_layout:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object p1, p0, Lbkd$a;->f:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 197
    sget p1, Lbuc$d;->item_bg:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p1, p0, Lbkd$a;->g:Lcom/xiaopeng/xui/widget/XImageView;

    .line 198
    sget p1, Lbuc$d;->rd_play_mask:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object p1, p0, Lbkd$a;->h:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 199
    sget p1, Lbuc$d;->rd_play_icon:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p1, p0, Lbkd$a;->i:Lcom/xiaopeng/xui/widget/XImageView;

    .line 200
    sget p1, Lbuc$d;->tv_speech_num:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    iput-object p1, p0, Lbkd$a;->k:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    .line 201
    sget p1, Lbuc$d;->rd_playback_num:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lbkd$a;->j:Lcom/xiaopeng/xui/widget/XTextView;

    .line 202
    sget p1, Lbuc$d;->rd_night_mask:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lbkd$a;->l:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lbkd$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;
    .locals 0

    .line 177
    iget-object p0, p0, Lbkd$a;->k:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    return-object p0
.end method

.method static synthetic b(Lbkd$a;)Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;
    .locals 0

    .line 177
    iget-object p0, p0, Lbkd$a;->d:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    return-object p0
.end method

.method static synthetic c(Lbkd$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;
    .locals 0

    .line 177
    iget-object p0, p0, Lbkd$a;->e:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-object p0
.end method

.method static synthetic d(Lbkd$a;)Landroid/view/View;
    .locals 0

    .line 177
    iget-object p0, p0, Lbkd$a;->l:Landroid/view/View;

    return-object p0
.end method

.method static synthetic e(Lbkd$a;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 177
    iget-object p0, p0, Lbkd$a;->b:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method

.method static synthetic f(Lbkd$a;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 177
    iget-object p0, p0, Lbkd$a;->j:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method

.method static synthetic g(Lbkd$a;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 177
    iget-object p0, p0, Lbkd$a;->c:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method

.method static synthetic h(Lbkd$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;
    .locals 0

    .line 177
    iget-object p0, p0, Lbkd$a;->f:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-object p0
.end method

.method static synthetic i(Lbkd$a;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 177
    iget-object p0, p0, Lbkd$a;->i:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method
