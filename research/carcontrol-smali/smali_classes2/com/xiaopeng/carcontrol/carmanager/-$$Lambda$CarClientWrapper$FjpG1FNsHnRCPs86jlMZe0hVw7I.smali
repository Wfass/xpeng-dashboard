.class public final synthetic Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$CarClientWrapper$FjpG1FNsHnRCPs86jlMZe0hVw7I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$CarClientWrapper$FjpG1FNsHnRCPs86jlMZe0hVw7I;->f$0:Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/carcontrol/carmanager/-$$Lambda$CarClientWrapper$FjpG1FNsHnRCPs86jlMZe0hVw7I;->f$0:Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;

    invoke-virtual {v0}, Lcom/xiaopeng/carcontrol/carmanager/CarClientWrapper;->lambda$shutdownInitCbThreadPool$3$CarClientWrapper()V

    return-void
.end method
