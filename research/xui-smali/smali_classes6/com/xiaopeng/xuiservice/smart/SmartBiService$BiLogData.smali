.class Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiLogData;
.super Ljava/lang/Object;
.source "SmartBiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/smart/SmartBiService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BiLogData"
.end annotation


# instance fields
.field public buttonId:Ljava/lang/String;

.field public moduleId:Ljava/lang/String;

.field public pageId:Ljava/lang/String;

.field public params:Ljava/lang/String;

.field final synthetic this$0:Lcom/xiaopeng/xuiservice/smart/SmartBiService;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/xuiservice/smart/SmartBiService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2, "moduleId"    # Ljava/lang/String;
    .param p3, "pageId"    # Ljava/lang/String;
    .param p4, "buttonId"    # Ljava/lang/String;
    .param p5, "params"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiLogData;->this$0:Lcom/xiaopeng/xuiservice/smart/SmartBiService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p2, p0, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiLogData;->moduleId:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiLogData;->pageId:Ljava/lang/String;

    .line 39
    iput-object p4, p0, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiLogData;->buttonId:Ljava/lang/String;

    .line 40
    iput-object p5, p0, Lcom/xiaopeng/xuiservice/smart/SmartBiService$BiLogData;->params:Ljava/lang/String;

    .line 41
    return-void
.end method
