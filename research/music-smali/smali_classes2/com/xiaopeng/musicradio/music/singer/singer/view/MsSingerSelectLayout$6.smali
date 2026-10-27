.class Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$6;
.super Ljava/lang/Object;
.source "MsSingerSelectLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->showAnimation(Landroid/view/View;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;Landroid/view/View;)V
    .locals 0

    .line 355
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$6;->b:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$6;->a:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 358
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$6;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_0

    .line 359
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$6;->a:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 361
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$6;->b:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;

    invoke-static {v0, v1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->access$502(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;Z)Z

    .line 362
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$6;->b:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/speech/vui/VuiEngine;->getInstance(Landroid/content/Context;)Lcom/xiaopeng/speech/vui/VuiEngine;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$6;->b:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;

    invoke-static {v2}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->access$600(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;)I

    move-result v2

    invoke-static {v2}, Lcom/xiaopeng/musicradio/vui/c;->j(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/view/ViewGroup;

    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$6;->b:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;

    invoke-static {v5}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->access$300(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;)Lcom/xiaopeng/xui/widget/XRelativeLayout;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v1, 0x1

    iget-object v5, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$6;->b:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;

    invoke-static {v5}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->access$400(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;)Lcom/xiaopeng/xui/widget/XLinearLayout;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v2, v3}, Lcom/xiaopeng/speech/vui/VuiEngine;->updateScene(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
