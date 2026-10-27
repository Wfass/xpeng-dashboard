.class public Lbii$b;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MsMusicDetailListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbii;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Lcom/xiaopeng/xui/widget/XTextView;

.field public b:Lcom/xiaopeng/xui/widget/XImageView;

.field public c:Lcom/xiaopeng/xui/widget/XImageView;

.field public d:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field public e:Lcom/xiaopeng/xui/widget/XTextView;

.field public f:Lcom/xiaopeng/xui/widget/XTextView;

.field public g:Lcom/xiaopeng/xui/widget/XConstraintLayout;

.field public h:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

.field public i:Lcom/xiaopeng/xui/widget/XLoading;

.field public j:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

.field public k:Lcom/xiaopeng/xui/view/XView;

.field l:Lcom/xiaopeng/xui/view/XView;

.field m:Lcom/xiaopeng/xui/view/XView;

.field final synthetic n:Lbii;

.field private o:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">.d;"
        }
    .end annotation
.end field

.field private p:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">.d;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lbii;Landroid/view/View;)V
    .locals 1

    .line 310
    iput-object p1, p0, Lbii$b;->n:Lbii;

    .line 311
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 313
    iget-object p2, p0, Lbii$b;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->tv_index:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p2, p0, Lbii$b;->a:Lcom/xiaopeng/xui/widget/XTextView;

    .line 314
    iget-object p2, p0, Lbii$b;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->tv_index_bg:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p2, p0, Lbii$b;->b:Lcom/xiaopeng/xui/widget/XImageView;

    .line 315
    iget-object p2, p0, Lbii$b;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->ms_love:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p2, p0, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    .line 316
    iget-object p2, p0, Lbii$b;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->ms_logo:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object p2, p0, Lbii$b;->d:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 317
    iget-object p2, p0, Lbii$b;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->ms_song:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p2, p0, Lbii$b;->e:Lcom/xiaopeng/xui/widget/XTextView;

    .line 318
    iget-object p2, p0, Lbii$b;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->ms_singer:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p2, p0, Lbii$b;->f:Lcom/xiaopeng/xui/widget/XTextView;

    .line 319
    iget-object p2, p0, Lbii$b;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->root_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XConstraintLayout;

    iput-object p2, p0, Lbii$b;->g:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    .line 320
    iget-object p2, p0, Lbii$b;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->iv_play_list_state:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    iput-object p2, p0, Lbii$b;->h:Lcom/xiaopeng/musicradio/widget/AVLoadingIndicatorView;

    .line 321
    iget-object p2, p0, Lbii$b;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->lottie_loading:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XLoading;

    iput-object p2, p0, Lbii$b;->i:Lcom/xiaopeng/xui/widget/XLoading;

    .line 322
    iget-object p2, p0, Lbii$b;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->labelView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    iput-object p2, p0, Lbii$b;->j:Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;

    .line 323
    iget-object p2, p0, Lbii$b;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->view_album_mask:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/view/XView;

    iput-object p2, p0, Lbii$b;->k:Lcom/xiaopeng/xui/view/XView;

    .line 324
    iget-object p2, p0, Lbii$b;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->iv_selected_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/view/XView;

    iput-object p2, p0, Lbii$b;->m:Lcom/xiaopeng/xui/view/XView;

    .line 325
    iget-object p2, p0, Lbii$b;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->view_item_vui:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/view/XView;

    iput-object p2, p0, Lbii$b;->l:Lcom/xiaopeng/xui/view/XView;

    .line 326
    new-instance p2, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-direct {p2, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)V

    iput-object p2, p0, Lbii$b;->o:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    .line 327
    new-instance p2, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-direct {p2, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)V

    iput-object p2, p0, Lbii$b;->p:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    .line 328
    iget-object p1, p0, Lbii$b;->g:Lcom/xiaopeng/xui/widget/XConstraintLayout;

    iget-object p2, p0, Lbii$b;->o:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XConstraintLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    iget-object p1, p0, Lbii$b;->c:Lcom/xiaopeng/xui/widget/XImageView;

    iget-object p2, p0, Lbii$b;->p:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lbii$b;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .locals 0

    .line 292
    iget-object p0, p0, Lbii$b;->o:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    return-object p0
.end method

.method static synthetic b(Lbii$b;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .locals 0

    .line 292
    iget-object p0, p0, Lbii$b;->p:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    return-object p0
.end method
