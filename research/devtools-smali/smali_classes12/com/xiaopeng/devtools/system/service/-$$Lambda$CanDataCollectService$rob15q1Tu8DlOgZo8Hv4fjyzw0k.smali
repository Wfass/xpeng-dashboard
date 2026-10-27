.class public final synthetic Lcom/xiaopeng/devtools/system/service/-$$Lambda$CanDataCollectService$rob15q1Tu8DlOgZo8Hv4fjyzw0k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

.field private final synthetic f$1:Lcom/xiaopeng/devtools/bean/can/CanDataNode;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;Lcom/xiaopeng/devtools/bean/can/CanDataNode;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/-$$Lambda$CanDataCollectService$rob15q1Tu8DlOgZo8Hv4fjyzw0k;->f$0:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    iput-object p2, p0, Lcom/xiaopeng/devtools/system/service/-$$Lambda$CanDataCollectService$rob15q1Tu8DlOgZo8Hv4fjyzw0k;->f$1:Lcom/xiaopeng/devtools/bean/can/CanDataNode;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/-$$Lambda$CanDataCollectService$rob15q1Tu8DlOgZo8Hv4fjyzw0k;->f$0:Lcom/xiaopeng/devtools/system/service/CanDataCollectService;

    iget-object v1, p0, Lcom/xiaopeng/devtools/system/service/-$$Lambda$CanDataCollectService$rob15q1Tu8DlOgZo8Hv4fjyzw0k;->f$1:Lcom/xiaopeng/devtools/bean/can/CanDataNode;

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/system/service/CanDataCollectService;->lambda$rob15q1Tu8DlOgZo8Hv4fjyzw0k(Lcom/xiaopeng/devtools/system/service/CanDataCollectService;Lcom/xiaopeng/devtools/bean/can/CanDataNode;)V

    return-void
.end method
