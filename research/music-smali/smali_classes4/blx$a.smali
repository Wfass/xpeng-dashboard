.class Lblx$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ProgramCategoryAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lblx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lblx;

.field private b:Lcom/xiaopeng/xui/widget/XTextView;

.field private c:Lcom/xiaopeng/xui/widget/XImageView;

.field private d:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

.field private e:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">.d;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lblx;Landroid/view/View;)V
    .locals 1

    .line 102
    iput-object p1, p0, Lblx$a;->a:Lblx;

    .line 103
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 104
    iget-object p2, p0, Lblx$a;->itemView:Landroid/view/View;

    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->category_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object p2, p0, Lblx$a;->b:Lcom/xiaopeng/xui/widget/XTextView;

    .line 105
    iget-object p2, p0, Lblx$a;->itemView:Landroid/view/View;

    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->category_logo:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object p2, p0, Lblx$a;->c:Lcom/xiaopeng/xui/widget/XImageView;

    .line 106
    iget-object p2, p0, Lblx$a;->itemView:Landroid/view/View;

    sget v0, Lcom/xiaopeng/musicradio/program/b$d;->tv_speech_num:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    iput-object p2, p0, Lblx$a;->d:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    .line 107
    new-instance p2, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-direct {p2, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)V

    iput-object p2, p0, Lblx$a;->e:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    .line 108
    iget-object p1, p0, Lblx$a;->itemView:Landroid/view/View;

    iget-object p2, p0, Lblx$a;->e:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lblx$a;)Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;
    .locals 0

    .line 94
    iget-object p0, p0, Lblx$a;->d:Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;

    return-object p0
.end method

.method static synthetic b(Lblx$a;)Lcom/xiaopeng/xui/widget/XImageView;
    .locals 0

    .line 94
    iget-object p0, p0, Lblx$a;->c:Lcom/xiaopeng/xui/widget/XImageView;

    return-object p0
.end method

.method static synthetic c(Lblx$a;)Lcom/xiaopeng/xui/widget/XTextView;
    .locals 0

    .line 94
    iget-object p0, p0, Lblx$a;->b:Lcom/xiaopeng/xui/widget/XTextView;

    return-object p0
.end method

.method static synthetic d(Lblx$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .locals 0

    .line 94
    iget-object p0, p0, Lblx$a;->e:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    return-object p0
.end method
