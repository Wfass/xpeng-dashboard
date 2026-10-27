.class Lcom/xiaopeng/musicradio/netradio/player/view/d$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "NetRadioPlayListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/netradio/player/view/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/xiaopeng/xui/widget/XConstraintLayout;

.field b:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

.field c:Lcom/xiaopeng/xui/widget/XTextView;

.field d:Landroid/view/View;

.field e:Lcom/xiaopeng/xui/widget/XTextView;

.field f:Lcom/xiaopeng/xui/widget/XTextView;

.field g:Lcom/xiaopeng/xui/widget/XTextView;

.field h:Lcom/xiaopeng/xui/widget/XTextView;

.field i:Lcom/xiaopeng/xui/widget/XImageView;

.field j:Lcom/xiaopeng/xui/view/XView;

.field k:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

.field l:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 192
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 194
    sget v0, Lbuc$d;->layout_netradio_play_list_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XConstraintLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->a:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    .line 195
    sget v0, Lbuc$d;->iv_play_list_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->b:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    .line 196
    sget v0, Lbuc$d;->tv_program:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->c:Lcom/xiaopeng/xui/widget/XTextView;

    .line 197
    sget v0, Lbuc$d;->net_radio_list_oder:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->h:Lcom/xiaopeng/xui/widget/XTextView;

    .line 198
    sget v0, Lbuc$d;->tv_index_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->i:Lcom/xiaopeng/xui/widget/XImageView;

    .line 199
    sget v0, Lbuc$d;->lottie_loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->d:Landroid/view/View;

    .line 200
    sget v0, Lbuc$d;->huiting_txt:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->e:Lcom/xiaopeng/xui/widget/XTextView;

    .line 201
    sget v0, Lbuc$d;->day_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->f:Lcom/xiaopeng/xui/widget/XTextView;

    .line 202
    sget v0, Lbuc$d;->time_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->g:Lcom/xiaopeng/xui/widget/XTextView;

    .line 203
    sget v0, Lbuc$d;->iv_selected_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/view/XView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->j:Lcom/xiaopeng/xui/view/XView;

    .line 204
    sget v0, Lbuc$d;->view_time_stub:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->l:Landroid/view/View;

    .line 205
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->tv_speech_num:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/netradio/player/view/d$a;->k:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    return-void
.end method
