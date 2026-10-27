.class Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "KugooSingerListLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;)V
    .locals 0

    .line 43
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->mSingerAdapter:Lbjh;

    check-cast v0, Lbjg;

    invoke-virtual {v0, p1}, Lbjg;->getItemViewType(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout$1;->a:Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;

    iget-object p1, p1, Lcom/xiaopeng/musicradio/music/singer/main/view/KugooSingerListLayout;->mLayoutManager:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result v0

    :cond_0
    return v0
.end method
