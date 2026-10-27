.class Lcom/xiaopeng/devtools/system/service/CopyLogService$1;
.super Landroid/os/Handler;
.source "CopyLogService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/system/service/CopyLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Bk:Lcom/xiaopeng/devtools/system/service/CopyLogService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/system/service/CopyLogService;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService$1;->Bk:Lcom/xiaopeng/devtools/system/service/CopyLogService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1    # Landroid/os/Message;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 82
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 83
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x3eb

    const/4 v1, 0x1

    if-eq p1, v0, :cond_2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 85
    :pswitch_0
    const-string p1, "CopyLogService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isIcmLogResponse = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService$1;->Bk:Lcom/xiaopeng/devtools/system/service/CopyLogService;

    invoke-static {v2}, Lcom/xiaopeng/devtools/system/service/CopyLogService;->a(Lcom/xiaopeng/devtools/system/service/CopyLogService;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService$1;->Bk:Lcom/xiaopeng/devtools/system/service/CopyLogService;

    invoke-static {p1}, Lcom/xiaopeng/devtools/system/service/CopyLogService;->a(Lcom/xiaopeng/devtools/system/service/CopyLogService;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 87
    goto/16 :goto_0

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService$1;->Bk:Lcom/xiaopeng/devtools/system/service/CopyLogService;

    invoke-static {p1, v1}, Lcom/xiaopeng/devtools/system/service/CopyLogService;->a(Lcom/xiaopeng/devtools/system/service/CopyLogService;Z)Z

    .line 90
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService$1;->Bk:Lcom/xiaopeng/devtools/system/service/CopyLogService;

    invoke-static {p1}, Lcom/xiaopeng/devtools/system/service/CopyLogService;->b(Lcom/xiaopeng/devtools/system/service/CopyLogService;)Ljava/util/List;

    move-result-object p1

    const-string v0, "/cache/icmlog/"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService$1;->Bk:Lcom/xiaopeng/devtools/system/service/CopyLogService;

    invoke-static {p1}, Lcom/xiaopeng/devtools/system/service/CopyLogService;->c(Lcom/xiaopeng/devtools/system/service/CopyLogService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 93
    goto/16 :goto_0

    .line 105
    :pswitch_1
    const-string p1, "CopyLogService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "modem log response = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService$1;->Bk:Lcom/xiaopeng/devtools/system/service/CopyLogService;

    invoke-static {v2}, Lcom/xiaopeng/devtools/system/service/CopyLogService;->d(Lcom/xiaopeng/devtools/system/service/CopyLogService;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService$1;->Bk:Lcom/xiaopeng/devtools/system/service/CopyLogService;

    invoke-static {p1}, Lcom/xiaopeng/devtools/system/service/CopyLogService;->d(Lcom/xiaopeng/devtools/system/service/CopyLogService;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 107
    goto :goto_0

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService$1;->Bk:Lcom/xiaopeng/devtools/system/service/CopyLogService;

    invoke-static {p1, v1}, Lcom/xiaopeng/devtools/system/service/CopyLogService;->b(Lcom/xiaopeng/devtools/system/service/CopyLogService;Z)Z

    .line 110
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService$1;->Bk:Lcom/xiaopeng/devtools/system/service/CopyLogService;

    invoke-static {p1}, Lcom/xiaopeng/devtools/system/service/CopyLogService;->b(Lcom/xiaopeng/devtools/system/service/CopyLogService;)Ljava/util/List;

    move-result-object p1

    const-string v0, "/cache/modemlog/"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService$1;->Bk:Lcom/xiaopeng/devtools/system/service/CopyLogService;

    invoke-static {p1}, Lcom/xiaopeng/devtools/system/service/CopyLogService;->c(Lcom/xiaopeng/devtools/system/service/CopyLogService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_0

    .line 95
    :cond_2
    const-string p1, "CopyLogService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "tbox log response = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService$1;->Bk:Lcom/xiaopeng/devtools/system/service/CopyLogService;

    invoke-static {v2}, Lcom/xiaopeng/devtools/system/service/CopyLogService;->d(Lcom/xiaopeng/devtools/system/service/CopyLogService;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService$1;->Bk:Lcom/xiaopeng/devtools/system/service/CopyLogService;

    invoke-static {p1}, Lcom/xiaopeng/devtools/system/service/CopyLogService;->d(Lcom/xiaopeng/devtools/system/service/CopyLogService;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 97
    goto :goto_0

    .line 99
    :cond_3
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService$1;->Bk:Lcom/xiaopeng/devtools/system/service/CopyLogService;

    invoke-static {p1, v1}, Lcom/xiaopeng/devtools/system/service/CopyLogService;->b(Lcom/xiaopeng/devtools/system/service/CopyLogService;Z)Z

    .line 100
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService$1;->Bk:Lcom/xiaopeng/devtools/system/service/CopyLogService;

    invoke-static {p1}, Lcom/xiaopeng/devtools/system/service/CopyLogService;->b(Lcom/xiaopeng/devtools/system/service/CopyLogService;)Ljava/util/List;

    move-result-object p1

    const-string v0, "/cache/tboxlog/"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/CopyLogService$1;->Bk:Lcom/xiaopeng/devtools/system/service/CopyLogService;

    invoke-static {p1}, Lcom/xiaopeng/devtools/system/service/CopyLogService;->c(Lcom/xiaopeng/devtools/system/service/CopyLogService;)Ljava/util/concurrent/CountDownLatch;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 103
    nop

    .line 114
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3ee
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
