.class Lcom/xiaopeng/xuiservice/smart/SmartBootService$12;
.super Ljava/lang/Object;
.source "SmartBootService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/smart/SmartBootService;->handleATLstatus(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartBootService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    .line 918
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$12;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 921
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$12;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$1100(Lcom/xiaopeng/xuiservice/smart/SmartBootService;IJ)V

    .line 922
    return-void
.end method
