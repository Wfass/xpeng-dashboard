.class Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment$1;
.super Ljava/lang/Object;
.source "MusicMainFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/LeftSelectLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->setMusicMainView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;)V
    .locals 0

    .line 155
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment$1;->a:Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment$1;->a:Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/main/view/MusicMainFragment;->mViewPager:Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/musicradio/commonui/widget/NoScrollViewPager;->setCurrentItem(I)V

    return-void
.end method
