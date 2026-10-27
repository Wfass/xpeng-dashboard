.class public final synthetic Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XMiniProgService$zKf_6q89ykHCjfVIzJa4XoVZPxE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

.field private final synthetic f$1:Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;

.field private final synthetic f$2:Ljava/lang/String;

.field private final synthetic f$3:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XMiniProgService$zKf_6q89ykHCjfVIzJa4XoVZPxE;->f$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XMiniProgService$zKf_6q89ykHCjfVIzJa4XoVZPxE;->f$1:Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XMiniProgService$zKf_6q89ykHCjfVIzJa4XoVZPxE;->f$2:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XMiniProgService$zKf_6q89ykHCjfVIzJa4XoVZPxE;->f$3:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XMiniProgService$zKf_6q89ykHCjfVIzJa4XoVZPxE;->f$0:Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XMiniProgService$zKf_6q89ykHCjfVIzJa4XoVZPxE;->f$1:Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;

    iget-object v2, p0, Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XMiniProgService$zKf_6q89ykHCjfVIzJa4XoVZPxE;->f$2:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/-$$Lambda$XMiniProgService$zKf_6q89ykHCjfVIzJa4XoVZPxE;->f$3:Ljava/util/Map;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;->lambda$requestMiniAppConfig$0(Lcom/xiaopeng/xuiservice/xapp/XMiniProgService;Lcom/xiaopeng/xuimanager/xapp/MiniProgramResponse;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method
