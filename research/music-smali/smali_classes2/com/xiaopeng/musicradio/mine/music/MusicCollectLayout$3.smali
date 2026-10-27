.class Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "MusicCollectLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;->setView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout$3;->a:Lcom/xiaopeng/musicradio/mine/music/MusicCollectLayout;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 0

    .line 124
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    if-nez p2, :cond_0

    .line 126
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ac;->c(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-eq p2, p1, :cond_1

    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    .line 128
    :cond_1
    invoke-static {}, Lcom/xiaopeng/musicradio/a;->a()Landroid/app/Application;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/musicradio/utils/ac;->b(Landroid/content/Context;)V

    :cond_2
    :goto_0
    return-void
.end method
