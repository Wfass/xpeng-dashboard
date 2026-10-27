.class Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$5;
.super Ljava/lang/Object;
.source "CarRebootManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->handleBcmATWS(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

.field final synthetic val$status:I


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    .line 146
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$5;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    iput p2, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$5;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 150
    iget v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$5;->val$status:I

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$5;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$700(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    return-void

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$5;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$600(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)V

    .line 155
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$5;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$702(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;Z)Z

    goto :goto_0

    .line 157
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$5;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$700(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 158
    return-void

    .line 160
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$5;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$200(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)V

    .line 161
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$5;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$702(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;Z)Z

    .line 163
    :goto_0
    return-void
.end method
