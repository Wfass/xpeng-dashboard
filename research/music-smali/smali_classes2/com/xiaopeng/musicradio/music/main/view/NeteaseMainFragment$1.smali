.class Lcom/xiaopeng/musicradio/music/main/view/NeteaseMainFragment$1;
.super Ljava/lang/Object;
.source "NeteaseMainFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/main/view/NeteaseMainFragment;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/main/view/NeteaseMainFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/main/view/NeteaseMainFragment;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseMainFragment$1;->a:Lcom/xiaopeng/musicradio/music/main/view/NeteaseMainFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 51
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v0

    invoke-virtual {v0}, Lbgr;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 52
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbgr;->b(Z)V

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/musicradio/music/main/view/NeteaseMainFragment$1;->a:Lcom/xiaopeng/musicradio/music/main/view/NeteaseMainFragment;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/musicradio/music/main/view/NeteaseMainFragment;->setPosition(I)V

    :cond_0
    return-void
.end method
