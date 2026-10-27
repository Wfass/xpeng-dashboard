.class public Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;
.super Lcom/xiaopeng/xui/widget/XTextView;
.source "RdTitleTextView.java"


# instance fields
.field private a:I

.field private b:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;->a:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/xui/widget/XTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 15
    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;->a:I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 33
    invoke-super/range {p0 .. p5}, Lcom/xiaopeng/xui/widget/XTextView;->onLayout(ZIIII)V

    .line 34
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;->getMeasuredHeight()I

    move-result p1

    .line 35
    iget p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;->a:I

    if-nez p2, :cond_0

    if-lez p1, :cond_0

    .line 36
    iput p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;->a:I

    .line 37
    iget-object p2, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;->b:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    iget p3, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;->a:I

    invoke-virtual {p2, p3}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->setTitleHeight(I)V

    .line 38
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onLayout: titleTextHeight = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "RdTitleTextView"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public setMusicScrollLayout(Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/RdTitleTextView;->b:Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;

    return-void
.end method
