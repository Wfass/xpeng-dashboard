.class Lbiu$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MsRankAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbiu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbiu;

.field private b:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private c:Lcom/xiaopeng/xui/widget/XImageView;

.field private d:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private e:Lcom/xiaopeng/xui/widget/XTextView;

.field private f:Lcom/xiaopeng/xui/widget/XTextView;

.field private g:Lcom/xiaopeng/xui/widget/XTextView;

.field private h:Lcom/xiaopeng/xui/widget/XTextView;

.field private i:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private j:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private k:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private l:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

.field private m:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">.d;"
        }
    .end annotation
.end field

.field private n:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">.d;"
        }
    .end annotation
.end field

.field private o:Lcom/xiaopeng/xui/widget/XFrameLayout;


# direct methods
.method constructor <init>(Lbiu;Landroid/view/View;)V
    .locals 1

    .line 239
    iput-object p1, p0, Lbiu$a;->a:Lbiu;

    .line 240
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 241
    iget-object p2, p0, Lbiu$a;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->play_icon_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object p2, p0, Lbiu$a;->o:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 242
    iget-object p2, p0, Lbiu$a;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->item_logo:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object p2, p0, Lbiu$a;->b:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 243
    iget-object p2, p0, Lbiu$a;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->play_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p2, p0, Lbiu$a;->c:Lcom/xiaopeng/xui/widget/XImageView;

    .line 244
    iget-object p2, p0, Lbiu$a;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->play_item_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object p2, p0, Lbiu$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 245
    iget-object p2, p0, Lbiu$a;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->rank_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p2, p0, Lbiu$a;->e:Lcom/xiaopeng/xui/widget/XTextView;

    .line 246
    iget-object p2, p0, Lbiu$a;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->song_one:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p2, p0, Lbiu$a;->f:Lcom/xiaopeng/xui/widget/XTextView;

    .line 247
    iget-object p2, p0, Lbiu$a;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->song_tow:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p2, p0, Lbiu$a;->g:Lcom/xiaopeng/xui/widget/XTextView;

    .line 248
    iget-object p2, p0, Lbiu$a;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->song_three:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p2, p0, Lbiu$a;->h:Lcom/xiaopeng/xui/widget/XTextView;

    .line 249
    iget-object p2, p0, Lbiu$a;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->img_play_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object p2, p0, Lbiu$a;->i:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 250
    iget-object p2, p0, Lbiu$a;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->root_play_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object p2, p0, Lbiu$a;->j:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 251
    iget-object p2, p0, Lbiu$a;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->rank_root:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object p2, p0, Lbiu$a;->k:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 252
    iget-object p2, p0, Lbiu$a;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->tv_speech_num:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    iput-object p2, p0, Lbiu$a;->l:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    .line 254
    new-instance p2, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-direct {p2, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)V

    iput-object p2, p0, Lbiu$a;->m:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    .line 255
    new-instance p2, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-direct {p2, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)V

    iput-object p2, p0, Lbiu$a;->n:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    .line 256
    iget-object p1, p0, Lbiu$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object p2, p0, Lbiu$a;->m:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    iget-object p1, p0, Lbiu$a;->i:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object p2, p0, Lbiu$a;->n:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object p1, p0, Lbiu$a;->j:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object p2, p0, Lbiu$a;->n:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lbiu$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;
    .locals 0

    .line 223
    iget-object p0, p0, Lbiu$a;->l:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    return-object p0
.end method

.method static synthetic b(Lbiu$a;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 223
    iget-object p0, p0, Lbiu$a;->e:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method

.method static synthetic c(Lbiu$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .locals 0

    .line 223
    iget-object p0, p0, Lbiu$a;->m:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    return-object p0
.end method

.method static synthetic d(Lbiu$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .locals 0

    .line 223
    iget-object p0, p0, Lbiu$a;->n:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    return-object p0
.end method

.method static synthetic e(Lbiu$a;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 223
    iget-object p0, p0, Lbiu$a;->c:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method

.method static synthetic f(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;
    .locals 0

    .line 223
    iget-object p0, p0, Lbiu$a;->o:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-object p0
.end method

.method static synthetic g(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;
    .locals 0

    .line 223
    iget-object p0, p0, Lbiu$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-object p0
.end method

.method static synthetic h(Lbiu$a;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 223
    iget-object p0, p0, Lbiu$a;->f:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method

.method static synthetic i(Lbiu$a;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 223
    iget-object p0, p0, Lbiu$a;->g:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method

.method static synthetic j(Lbiu$a;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 223
    iget-object p0, p0, Lbiu$a;->h:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method

.method static synthetic k(Lbiu$a;)Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;
    .locals 0

    .line 223
    iget-object p0, p0, Lbiu$a;->b:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    return-object p0
.end method

.method static synthetic l(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;
    .locals 0

    .line 223
    iget-object p0, p0, Lbiu$a;->k:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-object p0
.end method

.method static synthetic m(Lbiu$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;
    .locals 0

    .line 223
    iget-object p0, p0, Lbiu$a;->j:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-object p0
.end method
