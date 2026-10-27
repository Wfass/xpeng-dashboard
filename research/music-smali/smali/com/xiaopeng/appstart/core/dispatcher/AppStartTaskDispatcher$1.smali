.class Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher$1;
.super Ljava/lang/Object;
.source "AppStartTaskDispatcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->start()Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;


# direct methods
.method constructor <init>(Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher$1;->this$0:Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 109
    :try_start_0
    iget-object v0, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher$1;->this$0:Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    iget-object v1, p0, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher$1;->this$0:Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;

    invoke-static {v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->access$000(Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;->access$100(Lcom/xiaopeng/appstart/core/dispatcher/AppStartTaskDispatcher;Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 111
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
