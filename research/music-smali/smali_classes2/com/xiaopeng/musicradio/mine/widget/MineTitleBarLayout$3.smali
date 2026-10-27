.class Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$3;
.super Ljava/lang/Object;
.source "MineTitleBarLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a(IIZ)V
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

    .line 111
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$3;->a:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 114
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$3;->a:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->b(Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$3;->a:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->a(Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;I)I

    .line 116
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$3;->a:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->c()V

    .line 117
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout$3;->a:Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;->c(Lcom/xiaopeng/musicradio/mine/widget/MineTitleBarLayout;)V

    :cond_0
    return-void
.end method
