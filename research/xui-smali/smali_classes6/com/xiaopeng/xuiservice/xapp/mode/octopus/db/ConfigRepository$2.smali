.class Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository$2;
.super Ljava/lang/Object;
.source "ConfigRepository.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;->saveConfig(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

.field final synthetic val$config:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    .line 48
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    iput-object p2, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository$2;->val$config:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao;

    move-result-object v0

    iget-object v1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/ConfigRepository$2;->val$config:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;

    invoke-interface {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfigDao;->insertConfig(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/db/KeyConfig;)V

    .line 52
    return-void
.end method
