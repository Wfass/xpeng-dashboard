.class Lcom/xiaopeng/xui/view/c/c$c;
.super Ljava/lang/Object;
.source "XTouchTargetUtils.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/view/c/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# static fields
.field private static abJ:I


# instance fields
.field private abL:Lcom/xiaopeng/xui/view/c/a;

.field private abM:Lcom/xiaopeng/xui/view/c/b;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/view/c/a;Lcom/xiaopeng/xui/view/c/b;)V
    .locals 0

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 271
    iput-object p1, p0, Lcom/xiaopeng/xui/view/c/c$c;->abL:Lcom/xiaopeng/xui/view/c/a;

    .line 272
    iput-object p2, p0, Lcom/xiaopeng/xui/view/c/c$c;->abM:Lcom/xiaopeng/xui/view/c/b;

    .line 273
    sget p1, Lcom/xiaopeng/xui/view/c/c$c;->abJ:I

    add-int/lit8 p1, p1, 0x1

    sput p1, Lcom/xiaopeng/xui/view/c/c$c;->abJ:I

    .line 274
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

    .line 277
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 278
    sget v0, Lcom/xiaopeng/xui/view/c/c$c;->abJ:I

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/xiaopeng/xui/view/c/c$c;->abJ:I

    .line 279
    sget v0, Lcom/xiaopeng/xui/view/c/c$c;->abJ:I

    if-nez v0, :cond_0

    .line 280
    const-string v0, "xpui-touch"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " MyStateChangeListener finalize "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/xiaopeng/xui/view/c/c$c;->abJ:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/d/f;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 282
    :cond_0
    return-void
.end method

.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 286
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 2

    .line 289
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 290
    iget-object v0, p0, Lcom/xiaopeng/xui/view/c/c$c;->abM:Lcom/xiaopeng/xui/view/c/b;

    iget-object v1, p0, Lcom/xiaopeng/xui/view/c/c$c;->abL:Lcom/xiaopeng/xui/view/c/a;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/view/c/b;->a(Landroid/view/TouchDelegate;)V

    .line 291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  MyStateChangeListener onViewDetachedFromWindow "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/xui/view/c/c;->fl(Ljava/lang/String;)V

    .line 292
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/xiaopeng/xui/view/c/c$c;->abM:Lcom/xiaopeng/xui/view/c/b;

    .line 293
    iput-object p1, p0, Lcom/xiaopeng/xui/view/c/c$c;->abL:Lcom/xiaopeng/xui/view/c/a;

    .line 294
    return-void
.end method
