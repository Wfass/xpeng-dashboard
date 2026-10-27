.class Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$9;
.super Ljava/lang/Object;
.source "MsMusicDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->refreshLoadMoreState(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;I)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$9;->b:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    iput p2, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$9;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 510
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$9;->b:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    iget-object v0, v0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->mAdapter:Lbii;

    iget v1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$9;->a:I

    invoke-virtual {v0, v1}, Lbii;->b(I)V

    return-void
.end method
