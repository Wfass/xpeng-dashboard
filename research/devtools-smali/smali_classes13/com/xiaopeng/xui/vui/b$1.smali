.class Lcom/xiaopeng/xui/vui/b$1;
.super Ljava/lang/Object;
.source "VuiViewScene.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xui/vui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic acC:Lcom/xiaopeng/xui/vui/b;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/vui/b;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/xiaopeng/xui/vui/b$1;->acC:Lcom/xiaopeng/xui/vui/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 33
    invoke-static {}, Lcom/xiaopeng/xui/a;->ql()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 34
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/b$1;->acC:Lcom/xiaopeng/xui/vui/b;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/b;->a(Lcom/xiaopeng/xui/vui/b;)V

    .line 36
    :cond_0
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 40
    invoke-static {}, Lcom/xiaopeng/xui/a;->ql()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 41
    iget-object p1, p0, Lcom/xiaopeng/xui/vui/b$1;->acC:Lcom/xiaopeng/xui/vui/b;

    invoke-static {p1}, Lcom/xiaopeng/xui/vui/b;->b(Lcom/xiaopeng/xui/vui/b;)V

    .line 43
    :cond_0
    return-void
.end method
