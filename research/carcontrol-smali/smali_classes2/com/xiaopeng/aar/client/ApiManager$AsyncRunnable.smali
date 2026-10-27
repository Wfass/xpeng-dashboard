.class Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;
.super Ljava/lang/Object;
.source "ApiManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/aar/client/ApiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AsyncRunnable"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private blob:[B

.field private method:Ljava/lang/String;

.field private module:Ljava/lang/String;

.field private param:Ljava/lang/String;

.field private requestId:Ljava/lang/String;

.field private startTime:J

.field final synthetic this$0:Lcom/xiaopeng/aar/client/ApiManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/aar/client/ApiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[BLjava/lang/String;)V
    .locals 0

    .line 199
    iput-object p1, p0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->this$0:Lcom/xiaopeng/aar/client/ApiManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    iput-object p2, p0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->appId:Ljava/lang/String;

    .line 201
    iput-object p3, p0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->module:Ljava/lang/String;

    .line 202
    iput-object p4, p0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->method:Ljava/lang/String;

    .line 203
    iput-object p5, p0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->param:Ljava/lang/String;

    .line 204
    iput-object p6, p0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->blob:[B

    .line 205
    iput-object p7, p0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->requestId:Ljava/lang/String;

    .line 206
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->startTime:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 211
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 212
    iget-wide v3, v0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->startTime:J

    sub-long v3, v1, v3

    .line 220
    iget-object v5, v0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->this$0:Lcom/xiaopeng/aar/client/ApiManager;

    iget-object v6, v0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->appId:Ljava/lang/String;

    iget-object v7, v0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->module:Ljava/lang/String;

    iget-object v8, v0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->method:Ljava/lang/String;

    iget-object v9, v0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->param:Ljava/lang/String;

    iget-object v10, v0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->blob:[B

    invoke-static/range {v5 .. v10}, Lcom/xiaopeng/aar/client/ApiManager;->access$200(Lcom/xiaopeng/aar/client/ApiManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)Ljava/lang/String;

    move-result-object v16

    .line 221
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    .line 222
    iget-object v2, v0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->requestId:Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v2, v1, v7

    iget-object v2, v0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->appId:Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v2, v1, v7

    iget-object v2, v0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->method:Ljava/lang/String;

    const/4 v7, 0x2

    aput-object v2, v1, v7

    .line 224
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v1, v3

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    invoke-static/range {v16 .. v16}, Lcom/xiaopeng/aar/utils/LogUtils;->stringLog(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    aput-object v2, v1, v3

    const-string v2, "callAsync-end requestId:%s, appId:%s ,method:%s ,idle-time:%s,  ipc-time:%s,  result:%s "

    .line 222
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ApiMg"

    invoke-static {v2, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    iget-object v1, v0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->this$0:Lcom/xiaopeng/aar/client/ApiManager;

    invoke-static {v1}, Lcom/xiaopeng/aar/client/ApiManager;->access$300(Lcom/xiaopeng/aar/client/ApiManager;)Lcom/xiaopeng/aar/client/ApiListener;

    move-result-object v11

    if-eqz v11, :cond_0

    .line 227
    iget-object v12, v0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->requestId:Ljava/lang/String;

    iget-object v13, v0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->appId:Ljava/lang/String;

    iget-object v14, v0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->module:Ljava/lang/String;

    iget-object v15, v0, Lcom/xiaopeng/aar/client/ApiManager$AsyncRunnable;->method:Ljava/lang/String;

    invoke-interface/range {v11 .. v16}, Lcom/xiaopeng/aar/client/ApiListener;->onCallResult(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "onReceived listener is null"

    .line 229
    invoke-static {v2, v1}, Lcom/xiaopeng/aar/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method
