.class Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment$2;
.super Ljava/lang/Object;
.source "QQMainFragment.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/LeftSelectLayout$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->setMusicMainView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;)V
    .locals 0

    .line 219
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 222
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;

    invoke-virtual {p1}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->handleCloseSearch()V

    .line 223
    iget-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment$2;->a:Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lcom/xiaopeng/musicradio/music/main/view/QQMainFragment;->setPosition(I)V

    return-void
.end method
