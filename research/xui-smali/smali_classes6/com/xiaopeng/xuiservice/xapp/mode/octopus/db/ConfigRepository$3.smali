.class Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository$3;
.super Ljava/lang/Object;
.source "ConfigRepository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;->getConfigs(Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigLoaderCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

.field final synthetic val$callback:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigLoaderCallback;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;Ljava/lang/String;Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigLoaderCallback;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    .line 57
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository$3;->val$pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository$3;->val$callback:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigLoaderCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository$3;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository$3;->val$pkgName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao;->findConfigsByPkg(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 61
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;>;"
    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository$3;->val$callback:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigLoaderCallback;

    invoke-interface {v1, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigLoaderCallback;->onConfigLoaded(Ljava/util/List;)V

    .line 62
    return-void
.end method
