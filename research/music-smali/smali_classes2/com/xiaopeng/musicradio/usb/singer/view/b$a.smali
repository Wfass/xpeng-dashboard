.class public Lcom/xiaopeng/musicradio/usb/singer/view/b$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SingerListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/usb/singer/view/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/usb/singer/view/b;

.field private b:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private c:Lcom/xiaopeng/xui/widget/XImageView;

.field private d:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private e:Lcom/xiaopeng/xui/widget/XTextView;

.field private f:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private g:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

.field private h:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">.d;"
        }
    .end annotation
.end field

.field private i:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">.d;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/usb/singer/view/b;Landroid/view/View;)V
    .locals 1

    .line 160
    iput-object p1, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->a:Lcom/xiaopeng/musicradio/usb/singer/view/b;

    .line 161
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 163
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->itemView:Landroid/view/View;

    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->item_logo:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->b:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 164
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->itemView:Landroid/view/View;

    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->play_icon:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->c:Lcom/xiaopeng/xui/widget/XImageView;

    .line 165
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->itemView:Landroid/view/View;

    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->play_item_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 166
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->itemView:Landroid/view/View;

    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->item_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->f:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 167
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->itemView:Landroid/view/View;

    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->radio_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->e:Lcom/xiaopeng/xui/widget/XTextView;

    .line 168
    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->itemView:Landroid/view/View;

    sget v0, Lcom/xiaopeng/musicradio/usb/a$b;->tv_speech_num:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->g:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    .line 169
    new-instance p2, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-direct {p2, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->h:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    .line 170
    new-instance p2, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-direct {p2, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)V

    iput-object p2, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->i:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    .line 171
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->h:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object p1, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->f:Lcom/xiaopeng/xui/widget/XFrameLayout;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->i:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/usb/singer/view/b$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->g:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/usb/singer/view/b$a;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->e:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/usb/singer/view/b$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->h:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/usb/singer/view/b$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->i:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaopeng/musicradio/usb/singer/view/b$a;)Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->b:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaopeng/musicradio/usb/singer/view/b$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->d:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaopeng/musicradio/usb/singer/view/b$a;)Lcom/xiaopeng/xui/widget/XFrameLayout;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->f:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-object p0
.end method

.method static synthetic h(Lcom/xiaopeng/musicradio/usb/singer/view/b$a;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/xiaopeng/musicradio/usb/singer/view/b$a;->c:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method
