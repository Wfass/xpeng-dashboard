.class Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "GuessLikeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;

.field private b:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

.field private c:Lcom/xiaopeng/musicradio/widget/PlayControlView;

.field private d:Lcom/xiaopeng/xui/widget/XTextView;

.field private e:Lcom/xiaopeng/xui/widget/XTextView;

.field private f:Lcom/xiaopeng/xui/widget/XTextView;

.field private g:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

.field private h:Lcom/xiaopeng/xui/widget/XFrameLayout;

.field private i:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter<",
            "Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;",
            ">.d;"
        }
    .end annotation
.end field

.field private j:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter<",
            "Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;",
            ">.d;"
        }
    .end annotation
.end field

.field private k:Lcom/xiaopeng/xui/widget/XImageView;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;Landroid/view/View;)V
    .locals 2

    .line 361
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;

    .line 362
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 363
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->album_logo:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->b:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    .line 364
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->play_state:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/PlayControlView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->c:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    .line 365
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->d:Lcom/xiaopeng/xui/widget/XTextView;

    .line 366
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->desc:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->e:Lcom/xiaopeng/xui/widget/XTextView;

    .line 367
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->play_count:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->f:Lcom/xiaopeng/xui/widget/XTextView;

    .line 368
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->tv_speech_num:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->g:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    .line 369
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->layout_root:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->h:Lcom/xiaopeng/xui/widget/XFrameLayout;

    .line 370
    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->top_right_label:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->k:Lcom/xiaopeng/xui/widget/XImageView;

    .line 371
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->j:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    .line 372
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->j:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->b(I)V

    .line 373
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->i:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    .line 374
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->i:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->b(I)V

    .line 376
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->j:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 377
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->c:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->i:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/PlayControlView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/musicradio/widget/PlayControlView;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->c:Lcom/xiaopeng/musicradio/widget/PlayControlView;

    return-object p0
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->i:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    return-object p0
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->j:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    return-object p0
.end method

.method static synthetic d(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->k:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method

.method static synthetic e(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->f:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method

.method static synthetic f(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->d:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method

.method static synthetic g(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 349
    iget-object p0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->e:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;D)V
    .locals 2

    .line 390
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->f:Lcom/xiaopeng/xui/widget/XTextView;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;

    iget-object v1, v1, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;->d:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p5, p6}, Lcom/xiaopeng/musicradio/utils/be;->a(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 391
    iget-object p5, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->d:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p5, p3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    .line 393
    iget-object p3, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->d:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p3}, Lcom/xiaopeng/xui/widget/XTextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p3

    new-instance p5, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a$1;

    invoke-direct {p5, p0}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a$1;-><init>(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;)V

    invoke-virtual {p3, p5}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 405
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_0

    .line 406
    invoke-static {p4}, Lbna;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 407
    iget-object p4, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->e:Lcom/xiaopeng/xui/widget/XTextView;

    invoke-virtual {p4, p3}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 409
    :cond_0
    iget-object p3, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->e:Lcom/xiaopeng/xui/widget/XTextView;

    sget p4, Lcom/xiaopeng/musicradio/program/b$g;->detail_no_desc:I

    invoke-virtual {p3, p4}, Lcom/xiaopeng/xui/widget/XTextView;->setText(I)V

    .line 411
    :goto_0
    iget-object p3, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;

    iget-object p3, p3, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a;->d:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    sget p4, Lcom/xiaopeng/musicradio/program/b$c;->pic_covers_music_220:I

    iget-object p5, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->b:Lcom/xiaopeng/musicradio/widget/MusicCircleImageView;

    invoke-static {p3, p2, p4, p5}, Lbxo;->a(Landroid/content/Context;Ljava/lang/String;ILandroid/widget/ImageView;)V

    .line 412
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->g:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    add-int/lit8 p1, p1, 0x1

    invoke-virtual {p2, p1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setText(I)V

    .line 413
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$a$a;->g:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object p2

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    const/16 p2, 0x8

    :goto_1
    invoke-virtual {p1, p2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->setVisibility(I)V

    return-void
.end method
