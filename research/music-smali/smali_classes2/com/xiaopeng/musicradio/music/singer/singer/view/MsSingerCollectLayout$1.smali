.class Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "MsSingerCollectLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->access$000(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)Lbjk;

    move-result-object v0

    invoke-virtual {v0, p1}, Lbjk;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$1;->a:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    invoke-static {p1}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->access$100(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)Landroidx/recyclerview/widget/GridLayoutManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    :cond_0
    return v0
.end method
