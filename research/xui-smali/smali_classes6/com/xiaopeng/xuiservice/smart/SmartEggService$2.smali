.class Lcom/xiaopeng/xuiservice/smart/SmartEggService$2;
.super Ljava/lang/Object;
.source "SmartEggService.java"

# interfaces
.implements Lcom/xiaopeng/xuimanager/contextinfo/ContextInfoManager$ContextCarStatusEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartEggService;->initXUIManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    .line 123
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onErrorEvent(II)V
    .locals 0
    .param p1, "i"    # I
    .param p2, "i1"    # I

    .line 145
    return-void
.end method

.method public onGearChanged(I)V
    .locals 2
    .param p1, "gear"    # I

    .line 136
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->access$002(Lcom/xiaopeng/xuiservice/smart/SmartEggService;Z)Z

    .line 137
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->access$000(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)V

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->access$508(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)I

    .line 140
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->access$600(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)V

    .line 142
    :cond_1
    return-void
.end method

.method public onIGStatus(I)V
    .locals 2
    .param p1, "status"    # I

    .line 126
    if-nez p1, :cond_0

    .line 127
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->access$202(Lcom/xiaopeng/xuiservice/smart/SmartEggService;Z)Z

    goto :goto_0

    .line 128
    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 129
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-static {v1, v0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->access$202(Lcom/xiaopeng/xuiservice/smart/SmartEggService;Z)Z

    .line 130
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->access$300(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)V

    .line 131
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartEggService$2;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartEggService;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/smart/SmartEggService;->access$408(Lcom/xiaopeng/xuiservice/smart/SmartEggService;)I

    .line 133
    :cond_1
    :goto_0
    return-void
.end method
