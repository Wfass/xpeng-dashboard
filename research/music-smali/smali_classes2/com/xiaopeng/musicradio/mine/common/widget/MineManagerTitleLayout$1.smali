.class Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout$1;
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

    .line 84
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout$1;->a:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 87
    iget-object p1, p0, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout$1;->a:Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/mine/common/widget/MineManagerTitleLayout;->setMode(I)V

    return-void
.end method
