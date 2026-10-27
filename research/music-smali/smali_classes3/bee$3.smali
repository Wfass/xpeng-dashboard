.class Lbee$3;
.super Ljava/lang/Object;
.source "XmlyManagerModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbee;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbee;


# direct methods
.method constructor <init>(Lbee;)V
    .locals 0

    .line 95
    iput-object p1, p0, Lbee$3;->a:Lbee;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 98
    invoke-static {}, Lcom/lzy/okgo/db/CacheManager;->getInstance()Lcom/lzy/okgo/db/CacheManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/lzy/okgo/db/CacheManager;->clear()Z

    .line 99
    invoke-static {}, Lare;->d()Lare;

    move-result-object v0

    invoke-virtual {v0}, Lare;->j()V

    const-string v0, "XmlyManagerModel"

    const-string v1, "run: clearUserData"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-object v0, p0, Lbee$3;->a:Lbee;

    invoke-static {v0}, Lbee;->a(Lbee;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbds;

    .line 102
    invoke-interface {v1}, Lbds;->b()V

    goto :goto_0

    :cond_0
    return-void
.end method
