.class Lcom/xiaopeng/musicradio/music/player/view/k$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MusicPlayListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/music/player/view/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field a:Lcom/xiaopeng/xui/widget/XConstraintLayout;

.field b:Lcom/xiaopeng/xui/widget/XTextView;

.field c:Lcom/xiaopeng/xui/widget/XImageView;

.field d:Lcom/xiaopeng/xui/widget/XImageView;

.field e:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

.field f:Lcom/xiaopeng/xui/widget/XTextView;

.field g:Lcom/xiaopeng/xui/widget/XTextView;

.field h:Landroid/view/View;

.field i:Lcom/xiaopeng/xui/widget/XImageView;

.field j:Lcom/xiaopeng/xui/view/XView;

.field k:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

.field l:Lcom/xiaopeng/xui/widget/XTextView;

.field m:Lcom/xiaopeng/xui/view/XView;

.field n:Lcom/xiaopeng/xui/view/XView;

.field o:Lcom/xiaopeng/musicradio/widget/common/SpeechNumVoiceTagLayout;

.field p:Lcom/xiaopeng/xui/widget/XTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .line 285
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 287
    sget v0, Lbez$d;->tv_num:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/k$b;->b:Lcom/xiaopeng/xui/widget/XTextView;

    .line 288
    sget v0, Lbez$d;->tv_index_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/k$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    .line 289
    sget v0, Lbez$d;->img_love:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/k$b;->d:Lcom/xiaopeng/xui/widget/XImageView;

    .line 290
    sget v0, Lbez$d;->iv_play_list_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/k$b;->e:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    .line 291
    sget v0, Lbez$d;->tv_play_list_song:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/k$b;->f:Lcom/xiaopeng/xui/widget/XTextView;

    .line 292
    sget v0, Lbez$d;->tv_play_list_singer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/k$b;->g:Lcom/xiaopeng/xui/widget/XTextView;

    .line 293
    sget v0, Lbez$d;->item_music_play_list_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XConstraintLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/k$b;->a:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    .line 294
    sget v0, Lbez$d;->lottie_loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/k$b;->h:Landroid/view/View;

    .line 295
    sget v0, Lbez$d;->img_album:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/k$b;->i:Lcom/xiaopeng/xui/widget/XImageView;

    .line 296
    sget v0, Lbez$d;->view_item_vui:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/view/XView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/k$b;->j:Lcom/xiaopeng/xui/view/XView;

    .line 297
    sget v0, Lbez$d;->music_label:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/k$b;->k:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    .line 298
    sget v0, Lbez$d;->txt_local:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/k$b;->l:Lcom/xiaopeng/xui/widget/XTextView;

    .line 299
    sget v0, Lbez$d;->iv_selected_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/view/XView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/k$b;->m:Lcom/xiaopeng/xui/view/XView;

    .line 300
    sget v0, Lbez$d;->view_album_mask:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/view/XView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/k$b;->n:Lcom/xiaopeng/xui/view/XView;

    .line 301
    sget v0, Lbez$d;->tv_speech_num:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumVoiceTagLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/music/player/view/k$b;->o:Lcom/xiaopeng/musicradio/widget/common/SpeechNumVoiceTagLayout;

    .line 302
    sget v0, Lbez$d;->tv_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/k$b;->p:Lcom/xiaopeng/xui/widget/XTextView;

    .line 303
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/player/view/k$b;->d:Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz p1, :cond_0

    .line 304
    sget v0, Lbez$c;->bg_love_32_selector:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
