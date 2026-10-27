.class Lcom/xiaopeng/xui/view/c/c$a;
.super Ljava/lang/Object;
.source "XTouchTargetUtils.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/view/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static abJ:I


# instance fields
.field private abI:Landroid/view/View;

.field bottom:I

.field left:I

.field right:I

.field top:I


# direct methods
.method constructor <init>(Landroid/view/View;IIII)V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/xiaopeng/xui/view/c/c$a;->abI:Landroid/view/View;

    .line 162
    iput p2, p0, Lcom/xiaopeng/xui/view/c/c$a;->left:I

    .line 163
    iput p3, p0, Lcom/xiaopeng/xui/view/c/c$a;->top:I

    .line 164
    iput p4, p0, Lcom/xiaopeng/xui/view/c/c$a;->right:I

    .line 165
    iput p5, p0, Lcom/xiaopeng/xui/view/c/c$a;->bottom:I

    .line 166
    sget p1, Lcom/xiaopeng/xui/view/c/c$a;->abJ:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/xiaopeng/xui/view/c/c$a;->abJ:I

    .line 167
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 170
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 171
    sget v0, Lcom/xiaopeng/xui/view/c/c$a;->abJ:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/xiaopeng/xui/view/c/c$a;->abJ:I

    .line 172
    sget v0, Lcom/xiaopeng/xui/view/c/c$a;->abJ:I

    if-nez v0, :cond_0

    .line 173
    const-string v0, "xpui-touch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " LayoutAttachStateChangeListener  finalize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/xiaopeng/xui/view/c/c$a;->abJ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/d/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    if-lez p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    if-lez p2, :cond_0

    .line 179
    iget-object p4, p0, Lcom/xiaopeng/xui/view/c/c$a;->abI:Landroid/view/View;

    iget p5, p0, Lcom/xiaopeng/xui/view/c/c$a;->left:I

    iget p6, p0, Lcom/xiaopeng/xui/view/c/c$a;->top:I

    iget p7, p0, Lcom/xiaopeng/xui/view/c/c$a;->right:I

    iget p8, p0, Lcom/xiaopeng/xui/view/c/c$a;->bottom:I

    move-object p3, p1

    invoke-static/range {p3 .. p8}, Lcom/xiaopeng/xui/view/c/c;->a(Landroid/view/View;Landroid/view/View;IIII)V

    .line 180
    const/4 p2, 0x0

    iput-object p2, p0, Lcom/xiaopeng/xui/view/c/c$a;->abI:Landroid/view/View;

    .line 181
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 182
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 183
    const-string p1, " LayoutAttachStateChangeListener  onLayoutChange "

    invoke-static {p1}, Lcom/xiaopeng/xui/view/c/c;->fl(Ljava/lang/String;)V

    .line 185
    :cond_0
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 188
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 191
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 192
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 193
    const-string p1, " LayoutAttachStateChangeListener  onViewDetachedFromWindow "

    invoke-static {p1}, Lcom/xiaopeng/xui/view/c/c;->fl(Ljava/lang/String;)V

    .line 194
    return-void
.end method
