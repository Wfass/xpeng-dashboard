.class Lcom/xiaopeng/lib/utils/SendBroadCastUtil$1;
.super Ljava/util/TimerTask;
.source "SendBroadCastUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/utils/SendBroadCastUtil;->sendBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/utils/SendBroadCastUtil;

.field final synthetic val$action:Ljava/lang/String;

.field final synthetic val$data:Ljava/lang/String;

.field final synthetic val$name:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/utils/SendBroadCastUtil;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lcom/xiaopeng/lib/utils/SendBroadCastUtil$1;->this$0:Lcom/xiaopeng/lib/utils/SendBroadCastUtil;

    iput-object p2, p0, Lcom/xiaopeng/lib/utils/SendBroadCastUtil$1;->val$action:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/lib/utils/SendBroadCastUtil$1;->val$name:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/lib/utils/SendBroadCastUtil$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 125
    iget-object v0, p0, Lcom/xiaopeng/lib/utils/SendBroadCastUtil$1;->this$0:Lcom/xiaopeng/lib/utils/SendBroadCastUtil;

    iget-object v1, p0, Lcom/xiaopeng/lib/utils/SendBroadCastUtil$1;->val$action:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/lib/utils/SendBroadCastUtil$1;->val$name:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/lib/utils/SendBroadCastUtil$1;->val$data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/xiaopeng/lib/utils/SendBroadCastUtil;->sendBroadCast(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
