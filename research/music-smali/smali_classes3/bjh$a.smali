.class public Lbjh$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SingerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbjh;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lbjh;

.field private b:Lcom/xiaopeng/xui/widget/XImageView;

.field private c:Lcom/xiaopeng/xui/widget/XImageView;

.field private d:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private e:Lcom/xiaopeng/xui/widget/XTextView;

.field private f:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private g:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

.field private h:Lcom/xiaopeng/xui/widget/XImageView;

.field private i:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private j:Lcom/xiaopeng/xui/widget/XFrameLayout;


# direct methods
.method constructor <init>(Lbjh;Landroid/view/View;)V
    .locals 0

    .line 204
    iput-object p1, p0, Lbjh$a;->a:Lbjh;

    .line 205
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 206
    iget-object p1, p0, Lbjh$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->item_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object p1, p0, Lbjh$a;->i:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 207
    iget-object p1, p0, Lbjh$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->item_logo:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p1, p0, Lbjh$a;->b:Lcom/xiaopeng/xui/widget/XImageView;

    .line 208
    iget-object p1, p0, Lbjh$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->play_icon:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p1, p0, Lbjh$a;->c:Lcom/xiaopeng/xui/widget/XImageView;

    .line 209
    iget-object p1, p0, Lbjh$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->play_item_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object p1, p0, Lbjh$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 210
    iget-object p1, p0, Lbjh$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->item_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object p1, p0, Lbjh$a;->f:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 211
    iget-object p1, p0, Lbjh$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->radio_title:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p1, p0, Lbjh$a;->e:Lcom/xiaopeng/xui/widget/XTextView;

    .line 212
    iget-object p1, p0, Lbjh$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->tv_speech_num:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    iput-object p1, p0, Lbjh$a;->g:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    .line 213
    iget-object p1, p0, Lbjh$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->hot_img:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p1, p0, Lbjh$a;->h:Lcom/xiaopeng/xui/widget/XImageView;

    .line 214
    iget-object p1, p0, Lbjh$a;->itemView:Landroid/view/View;

    sget p2, Lbez$d;->play_icon_layout:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object p1, p0, Lbjh$a;->j:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-void
.end method

.method static synthetic a(Lbjh$a;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 190
    iget-object p0, p0, Lbjh$a;->b:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method

.method static synthetic b(Lbjh$a;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 190
    iget-object p0, p0, Lbjh$a;->h:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method

.method static synthetic c(Lbjh$a;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 190
    iget-object p0, p0, Lbjh$a;->e:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method

.method static synthetic d(Lbjh$a;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 190
    iget-object p0, p0, Lbjh$a;->c:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method

.method static synthetic e(Lbjh$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;
    .locals 0

    .line 190
    iget-object p0, p0, Lbjh$a;->j:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-object p0
.end method

.method static synthetic f(Lbjh$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;
    .locals 0

    .line 190
    iget-object p0, p0, Lbjh$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-object p0
.end method

.method static synthetic g(Lbjh$a;)Lcom/xiaopeng/xui/widget/XRelativeLayout;
    .locals 0

    .line 190
    iget-object p0, p0, Lbjh$a;->i:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    return-object p0
.end method

.method static synthetic h(Lbjh$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;
    .locals 0

    .line 190
    iget-object p0, p0, Lbjh$a;->g:Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;

    return-object p0
.end method

.method static synthetic i(Lbjh$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;
    .locals 0

    .line 190
    iget-object p0, p0, Lbjh$a;->f:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-object p0
.end method
