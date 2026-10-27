.class final Lcom/xiaopeng/lib/utils/j$1;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/utils/j;->execute(Ljava/lang/Runnable;Ljava/lang/Runnable;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic Vy:Ljava/lang/Runnable;

.field final synthetic WF:I

.field final synthetic WG:Landroid/os/Handler;

.field final synthetic WH:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(ILjava/lang/Runnable;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    .line 116
    iput p1, p0, Lcom/xiaopeng/lib/utils/j$1;->WF:I

    iput-object p2, p0, Lcom/xiaopeng/lib/utils/j$1;->Vy:Ljava/lang/Runnable;

    iput-object p3, p0, Lcom/xiaopeng/lib/utils/j$1;->WG:Landroid/os/Handler;

    iput-object p4, p0, Lcom/xiaopeng/lib/utils/j$1;->WH:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 119
    iget v0, p0, Lcom/xiaopeng/lib/utils/j$1;->WF:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/j$1;->Vy:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 121
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/j$1;->WG:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/lib/utils/j$1;->WH:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/j$1;->WG:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/lib/utils/j$1;->WH:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 124
    :cond_0
    return-void
.end method
