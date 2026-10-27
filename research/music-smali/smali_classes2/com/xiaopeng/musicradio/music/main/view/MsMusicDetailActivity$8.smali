.class Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$8;
.super Ljava/lang/Object;
.source "MsMusicDetailActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->delayUpdateState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;)V
    .locals 0

    .line 448
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$8;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity$8;->a:Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;

    invoke-virtual {v0}, Lcom/xiaopeng/musicradio/music/main/view/MsMusicDetailActivity;->updatePlayState()V

    return-void
.end method
