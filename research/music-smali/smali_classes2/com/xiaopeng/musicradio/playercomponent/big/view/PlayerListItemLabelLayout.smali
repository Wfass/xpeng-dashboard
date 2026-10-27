.class public Lcom/xiaopeng/musicradio/playercomponent/big/view/PlayerListItemLabelLayout;
.super Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;
.source "PlayerListItemLabelLayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 22
    invoke-direct {p0, p1, p2, p3}, Lcom/xiaopeng/musicradio/view/mymusic/MusicListItemLabelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getContentViewId()I
    .locals 1

    .line 27
    sget v0, Lble$e;->layout_music_player_list_item_label:I

    return v0
.end method
