.class public Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;
.super Lcom/xiaopeng/musicradio/search/widget/view/c;
.source "XMusicSearchBar.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/search/widget/view/c;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/search/widget/view/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/search/widget/view/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/search/widget/view/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method protected initView()V
    .locals 0

    .line 33
    invoke-super {p0}, Lcom/xiaopeng/musicradio/search/widget/view/c;->initView()V

    return-void
.end method

.method public onFocusChange(Landroid/view/View;Z)V
    .locals 4

    .line 39
    invoke-super {p0, p1, p2}, Lcom/xiaopeng/musicradio/search/widget/view/c;->onFocusChange(Landroid/view/View;Z)V

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->a:Lcom/xiaopeng/xui/widget/XImageView;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 41
    iget-object v0, p0, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->b:Lcom/xiaopeng/xui/widget/XImageView;

    if-eqz p2, :cond_1

    move v1, v2

    :cond_1
    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XImageView;->setVisibility(I)V

    .line 42
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-ne p1, v0, :cond_2

    if-nez p2, :cond_2

    .line 44
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/search/widget/view/XMusicSearchBar;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/bk;->b(Landroid/view/View;)V

    :cond_2
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 51
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/search/widget/view/c;->onTextChanged(Ljava/lang/CharSequence;III)V

    return-void
.end method
