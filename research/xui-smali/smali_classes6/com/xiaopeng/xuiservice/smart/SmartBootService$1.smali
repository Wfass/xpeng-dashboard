.class Lcom/xiaopeng/xuiservice/smart/SmartBootService$1;
.super Ljava/lang/Object;
.source "SmartBootService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartBootService;
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

    .line 142
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 144
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/smart/SmartBootService$1;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBootService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/smart/SmartBootService;->access$000(Lcom/xiaopeng/xuiservice/smart/SmartBootService;Z)V

    .line 145
    return-void
.end method
