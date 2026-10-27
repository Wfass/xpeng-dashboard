.class Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$1;
.super Landroid/os/Handler;
.source "MituWatchInquirer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 73
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer$1;->this$0:Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;

    invoke-static {v0, p1}, Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;->access$000(Lcom/xiaopeng/xuiservice/iot/manager/mituwatch/MituWatchInquirer;Landroid/os/Message;)V

    .line 77
    return-void
.end method
