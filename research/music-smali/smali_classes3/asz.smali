.class public Lasz;
.super Laxs;
.source "CollectLoadingModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lasz$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x4

    .line 19
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectedAlbumView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const-class v1, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Laxs;-><init>([Ljava/lang/Class;)V

    return-void
.end method

.method public static a()Lasz;
    .locals 1

    .line 32
    sget-object v0, Lasz$a;->a:Lasz;

    return-object v0
.end method


# virtual methods
.method protected b()V
    .locals 1

    .line 37
    invoke-virtual {p0}, Lasz;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lasy;

    invoke-direct {v0}, Lasy;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/Integer;
    .locals 4

    .line 45
    const-class v0, Lcom/xiaopeng/musicradio/mine/collect/music/view/CollectedMusicView;

    invoke-virtual {p0, v0}, Lasz;->b(Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 47
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3, v2}, Lcom/xiaopeng/musicradio/utils/ak;->a(Landroid/view/ViewGroup;I)V

    .line 48
    invoke-virtual {p0, v0, v1}, Lasz;->b(Landroid/view/View;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 52
    :goto_0
    const-class v3, Lcom/xiaopeng/musicradio/mine/collect/album/view/CollectedAlbumView;

    invoke-virtual {p0, v3}, Lasz;->b(Ljava/lang/Class;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 54
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/ak;->a(Landroid/view/ViewGroup;I)V

    .line 55
    invoke-virtual {p0, v3, v1}, Lasz;->b(Landroid/view/View;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public d()Ljava/lang/Integer;
    .locals 4

    .line 64
    const-class v0, Lcom/xiaopeng/musicradio/mine/collect/program/view/CollectedProgramView;

    invoke-virtual {p0, v0}, Lasz;->b(Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-eqz v0, :cond_0

    .line 66
    move-object v3, v0

    check-cast v3, Landroid/view/ViewGroup;

    invoke-static {v3, v2}, Lcom/xiaopeng/musicradio/utils/ak;->a(Landroid/view/ViewGroup;I)V

    .line 67
    invoke-virtual {p0, v0, v1}, Lasz;->b(Landroid/view/View;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 71
    :goto_0
    const-class v3, Lcom/xiaopeng/musicradio/mine/collect/netradio/view/CollectedNetradioView;

    invoke-virtual {p0, v3}, Lasz;->b(Ljava/lang/Class;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 73
    move-object v0, v3

    check-cast v0, Landroid/view/ViewGroup;

    invoke-static {v0, v2}, Lcom/xiaopeng/musicradio/utils/ak;->a(Landroid/view/ViewGroup;I)V

    .line 74
    invoke-virtual {p0, v3, v1}, Lasz;->b(Landroid/view/View;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    return-object v0
.end method
