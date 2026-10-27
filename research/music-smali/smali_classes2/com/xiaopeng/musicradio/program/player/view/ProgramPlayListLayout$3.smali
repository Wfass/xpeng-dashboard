.class Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$3;
.super Ljava/lang/Object;
.source "ProgramPlayListLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->onNotifyList()V
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

    .line 682
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$3;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 685
    iget-object v0, p0, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout$3;->a:Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;->access$800(Lcom/xiaopeng/musicradio/program/player/view/ProgramPlayListLayout;)Lbly;

    move-result-object v0

    invoke-virtual {v0}, Lbly;->notifyDataSetChanged()V

    return-void
.end method
