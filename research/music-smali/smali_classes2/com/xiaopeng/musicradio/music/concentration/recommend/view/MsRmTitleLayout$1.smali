.class Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$1;
.super Ljava/lang/Object;
.source "MsRmTitleLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    invoke-static {p1}, Lcom/xiaopeng/lib/utils/view/ShakeUtil;->canExecute(I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->access$002(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;Z)Z

    .line 103
    invoke-static {}, Lbdu;->a()Lbdu;

    move-result-object p1

    invoke-virtual {p1}, Lbdu;->d()I

    move-result p1

    invoke-static {p1}, Lbjl;->d(I)V

    .line 104
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$1;->a:Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 106
    new-instance v0, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$1$1;

    invoke-direct {v0, p0}, Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$1$1;-><init>(Lcom/xiaopeng/musicradio/music/concentration/recommend/view/MsRmTitleLayout$1;)V

    const-wide/16 v1, 0x32

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
