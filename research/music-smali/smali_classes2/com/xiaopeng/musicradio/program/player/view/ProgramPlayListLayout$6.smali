.class Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$6;
.super Ljava/lang/Object;
.source "ProgramPlayListLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V
    .locals 0

    .line 206
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$6;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 209
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$6;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$000(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->finishRefreshing()V

    .line 210
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$6;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$000(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    .line 211
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$6;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$600(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;Z)V

    goto :goto_0

    .line 213
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$6;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$600(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;Z)V

    :goto_0
    return-void
.end method
