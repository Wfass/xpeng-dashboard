.class Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$2;
.super Ljava/lang/Object;
.source "MsSingerSelectLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;)V
    .locals 0

    .line 154
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 157
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->showSmallLayout()V

    .line 158
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$2;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;->access$000(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout;)Ljava/util/HashMap;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$a;

    if-eqz v0, :cond_0

    .line 160
    invoke-interface {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerSelectLayout$a;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method
