.class Lcom/xiaopeng/xuiservice/smart/SmartAutoService$1;
.super Ljava/lang/Object;
.source "SmartAutoService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartAutoService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartAutoService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartAutoService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/smart/SmartAutoService;

    .line 38
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAutoService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 40
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartAutoService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartAutoService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartAutoService;->access$002(Lcom/xiaopeng/xuiservice/smart/SmartAutoService;Z)Z

    .line 41
    return-void
.end method
