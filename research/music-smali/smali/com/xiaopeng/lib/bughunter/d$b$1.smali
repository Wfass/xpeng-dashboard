.class Lcom/xiaopeng/lib/bughunter/d$b$1;
.super Ljava/lang/Object;
.source "SystemStatusMonitor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/bughunter/d$b;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/xiaopeng/lib/bughunter/d$b;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/bughunter/d$b;I)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/xiaopeng/lib/bughunter/d$b$1;->b:Lcom/xiaopeng/lib/bughunter/d$b;

    iput p2, p0, Lcom/xiaopeng/lib/bughunter/d$b$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 104
    iget-object v0, p0, Lcom/xiaopeng/lib/bughunter/d$b$1;->b:Lcom/xiaopeng/lib/bughunter/d$b;

    iget-object v0, v0, Lcom/xiaopeng/lib/bughunter/d$b;->a:Lcom/xiaopeng/lib/bughunter/d;

    invoke-static {v0}, Lcom/xiaopeng/lib/bughunter/d;->a(Lcom/xiaopeng/lib/bughunter/d;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 105
    :try_start_0
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/d$b$1;->b:Lcom/xiaopeng/lib/bughunter/d$b;

    iget-object v1, v1, Lcom/xiaopeng/lib/bughunter/d$b;->a:Lcom/xiaopeng/lib/bughunter/d;

    iget v2, p0, Lcom/xiaopeng/lib/bughunter/d$b$1;->a:I

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/bughunter/d;->b(Lcom/xiaopeng/lib/bughunter/d;I)I

    .line 106
    iget-object v1, p0, Lcom/xiaopeng/lib/bughunter/d$b$1;->b:Lcom/xiaopeng/lib/bughunter/d$b;

    iget-object v1, v1, Lcom/xiaopeng/lib/bughunter/d$b;->a:Lcom/xiaopeng/lib/bughunter/d;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/xiaopeng/lib/bughunter/d;->b(Lcom/xiaopeng/lib/bughunter/d;J)J

    .line 107
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
