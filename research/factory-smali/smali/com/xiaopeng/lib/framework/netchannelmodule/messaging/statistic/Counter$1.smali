.class Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter$1;
.super Ljava/lang/Object;
.source "Counter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;

    .line 82
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->access$000(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;Z)V

    .line 86
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter$1;->this$0:Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;->access$100(Lcom/xiaopeng/lib/framework/netchannelmodule/messaging/statistic/Counter;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 87
    return-void
.end method
