.class Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;
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

    .line 204
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 207
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->f(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)V

    .line 208
    :goto_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->b(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->g(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)[B

    move-result-object v0

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->h(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)Lcom/xiaopeng/devtools/system/c/b;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v1}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->g(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/xiaopeng/devtools/system/c/b;->y([B)V

    .line 213
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v1}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->i(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)[B

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v1}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->i(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)[B

    move-result-object v1

    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    goto :goto_1

    .line 214
    :cond_1
    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v1}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->h(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)Lcom/xiaopeng/devtools/system/c/b;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/xiaopeng/devtools/system/c/b;->cB(I)[B

    move-result-object v1

    .line 213
    :goto_1
    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->a(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;[B)[B

    .line 215
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->b(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;[B)[B

    .line 216
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->g(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)[B

    move-result-object v0

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    const/16 v4, 0x78

    if-ne v0, v4, :cond_3

    .line 217
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    iget-object v4, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v4}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->h(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)Lcom/xiaopeng/devtools/system/c/b;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/xiaopeng/devtools/system/c/b;->cB(I)[B

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->b(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;[B)[B

    .line 218
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->i(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)[B

    move-result-object v0

    aget-byte v0, v0, v3

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    .line 222
    :pswitch_0
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    iget-object v4, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v4}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->h(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)Lcom/xiaopeng/devtools/system/c/b;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/xiaopeng/devtools/system/c/b;->cB(I)[B

    move-result-object v4

    invoke-static {v0, v4}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->c(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;[B)[B

    .line 223
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    iget-object v4, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v4}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->j(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)[B

    move-result-object v4

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    mul-int/lit16 v3, v3, 0x100

    iget-object v4, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    .line 224
    invoke-static {v4}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->j(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)[B

    move-result-object v4

    aget-byte v2, v4, v2

    and-int/lit16 v2, v2, 0xff

    add-int/2addr v3, v2

    .line 223
    invoke-static {v0, v3}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->c(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;I)I

    .line 225
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->h(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)Lcom/xiaopeng/devtools/system/c/b;

    move-result-object v0

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v2}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->j(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/xiaopeng/devtools/system/c/b;->y([B)V

    .line 226
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v2}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->h(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)Lcom/xiaopeng/devtools/system/c/b;

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v3}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->k(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/xiaopeng/devtools/system/c/b;->cB(I)[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->d(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;[B)[B

    .line 227
    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->eY()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 228
    const-string v0, "CanDataCollectService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mReadBuffTimes:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v3}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->l(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 230
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->m(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)I

    .line 231
    new-instance v0, Lcom/xiaopeng/devtools/bean/can/CanDataNode;

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v2}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->n(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)[B

    move-result-object v2

    iget-object v3, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v3}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->k(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)I

    move-result v3

    iget-object v4, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    .line 232
    invoke-static {v4}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->i(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)[B

    move-result-object v4

    iget-object v5, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v5}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->o(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/xiaopeng/devtools/bean/can/CanDataNode;-><init>([BI[BI)V

    .line 233
    iget-object v2, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v2, v0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->a(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;Lcom/xiaopeng/devtools/bean/can/CanDataNode;)V

    .line 234
    iget-object v2, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v2}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->c(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)Ljava/util/concurrent/LinkedBlockingQueue;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/concurrent/LinkedBlockingQueue;->put(Ljava/lang/Object;)V

    .line 235
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->b(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;[B)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 239
    :catch_0
    move-exception v0

    .line 240
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 241
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/CanDataCollectService$3;->AV:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->h(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;)Lcom/xiaopeng/devtools/system/c/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/system/c/b;->disconnect()V

    .line 242
    const-wide/16 v0, 0x7d0

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/system/b/c;->sleep(J)V

    .line 243
    :cond_3
    :goto_2
    goto/16 :goto_0

    .line 245
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x70
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
