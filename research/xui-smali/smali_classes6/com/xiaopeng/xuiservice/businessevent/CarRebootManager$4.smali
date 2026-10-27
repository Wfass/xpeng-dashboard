.class Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$4;
.super Ljava/lang/Object;
.source "CarRebootManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->handleChargeStatus(I)V
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

    .line 124
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$4;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    iput p2, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$4;->val$status:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 127
    iget v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$4;->val$status:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 129
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$4;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$500(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    return-void

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$4;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$502(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;Z)Z

    .line 133
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$4;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$200(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)V

    goto :goto_0

    .line 135
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$4;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$500(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 136
    return-void

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$4;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$502(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;Z)Z

    .line 139
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager$4;->this$0:Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;->access$600(Lcom/xiaopeng/xuiservice/businessevent/CarRebootManager;)V

    .line 141
    :goto_0
    return-void
.end method
