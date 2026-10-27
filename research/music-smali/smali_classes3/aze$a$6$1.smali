.class Laze$a$6$1;
.super Ljava/lang/Object;
.source "ProgramFetchModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Laze$a$6;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/List;

.field final synthetic b:Laze$a$6;


# direct methods
.method constructor <init>(Laze$a$6;Ljava/util/List;)V
    .locals 0

    .line 282
    iput-object p1, p0, Laze$a$6$1;->b:Laze$a$6;

    iput-object p2, p0, Laze$a$6$1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 285
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 286
    iget-object v2, p0, Laze$a$6$1;->b:Laze$a$6;

    iget-object v2, v2, Laze$a$6;->c:Laze$a;

    iget-object v3, p0, Laze$a$6$1;->a:Ljava/util/List;

    iget-object v4, p0, Laze$a$6$1;->b:Laze$a$6;

    iget-object v4, v4, Laze$a$6;->c:Laze$a;

    invoke-static {v4}, Laze$a;->a(Laze$a;)J

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Laze$a;->a(Laze$a;Ljava/util/List;J)V

    .line 287
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "runOnDbWorker:time="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ProgramFetchModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    .line 288
    iget-object v0, p0, Laze$a$6$1;->b:Laze$a$6;

    iget-object v0, v0, Laze$a$6;->c:Laze$a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Laze$a;->a(Laze$a;Z)V

    return-void
.end method
