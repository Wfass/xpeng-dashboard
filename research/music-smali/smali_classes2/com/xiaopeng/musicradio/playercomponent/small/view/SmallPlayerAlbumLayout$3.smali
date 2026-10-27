.class Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout$3;
.super Ljava/lang/Object;
.source "SmallPlayerAlbumLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout$3;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout$3;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->access$300(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout$3;->a:Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;->access$300(Lcom/xiaopeng/musicradio/playercomponent/small/view/SmallPlayerAlbumLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 135
    :cond_0
    invoke-static {}, Lblk;->e()V

    return-void
.end method
