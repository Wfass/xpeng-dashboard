.class public Laxb;
.super Laxs;
.source "MusicHistoryLoadingModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laxb$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x2

    .line 15
    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryMusicView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-direct {p0, v0}, Laxs;-><init>([Ljava/lang/Class;)V

    return-void
.end method

.method public static a()Laxb;
    .locals 1

    .line 26
    sget-object v0, Laxb$a;->a:Laxb;

    return-object v0
.end method


# virtual methods
.method protected b()V
    .locals 1

    .line 31
    invoke-virtual {p0}, Laxb;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/xiaopeng/musicradio/model/dui/i;->a()Lcom/xiaopeng/musicradio/model/dui/i;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/model/dui/i;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    new-instance v0, Lawk;

    invoke-direct {v0}, Lawk;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->c(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public c()Ljava/lang/Integer;
    .locals 3

    .line 39
    const-class v0, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryMusicView;

    invoke-virtual {p0, v0}, Laxb;->b(Ljava/lang/Class;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 41
    invoke-virtual {p0, v0, v1}, Laxb;->b(Landroid/view/View;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 45
    :goto_0
    const-class v2, Lcom/xiaopeng/musicradio/mine/music/MusicHistoryAlbumView;

    invoke-virtual {p0, v2}, Laxb;->b(Ljava/lang/Class;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 47
    invoke-virtual {p0, v2, v1}, Laxb;->b(Landroid/view/View;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :cond_1
    return-object v0
.end method
