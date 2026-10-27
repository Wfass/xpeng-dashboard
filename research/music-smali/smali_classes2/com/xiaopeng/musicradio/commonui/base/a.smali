.class public Lcom/xiaopeng/musicradio/commonui/base/a;
.super Landroid/content/ContextWrapper;
.source "DialogContextWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/musicradio/commonui/base/a$a;
    }
.end annotation


# instance fields
.field private a:Lcom/bumptech/glide/RequestManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/RequestManager;
    .locals 5

    .line 25
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/a;->a:Lcom/bumptech/glide/RequestManager;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/bumptech/glide/RequestManager;

    invoke-static {p0}, Lcom/bumptech/glide/Glide;->get(Landroid/content/Context;)Lcom/bumptech/glide/Glide;

    move-result-object v1

    new-instance v2, Lcom/xiaopeng/musicradio/commonui/base/a$1;

    invoke-direct {v2, p0}, Lcom/xiaopeng/musicradio/commonui/base/a$1;-><init>(Lcom/xiaopeng/musicradio/commonui/base/a;)V

    new-instance v3, Lcom/xiaopeng/musicradio/commonui/base/a$a;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/xiaopeng/musicradio/commonui/base/a$a;-><init>(Lcom/xiaopeng/musicradio/commonui/base/a$1;)V

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/bumptech/glide/RequestManager;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/a;->a:Lcom/bumptech/glide/RequestManager;

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/a;->a:Lcom/bumptech/glide/RequestManager;

    return-object v0
.end method

.method public b()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/a;->a:Lcom/bumptech/glide/RequestManager;

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->onStop()V

    .line 44
    iget-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/a;->a:Lcom/bumptech/glide/RequestManager;

    invoke-virtual {v0}, Lcom/bumptech/glide/RequestManager;->onDestroy()V

    const/4 v0, 0x0

    .line 45
    iput-object v0, p0, Lcom/xiaopeng/musicradio/commonui/base/a;->a:Lcom/bumptech/glide/RequestManager;

    :cond_0
    return-void
.end method
