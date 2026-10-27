.class Lbed$1;
.super Ljava/lang/Object;
.source "UserManagerModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbed;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbed;


# direct methods
.method constructor <init>(Lbed;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lbed$1;->a:Lbed;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 70
    invoke-static {}, Lcom/lzy/okgo/db/CacheManager;->getInstance()Lcom/lzy/okgo/db/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/db/CacheManager;->clear()Z

    const-string v0, "UserManagerModel"

    const-string v1, "run: clearUserData"

    .line 71
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v0, p0, Lbed$1;->a:Lbed;

    invoke-static {v0}, Lbed;->a(Lbed;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbdr;

    .line 73
    invoke-interface {v1}, Lbdr;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method
