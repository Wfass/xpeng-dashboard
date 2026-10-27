.class Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$3;
.super Ljava/lang/Object;
.source "ServiceProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->checkAndStartBindingWithDelay(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)V
    .locals 0

    .line 176
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$3;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy$3;->this$0:Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;->access$400(Lcom/xiaopeng/lib/framework/locationmodule/consumer/ServiceProxy;)V

    return-void
.end method
