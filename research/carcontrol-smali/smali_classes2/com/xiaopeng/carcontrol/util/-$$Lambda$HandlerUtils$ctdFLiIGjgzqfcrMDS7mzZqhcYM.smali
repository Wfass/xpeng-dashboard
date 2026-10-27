.class public final synthetic Lcom/xiaopeng/carcontrol/util/-$$Lambda$HandlerUtils$ctdFLiIGjgzqfcrMDS7mzZqhcYM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/os/Handler;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$HandlerUtils$ctdFLiIGjgzqfcrMDS7mzZqhcYM;->f$0:Landroid/os/Handler;

    iput-object p2, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$HandlerUtils$ctdFLiIGjgzqfcrMDS7mzZqhcYM;->f$1:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$HandlerUtils$ctdFLiIGjgzqfcrMDS7mzZqhcYM;->f$0:Landroid/os/Handler;

    iget-object v1, p0, Lcom/xiaopeng/carcontrol/util/-$$Lambda$HandlerUtils$ctdFLiIGjgzqfcrMDS7mzZqhcYM;->f$1:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lcom/xiaopeng/carcontrol/util/HandlerUtils;->lambda$removeCallbacks$0(Landroid/os/Handler;Ljava/lang/Runnable;)V

    return-void
.end method
