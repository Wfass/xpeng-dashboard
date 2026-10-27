.class Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$5;
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

    .line 197
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$5;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 201
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$5;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$000(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;

    move-result-object p1

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/widget/refresh/RefreshLayout;->finishRefreshing()V

    .line 202
    iget-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$5;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$500(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)V

    return-void
.end method
