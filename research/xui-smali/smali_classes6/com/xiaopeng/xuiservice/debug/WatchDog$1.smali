.class Lcom/xiaopeng/xuiservice/debug/WatchDog$1;
.super Landroid/os/Handler;
.source "WatchDog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/debug/WatchDog;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/debug/WatchDog;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/debug/WatchDog;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/debug/WatchDog;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 226
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog$1;->this$0:Lcom/xiaopeng/xuiservice/debug/WatchDog;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 229
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/debug/WatchDog$1;->this$0:Lcom/xiaopeng/xuiservice/debug/WatchDog;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/debug/WatchDog;->access$100(Lcom/xiaopeng/xuiservice/debug/WatchDog;Landroid/os/Message;)V

    .line 230
    return-void
.end method
