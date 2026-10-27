.class Lcom/xiaopeng/lib/utils/j$3$1;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/utils/j$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic WO:Lcom/xiaopeng/lib/utils/j$3;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/utils/j$3;)V
    .locals 0

    .line 315
    iput-object p1, p0, Lcom/xiaopeng/lib/utils/j$3$1;->WO:Lcom/xiaopeng/lib/utils/j$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/j$3$1;->WO:Lcom/xiaopeng/lib/utils/j$3;

    iget-object v0, v0, Lcom/xiaopeng/lib/utils/j$3;->WM:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 319
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/j$3$1;->WO:Lcom/xiaopeng/lib/utils/j$3;

    iget-object v0, v0, Lcom/xiaopeng/lib/utils/j$3;->WG:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/lib/utils/j$3$1;->WO:Lcom/xiaopeng/lib/utils/j$3;

    iget-object v1, v1, Lcom/xiaopeng/lib/utils/j$3;->WN:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 320
    return-void
.end method
