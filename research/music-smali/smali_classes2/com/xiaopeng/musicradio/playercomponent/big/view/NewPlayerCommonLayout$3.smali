.class Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$3;
.super Ljava/lang/Object;
.source "NewPlayerCommonLayout.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->startPostEnterTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/fragment/app/Fragment;

.field final synthetic b:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 246
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$3;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;

    iput-object p2, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$3;->a:Landroidx/fragment/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$3;->b:Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout;->mPlayerAlbumLayout:Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerAlbumLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 250
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/big/view/NewPlayerCommonLayout$3;->a:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->startPostponedEnterTransition()V

    const/4 v0, 0x0

    return v0
.end method
