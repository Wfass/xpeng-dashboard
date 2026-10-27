.class Landroid/support/rastermill/CacheEngine$2;
.super Ljava/lang/Object;
.source "CacheEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/rastermill/CacheEngine;->onCacheFinished(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/rastermill/CacheEngine;

.field final synthetic val$callbackList:Ljava/util/LinkedList;

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/support/rastermill/CacheEngine;Ljava/util/LinkedList;Ljava/lang/String;)V
    .locals 0

    .line 146
    iput-object p1, p0, Landroid/support/rastermill/CacheEngine$2;->this$0:Landroid/support/rastermill/CacheEngine;

    iput-object p2, p0, Landroid/support/rastermill/CacheEngine$2;->val$callbackList:Ljava/util/LinkedList;

    iput-object p3, p0, Landroid/support/rastermill/CacheEngine$2;->val$url:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 149
    iget-object v0, p0, Landroid/support/rastermill/CacheEngine$2;->val$callbackList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/rastermill/CacheEngine$CacheCallback;

    .line 150
    iget-object v2, p0, Landroid/support/rastermill/CacheEngine$2;->val$url:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/support/rastermill/CacheEngine$CacheCallback;->onCacheFinished(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
