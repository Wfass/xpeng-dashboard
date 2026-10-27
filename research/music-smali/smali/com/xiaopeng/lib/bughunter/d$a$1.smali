.class Lcom/xiaopeng/lib/bughunter/d$a$1;
.super Ljava/lang/Object;
.source "SystemStatusMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/bughunter/d$a;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Lcom/xiaopeng/lib/bughunter/d$a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/bughunter/d$a;II)V
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/d$a$1;->c:Lcom/xiaopeng/lib/bughunter/d$a;

    iput p2, p0, Lcom/xiaopeng/lib/bughunter/d$a$1;->a:I

    iput p3, p0, Lcom/xiaopeng/lib/bughunter/d$a$1;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 75
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/d$a$1;->c:Lcom/xiaopeng/lib/bughunter/d$a;

    iget-object v0, v0, Lcom/xiaopeng/lib/bughunter/d$a;->a:Lcom/xiaopeng/lib/bughunter/d;

    invoke-static {v0}, Lcom/xiaopeng/lib/bughunter/d;->a(Lcom/xiaopeng/lib/bughunter/d;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 76
    :try_start_0
    iget v1, p0, Lcom/xiaopeng/lib/bughunter/d$a$1;->a:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/xiaopeng/lib/bughunter/d$a$1;->a:I

    iget v2, p0, Lcom/xiaopeng/lib/bughunter/d$a$1;->b:I

    if-eq v1, v2, :cond_1

    .line 78
    :cond_0
    invoke-static {}, Lcom/xiaopeng/lib/bughunter/d;->h()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Get IgOnState occurs exception!"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/LogUtils;->w(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/d$a$1;->c:Lcom/xiaopeng/lib/bughunter/d$a;

    iget-object v1, v1, Lcom/xiaopeng/lib/bughunter/d$a;->a:Lcom/xiaopeng/lib/bughunter/d;

    iget v2, p0, Lcom/xiaopeng/lib/bughunter/d$a$1;->b:I

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/bughunter/d;->a(Lcom/xiaopeng/lib/bughunter/d;I)I

    .line 82
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/d$a$1;->c:Lcom/xiaopeng/lib/bughunter/d$a;

    iget-object v1, v1, Lcom/xiaopeng/lib/bughunter/d$a;->a:Lcom/xiaopeng/lib/bughunter/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/lib/bughunter/d;->a(Lcom/xiaopeng/lib/bughunter/d;J)J

    .line 83
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
