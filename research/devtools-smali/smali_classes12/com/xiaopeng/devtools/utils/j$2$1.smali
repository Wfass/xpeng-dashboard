.class Lcom/xiaopeng/devtools/utils/j$2$1;
.super Ljava/lang/Object;
.source "IndivHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/devtools/utils/j$2;->onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic BU:Lcom/xiaopeng/devtools/utils/j$2;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/utils/j$2;)V
    .locals 0

    .line 254
    iput-object p1, p0, Lcom/xiaopeng/devtools/utils/j$2$1;->BU:Lcom/xiaopeng/devtools/utils/j$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 258
    :try_start_0
    const-class v0, Lcom/xiaopeng/devtools/utils/j;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    :try_start_1
    invoke-static {}, Lcom/xiaopeng/devtools/utils/j;->eB()V

    .line 260
    monitor-exit v0

    .line 263
    goto :goto_0

    .line 260
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 261
    :catch_0
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 264
    :goto_0
    return-void
.end method
