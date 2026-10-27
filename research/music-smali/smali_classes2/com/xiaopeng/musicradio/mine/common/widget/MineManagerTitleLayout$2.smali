.class Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout$2;
.super Ljava/lang/Object;
.source "MineManagerTitleLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->a(IIZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout$2;->a:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 93
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout$2;->a:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->a(Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 94
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout$2;->a:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->a(Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;I)I

    .line 95
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout$2;->a:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->c()V

    .line 96
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout$2;->a:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->b(Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;)V

    :cond_0
    return-void
.end method
