.class Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;
.super Lhi$a;
.source "SwipeBackLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/musicradio/view/SwipeBackLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;


# direct methods
.method private constructor <init>(Lcom/xiaopeng/musicradio/view/SwipeBackLayout;)V
    .locals 0

    .line 189
    iput-object p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;->a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    invoke-direct {p0}, Lhi$a;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/musicradio/view/SwipeBackLayout;Lcom/xiaopeng/musicradio/view/SwipeBackLayout$1;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;-><init>(Lcom/xiaopeng/musicradio/view/SwipeBackLayout;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;II)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public a(I)V
    .locals 4

    .line 239
    invoke-super {p0, p1}, Lhi$a;->a(I)V

    .line 240
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;->a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onViewDragStateChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " curY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;->a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    invoke-static {v3}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->access$400(Lcom/xiaopeng/musicradio/view/SwipeBackLayout;)Landroid/widget/OverScroller;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/OverScroller;->getCurrY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " childY = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mVdhYOffset = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;->a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    iget v3, v3, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mVdhYOffset:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SwipeBackLayout"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    if-nez v0, :cond_0

    .line 243
    iget-object p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;->a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    iget p1, p1, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mVdhYOffset:I

    if-eqz p1, :cond_0

    .line 245
    iget-object p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;->a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    iput v1, p1, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->mVdhYOffset:I

    :cond_0
    return-void
.end method

.method public a(Landroid/view/View;FF)V
    .locals 0

    .line 209
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    .line 210
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onViewReleased: top = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " height = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;->a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    invoke-virtual {p3}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->getMeasuredHeight()I

    move-result p3

    div-int/lit8 p3, p3, 0x3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "SwipeBackLayout"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    iget-object p2, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;->a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->getMeasuredHeight()I

    move-result p2

    div-int/lit8 p2, p2, 0x3

    const/4 p3, 0x0

    if-ge p1, p2, :cond_0

    .line 212
    iget-object p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;->a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->access$200(Lcom/xiaopeng/musicradio/view/SwipeBackLayout;)Lhi;

    move-result-object p1

    invoke-virtual {p1, p3, p3}, Lhi;->a(II)Z

    goto :goto_0

    .line 214
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;->a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->access$100(Lcom/xiaopeng/musicradio/view/SwipeBackLayout;)Lcom/xiaopeng/musicradio/view/SwipeBackLayout$b;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 215
    iget-object p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;->a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->access$100(Lcom/xiaopeng/musicradio/view/SwipeBackLayout;)Lcom/xiaopeng/musicradio/view/SwipeBackLayout$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$b;->a()V

    .line 217
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;->a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->access$200(Lcom/xiaopeng/musicradio/view/SwipeBackLayout;)Lhi;

    move-result-object p1

    iget-object p2, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;->a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    invoke-virtual {p2}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->getMeasuredHeight()I

    move-result p2

    invoke-virtual {p1, p3, p2}, Lhi;->a(II)Z

    .line 219
    :goto_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;->a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->invalidate()V

    return-void
.end method

.method public a(Landroid/view/View;IIII)V
    .locals 0

    .line 197
    iget-object p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;->a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->invalidate()V

    .line 198
    iget-object p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;->a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->getMeasuredHeight()I

    move-result p1

    if-lt p3, p1, :cond_0

    .line 199
    iget-object p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;->a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->access$100(Lcom/xiaopeng/musicradio/view/SwipeBackLayout;)Lcom/xiaopeng/musicradio/view/SwipeBackLayout$b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 200
    iget-object p1, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;->a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->access$100(Lcom/xiaopeng/musicradio/view/SwipeBackLayout;)Lcom/xiaopeng/musicradio/view/SwipeBackLayout$b;

    move-result-object p1

    invoke-interface {p1}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$b;->b()V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;)I
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/xiaopeng/musicradio/view/SwipeBackLayout$a;->a:Lcom/xiaopeng/musicradio/view/SwipeBackLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/view/SwipeBackLayout;->access$300(Lcom/xiaopeng/musicradio/view/SwipeBackLayout;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lhi$a;->b(Landroid/view/View;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public b(Landroid/view/View;II)I
    .locals 0

    const/4 p1, 0x0

    .line 229
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    return p1
.end method

.method public b(Landroid/view/View;I)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
