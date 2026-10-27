.class Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$5;
.super Ljava/lang/Object;
.source "MsSingerCollectLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->refreshLoadMoreState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;I)V
    .locals 0

    .line 241
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$5;->b:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    iput p2, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 244
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$5;->b:Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;

    invoke-static {v0}, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;->access$000(Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout;)Lbjk;

    move-result-object v0

    iget v1, p0, Lcom/xiaopeng/musicradio/music/singer/singer/view/MsSingerCollectLayout$5;->a:I

    invoke-virtual {v0, v1}, Lbjk;->b(I)V

    return-void
.end method
