.class Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$1;
.super Ljava/lang/Object;
.source "MineTitleBarLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$1;->a:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "finish:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$1;->a:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a(Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;)Lcom/xiaopeng/musicradio/commonui/vui/VuiFragment;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$1;->a:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->b(Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MineTitleBarLayout"

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$1;->a:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->b(Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 74
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$1;->a:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->setMode(I)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$1;->a:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lbni;->a(Landroid/content/Context;)V

    :goto_0
    return-void
.end method
