.class Lcom/xiaopeng/devtools/system/service/CanDataCollectService$2;
.super Ljava/lang/Object;
.source "CanDataCollectService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/system/service/CanDataCollectService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$2;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$2;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->b(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 104
    :goto_1
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$2;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->c(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->isEmpty()Z

    move-result v0

    const-wide/16 v1, 0x32

    if-nez v0, :cond_8

    .line 105
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$2;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->c(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;

    .line 106
    :goto_2
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->isParsed()Z

    move-result v3

    if-nez v3, :cond_1

    .line 107
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eY()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 108
    const-string v3, "CanDataCollectService"

    const-string v4, "canDataNode is not parsed, wait..."

    invoke-static {v3, v4}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    :cond_0
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    :goto_3
    goto :goto_2

    .line 112
    :catch_0
    move-exception v3

    .line 113
    invoke-virtual {v3}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 116
    :cond_1
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eY()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 117
    const-string v1, "CanDataCollectService"

    const-string v2, "start to lockData"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 119
    :cond_2
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->lockData()V

    .line 120
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eY()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 121
    const-string v1, "CanDataCollectService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "save data queue : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->getQueque()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    :cond_3
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->isDataNormal()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->getParsingString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 124
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$2;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->getParsingString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->a(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;I)V

    .line 125
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->isWithTriggerEvent()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 126
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->getTriggerFlag()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$2;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v1}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->d(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)I

    move-result v1

    if-nez v1, :cond_4

    .line 127
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->getTriggerEvent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 128
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$2;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->getTriggerEvent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->a(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;Ljava/lang/String;)V

    .line 130
    :cond_4
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$2;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->getTriggerFlag()I

    move-result v2

    invoke-static {v1, v2}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->b(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;I)I

    .line 132
    :cond_5
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$2;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->getParsingString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->a(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;Ljava/lang/String;)V

    .line 134
    :cond_6
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eY()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 135
    const-string v1, "CanDataCollectService"

    const-string v2, "start to unlockData"

    invoke-static {v1, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 137
    :cond_7
    invoke-virtual {v0}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;->unlockData()V

    .line 138
    goto/16 :goto_1

    .line 140
    :cond_8
    :try_start_1
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 143
    :goto_4
    goto/16 :goto_0

    .line 141
    :catch_1
    move-exception v0

    .line 142
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_4

    .line 145
    :cond_9
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eY()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 146
    const-string v0, "CanDataCollectService"

    const-string v1, "mCanDataQueue finish"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 148
    :cond_a
    invoke-static {}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fn()Lcom/xiaopeng/devtools/model/can/CanCollectModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/model/can/CanCollectModel;->fo()I

    move-result v0

    const/16 v1, 0x2712

    if-ne v0, v1, :cond_b

    .line 149
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$2;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$2;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    const v2, 0x7f1002f3

    invoke-virtual {v1, v2}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->a(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;Ljava/lang/String;)V

    .line 151
    :cond_b
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$2;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->e(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)V

    .line 152
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$2;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->b(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 153
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$2;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->a(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;Z)V

    .line 155
    :cond_c
    return-void
.end method
