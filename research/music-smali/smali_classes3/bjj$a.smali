.class public Lbjj$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "MsHotSingerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbjj;

.field private b:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private c:Lcom/xiaopeng/xui/widget/XImageView;

.field private d:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private e:Lcom/xiaopeng/xui/widget/XTextView;

.field private f:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private g:Lcom/xiaopeng/xui/widget/XImageView;

.field private h:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

.field private i:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">.d;"
        }
    .end annotation
.end field

.field private j:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">.d;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lbjj;Landroid/view/View;)V
    .locals 1

    .line 172
    iput-object p1, p0, Lbjj$a;->a:Lbjj;

    .line 173
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 175
    iget-object p2, p0, Lbjj$a;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->item_logo:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object p2, p0, Lbjj$a;->b:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 176
    iget-object p2, p0, Lbjj$a;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->play_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p2, p0, Lbjj$a;->c:Lcom/xiaopeng/xui/widget/XImageView;

    .line 177
    iget-object p2, p0, Lbjj$a;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->play_item_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object p2, p0, Lbjj$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 178
    iget-object p2, p0, Lbjj$a;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->item_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object p2, p0, Lbjj$a;->f:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 179
    iget-object p2, p0, Lbjj$a;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->radio_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p2, p0, Lbjj$a;->e:Lcom/xiaopeng/xui/widget/XTextView;

    .line 180
    iget-object p2, p0, Lbjj$a;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->hot_img:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p2, p0, Lbjj$a;->g:Lcom/xiaopeng/xui/widget/XImageView;

    .line 181
    iget-object p2, p0, Lbjj$a;->itemView:Landroid/view/View;

    sget v0, Lbez$d;->tv_speech_num:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    iput-object p2, p0, Lbjj$a;->h:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    .line 182
    new-instance p2, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-direct {p2, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)V

    iput-object p2, p0, Lbjj$a;->i:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    .line 183
    new-instance p2, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-direct {p2, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)V

    iput-object p2, p0, Lbjj$a;->j:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    .line 184
    iget-object p1, p0, Lbjj$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object p2, p0, Lbjj$a;->i:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object p1, p0, Lbjj$a;->f:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object p2, p0, Lbjj$a;->j:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lbjj$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;
    .locals 0

    .line 160
    iget-object p0, p0, Lbjj$a;->h:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    return-object p0
.end method

.method static synthetic b(Lbjj$a;)Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;
    .locals 0

    .line 160
    iget-object p0, p0, Lbjj$a;->b:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    return-object p0
.end method

.method static synthetic c(Lbjj$a;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 160
    iget-object p0, p0, Lbjj$a;->e:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method

.method static synthetic d(Lbjj$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .locals 0

    .line 160
    iget-object p0, p0, Lbjj$a;->i:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    return-object p0
.end method

.method static synthetic e(Lbjj$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .locals 0

    .line 160
    iget-object p0, p0, Lbjj$a;->j:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    return-object p0
.end method

.method static synthetic f(Lbjj$a;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 160
    iget-object p0, p0, Lbjj$a;->g:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method

.method static synthetic g(Lbjj$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;
    .locals 0

    .line 160
    iget-object p0, p0, Lbjj$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-object p0
.end method

.method static synthetic h(Lbjj$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;
    .locals 0

    .line 160
    iget-object p0, p0, Lbjj$a;->f:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-object p0
.end method

.method static synthetic i(Lbjj$a;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 160
    iget-object p0, p0, Lbjj$a;->c:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method
