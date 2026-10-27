.class Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment$1;
.super Ljava/lang/Object;
.source "NetConFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->openDolbyZone()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment$1;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 117
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v0

    invoke-virtual {v0}, Lbgr;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-static {}, Lbgr;->a()Lbgr;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbgr;->a(Z)V

    .line 119
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 120
    iget-object v1, p0, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment$1;->a:Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;

    invoke-virtual {v1}, Lcom/xiaopeng/musicradio/music/concentration/main/view/NetConFragment;->getFragmentContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "/music/fragment/dolby_zone"

    invoke-static {v1, v2, v0}, Lbni;->a(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    :cond_0
    return-void
.end method
