.class public Lcom/xiaopeng/musicradio/search/widget/view/c;
.super Lcom/xiaopeng/xui/widget/XTextInput;
.source "MSearchBar.java"


# instance fields
.field protected a:Lcom/xiaopeng/xui/widget/XImageView;

.field protected b:Lcom/xiaopeng/xui/widget/XImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    check-cast v0, Landroid/util/AttributeSet;

    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/search/widget/view/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 27
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/search/widget/view/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 31
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/musicradio/search/widget/view/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/widget/XTextInput;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 3

    .line 41
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/c;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Landroid/app/Activity;

    if-eqz v0, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/c;->getContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    .line 43
    :cond_0
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/c;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/xiaopeng/musicradio/commonui/base/b;

    if-eqz v0, :cond_1

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/c;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/commonui/base/b;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/commonui/base/b;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 46
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/c;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MSearchBar"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/search/a$e;->m_searchbar:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 48
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->x_search_reset:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/c;->mResetView:Landroid/widget/ImageButton;

    .line 49
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->x_search_edit:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/c;->mEditText:Landroid/widget/EditText;

    .line 50
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->x_search_error:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/c;->mErrorTextView:Landroid/widget/TextView;

    .line 51
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->x_text_fields_line:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/c;->mStatusView:Landroid/view/View;

    .line 52
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->line_normal:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/c;->a:Lcom/xiaopeng/xui/widget/XImageView;

    .line 53
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->line_select:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/search/widget/view/c;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XImageView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/c;->b:Lcom/xiaopeng/xui/widget/XImageView;

    return-void
.end method
