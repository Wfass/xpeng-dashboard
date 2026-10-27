.class Lbnv$a;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SearchSongItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;

.field final synthetic b:Lbnv;

.field private c:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">.d;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lbnv;Landroid/view/View;)V
    .locals 1

    .line 92
    iput-object p1, p0, Lbnv$a;->b:Lbnv;

    .line 93
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 94
    sget v0, Lcom/xiaopeng/musicradio/search/a$d;->search_music_list_layout:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;

    iput-object v0, p0, Lbnv$a;->a:Lcom/xiaopeng/musicradio/search/widget/view/SearchMusicListLayout;

    .line 95
    new-instance v0, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-direct {v0, p1}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;-><init>(Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter;)V

    iput-object v0, p0, Lbnv$a;->c:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    .line 96
    iget-object p1, p0, Lbnv$a;->c:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;->b(I)V

    .line 97
    iget-object p1, p0, Lbnv$a;->c:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lbnv$a;)Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;
    .locals 0

    .line 86
    iget-object p0, p0, Lbnv$a;->c:Lcom/xiaopeng/musicradio/commonui/adapter/RVBaseAdapter$d;

    return-object p0
.end method
