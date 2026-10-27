.class Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$1;
.super Ljava/lang/Object;
.source "MsRankLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 115
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->access$000(Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;

    .line 116
    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->access$000(Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;)Lcom/xiaopeng/musicradio/widget/LoadingTipsView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/LoadingTipsView;->getState()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 117
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout$1;->a:Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/rank/rank/view/MsRankLayout;->reload()V

    :cond_1
    return-void
.end method
