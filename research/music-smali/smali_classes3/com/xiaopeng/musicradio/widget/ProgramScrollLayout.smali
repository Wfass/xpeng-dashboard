.class public Lcom/xiaopeng/musicradio/widget/ProgramScrollLayout;
.super Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;
.source "ProgramScrollLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, v0}, Lcom/xiaopeng/musicradio/widget/ProgramScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0}, Lcom/xiaopeng/musicradio/widget/ProgramScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 23
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/xiaopeng/musicradio/widget/ProgramScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 27
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x1

    .line 28
    invoke-virtual {p0, p1}, Lcom/xiaopeng/musicradio/widget/ProgramScrollLayout;->setOrientation(I)V

    return-void
.end method


# virtual methods
.method protected onSizeChanged(IIII)V
    .locals 0

    .line 33
    invoke-super {p0, p1, p2, p3, p4}, Lcom/xiaopeng/musicradio/widget/MusicScrollLayout;->onSizeChanged(IIII)V

    .line 35
    invoke-virtual {p0}, Lcom/xiaopeng/musicradio/widget/ProgramScrollLayout;->getScrollY()I

    move-result p1

    .line 36
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ScrollY = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ProgramScrollLayout"

    invoke-static {p3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez p1, :cond_0

    const/4 p2, 0x0

    .line 38
    invoke-virtual {p0, p2, p1}, Lcom/xiaopeng/musicradio/widget/ProgramScrollLayout;->scrollBy(II)V

    :cond_0
    return-void
.end method
