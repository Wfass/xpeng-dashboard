.class public Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;
.super Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;
.source "SpeechNumMiddleLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/widget/common/SpeechNumLargeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public setText(I)V
    .locals 3

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->mNum:Lcom/xiaopeng/xui/widget/XTextView;

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

    .line 27
    iget-object v1, p0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->mNumLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget v2, Lcom/xiaopeng/musicradio/common/k$d;->ic_music_tag_middle_99:I

    invoke-virtual {v1, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setBackgroundResource(I)V

    :cond_0
    const/16 v1, 0x3e8

    if-lt p1, v0, :cond_1

    if-ge p1, v1, :cond_1

    .line 29
    iget-object v0, p0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->mNumLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget v2, Lcom/xiaopeng/musicradio/common/k$d;->ic_music_tag_middle_999:I

    invoke-virtual {v0, v2}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setBackgroundResource(I)V

    :cond_1
    if-lt p1, v1, :cond_2

    .line 31
    iget-object p1, p0, Lcom/xiaopeng/musicradio/widget/common/SpeechNumMiddleLayout;->mNumLayout:Lcom/xiaopeng/xui/widget/XFrameLayout;

    sget v0, Lcom/xiaopeng/musicradio/common/k$d;->ic_music_tag_middle_9999:I

    invoke-virtual {p1, v0}, Lcom/xiaopeng/xui/widget/XFrameLayout;->setBackgroundResource(I)V

    :cond_2
    return-void
.end method
