.class Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$5;
.super Ljava/lang/Object;
.source "HistoryMusicActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;->setListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;)V
    .locals 0

    .line 121
    iput-object p1, p0, Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity$5;->a:Lcom/xiaopeng/musicradio/mine/history/music/view/HistoryMusicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 124
    invoke-static {}, Lawo;->a()Lawo;

    move-result-object v0

    invoke-virtual {v0}, Lawo;->b()Ljava/util/List;

    move-result-object v0

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Laxu;->a(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Laxt;->a(Landroid/view/View;Ljava/util/List;Ljava/lang/String;)V

    return-void
.end method
