.class public Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;
.super Lcom/xiaopeng/xui/widget/XFrameLayout;
.source "SpeechNumLargeLayout.java"


# instance fields
.field protected mNum:Lcom/xiaopeng/xui/widget/XTextView;

.field protected mNumLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->init()V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 2

    .line 32
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/xiaopeng/musicradio/common/k$f;->speech_num_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->speech_num:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XTextView;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->mNum:Lcom/xiaopeng/xui/widget/XTextView;

    .line 34
    sget v0, Lcom/xiaopeng/musicradio/common/k$e;->num_layout:I

    invoke-virtual {p0, v0}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/xui/widget/XFrameLayout;

    iput-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->mNumLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    return-void
.end method

.method public setText(I)V
    .locals 3

    .line 38
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->mNum:Lcom/xiaopeng/xui/widget/XTextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x64

    if-ge p1, v0, :cond_0

    .line 40
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->mNumLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget v2, Lcom/xiaopeng/musicradio/common/k$d;->ic_music_tag_large_99:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setBackgroundResource(I)V

    :cond_0
    const/16 v1, 0x3e8

    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->mNumLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget v2, Lcom/xiaopeng/musicradio/common/k$d;->ic_music_tag_large_999:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setBackgroundResource(I)V

    :cond_1
    if-lt p1, v1, :cond_2

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->mNumLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget v0, Lcom/xiaopeng/musicradio/common/k$d;->ic_music_tag_large_9999:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setBackgroundResource(I)V

    :cond_2
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 49
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;->mNumLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setVisibility(I)V

    return-void
.end method
