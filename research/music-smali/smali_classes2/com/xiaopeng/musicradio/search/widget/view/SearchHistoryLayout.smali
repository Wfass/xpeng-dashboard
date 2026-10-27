.class public Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;
.super Landroid/widget/LinearLayout;
.source "SearchHistoryLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$a;
    }
.end annotation


# instance fields
.field private a:Lcom/nex3z/flowlayout/FlowLayout;

.field private b:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$a;

.field private c:Lcom/xiaopeng/xui/widget/XTextView;

.field private d:Landroid/view/View;

.field private e:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

.field private f:Lcom/xiaopeng/xui/widget/XRelativeLayout;

.field private g:Ljava/lang/String;

.field private h:Lcom/xiaopeng/musicradio/widget/f;

.field private i:Landroid/widget/RelativeLayout;

.field private j:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

.field private k:Lcom/xiaopeng/musicradio/widget/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "SearchHistoryLayout"

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->g:Ljava/lang/String;

    .line 57
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->k:Lcom/xiaopeng/musicradio/widget/k;

    .line 61
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "SearchHistoryLayout"

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->g:Ljava/lang/String;

    .line 57
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->k:Lcom/xiaopeng/musicradio/widget/k;

    .line 66
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "SearchHistoryLayout"

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->g:Ljava/lang/String;

    .line 57
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->k:Lcom/xiaopeng/musicradio/widget/k;

    .line 71
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->d()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string p1, "SearchHistoryLayout"

    .line 51
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->g:Ljava/lang/String;

    .line 57
    new-instance p1, Lcom/xiaopeng/musicradio/widget/k;

    invoke-direct {p1}, Lcom/xiaopeng/musicradio/widget/k;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->k:Lcom/xiaopeng/musicradio/widget/k;

    .line 76
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->d()V

    return-void
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;)Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->j:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    return-object p0
.end method

.method static synthetic a(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;Lcom/xiaopeng/musicradio/widget/f;)Lcom/xiaopeng/musicradio/widget/f;
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->h:Lcom/xiaopeng/musicradio/widget/f;

    return-object p1
.end method

.method static synthetic b(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;)Lcom/xiaopeng/musicradio/widget/f;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->h:Lcom/xiaopeng/musicradio/widget/f;

    return-object p0
.end method

.method private b(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->a:Lcom/nex3z/flowlayout/FlowLayout;

    invoke-virtual {v0}, Lcom/nex3z/flowlayout/FlowLayout;->removeAllViews()V

    .line 142
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 143
    iget-object v4, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->g:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create history tag:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " start"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/xiaopeng/musicradio/search/a$e;->item_history_keyword:I

    iget-object v6, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->a:Lcom/nex3z/flowlayout/FlowLayout;

    invoke-virtual {v4, v5, v6, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xui/widget/XButton;

    .line 146
    sget v5, Lcom/xiaopeng/musicradio/search/a$d;->btn_tag:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/xiaopeng/xui/widget/XButton;

    .line 147
    invoke-virtual {v4, v3}, Lcom/xiaopeng/xui/widget/XButton;->setText(Ljava/lang/CharSequence;)V

    .line 148
    invoke-virtual {v4, v1}, Lcom/xiaopeng/xui/widget/XButton;->setClickable(Z)V

    .line 149
    new-instance v5, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$3;

    invoke-direct {v5, p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$3;-><init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;)V

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/XButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-virtual {v4, v2}, Lcom/xiaopeng/xui/widget/XButton;->setVuiPosition(I)V

    .line 162
    invoke-virtual {v4}, Lcom/xiaopeng/xui/widget/XButton;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/xiaopeng/musicradio/common/k$g;->vui_play_position:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v3, v6, v1

    add-int/lit8 v3, v2, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    const/4 v7, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/xiaopeng/xui/widget/XButton;->setVuiLabel(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "historyvui_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v4, v2}, Lcom/xiaopeng/speech/vui/VuiEngine;->setVuiElementTag(Landroid/view/View;Ljava/lang/String;)V

    .line 164
    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->a:Lcom/nex3z/flowlayout/FlowLayout;

    invoke-virtual {v2, v4}, Lcom/nex3z/flowlayout/FlowLayout;->addView(Landroid/view/View;)V

    const/16 v2, 0xc

    if-le v3, v2, :cond_0

    goto :goto_1

    :cond_0
    move v2, v3

    goto/16 :goto_0

    .line 173
    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 174
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/xiaopeng/musicradio/search/a$e;->item_history_delete:I

    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->a:Lcom/nex3z/flowlayout/FlowLayout;

    invoke-virtual {p1, v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 176
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->clear_history:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/xiaopeng/xui/widget/XRelativeLayout;

    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->f:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    .line 177
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->a:Lcom/nex3z/flowlayout/FlowLayout;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->f:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    invoke-virtual {p1, v0}, Lcom/nex3z/flowlayout/FlowLayout;->addView(Landroid/view/View;)V

    .line 178
    invoke-direct {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->e()V

    .line 180
    :cond_2
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->g:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "create history end, mTagLayout height:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->a:Lcom/nex3z/flowlayout/FlowLayout;

    invoke-virtual {v1}, Lcom/nex3z/flowlayout/FlowLayout;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mTagLayout visibility:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->a:Lcom/nex3z/flowlayout/FlowLayout;

    invoke-virtual {v1}, Lcom/nex3z/flowlayout/FlowLayout;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic c(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;)Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$a;
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->b:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$a;

    return-object p0
.end method

.method private d()V
    .locals 2

    .line 80
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/search/a$e;->layout_search_history:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 81
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->search_bar_history:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->j:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    .line 82
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->txt_history_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->e:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    .line 83
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->e:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v1, Lcom/xiaopeng/musicradio/search/a$f;->search_history_keywords:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(I)V

    .line 84
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->e:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setBackVisible(Z)V

    .line 85
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->tag_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/nex3z/flowlayout/FlowLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->a:Lcom/nex3z/flowlayout/FlowLayout;

    .line 86
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->hot_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->c:Lcom/xiaopeng/xui/widget/XTextView;

    .line 87
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->c:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    .line 88
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->layout_history_title:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->d:Landroid/view/View;

    .line 89
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->layout_no_history:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->i:Landroid/widget/RelativeLayout;

    .line 90
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->e:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$1;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$1;-><init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setCloseListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->k:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 101
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->c()V

    return-void
.end method

.method private e()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->f:Lcom/xiaopeng/xui/widget/XRelativeLayout;

    new-instance v1, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;

    invoke-direct {v1, p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$2;-><init>(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XRelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->j:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->j:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->a(Ljava/lang/String;Z)V

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->j:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->i()V

    :cond_0
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/16 v1, 0x8

    if-eqz p1, :cond_1

    .line 185
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 192
    :cond_0
    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->g:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateHistoryQuerys show, size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iget-object v2, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->a:Lcom/nex3z/flowlayout/FlowLayout;

    invoke-virtual {v2, v0}, Lcom/nex3z/flowlayout/FlowLayout;->setVisibility(I)V

    .line 196
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 197
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->b(Ljava/util/List;)V

    goto :goto_1

    .line 186
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->g:Ljava/lang/String;

    const-string v2, "updateHistoryQuerys null, hide"

    invoke-static {p1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->a:Lcom/nex3z/flowlayout/FlowLayout;

    invoke-virtual {p1, v1}, Lcom/nex3z/flowlayout/FlowLayout;->setVisibility(I)V

    .line 190
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->i:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1
    return-void
.end method

.method public b()V
    .locals 1

    .line 210
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->h:Lcom/xiaopeng/musicradio/widget/f;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/f;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->h:Lcom/xiaopeng/musicradio/widget/f;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/f;->dismiss()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->k:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/widget/k;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->e:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(Ljava/lang/String;)V

    .line 236
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->j:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->setVisibility(I)V

    goto :goto_0

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->e:Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;

    sget v1, Lcom/xiaopeng/musicradio/search/a$f;->search_history_keywords:I

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/widget/common/CommonTitleLayout;->setTitle(I)V

    .line 239
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->j:Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/search/widget/view/SearchTopBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 226
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 227
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->k:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->b()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 228
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->k:Lcom/xiaopeng/musicradio/widget/k;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/k;->a()V

    .line 229
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->c()V

    :cond_0
    return-void
.end method

.method public setCallback(Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$a;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->b:Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout$a;

    return-void
.end method

.method public setHotTitleVisible(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->c:Lcom/xiaopeng/xui/widget/XTextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    goto :goto_0

    .line 205
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/search/widget/view/SearchHistoryLayout;->c:Lcom/xiaopeng/xui/widget/XTextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XTextView;->setVisibility(I)V

    :goto_0
    return-void
.end method
