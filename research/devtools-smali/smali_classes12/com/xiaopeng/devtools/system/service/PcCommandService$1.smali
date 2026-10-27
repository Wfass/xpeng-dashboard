.class Lcom/xiaopeng/devtools/system/service/PcCommandService$1;
.super Landroid/net/ConnectivityManager$OnStartTetheringCallback;
.source "PcCommandService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/system/service/PcCommandService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/system/service/PcCommandService;)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$1;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTetheringFailed()V
    .locals 2

    .line 60
    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringFailed()V

    .line 61
    const-string v0, "PcCommandService"

    const-string v1, "onTetheringStarted"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$1;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->stopSelf()V

    .line 63
    return-void
.end method

.method public onTetheringStarted()V
    .locals 4

    .line 50
    invoke-super {p0}, Landroid/net/ConnectivityManager$OnStartTetheringCallback;->onTetheringStarted()V

    .line 51
    const-string v0, "PcCommandService"

    const-string v1, "onTetheringStarted"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$1;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->a(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$1;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->b(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/system/service/PcCommandService$a;

    move-result-object v0

    if-nez v0, :cond_0

    .line 53
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$1;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    new-instance v1, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$1;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {}, Lcom/xiaopeng/devtools/MyApplication;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;-><init>(Lcom/xiaopeng/devtools/system/service/PcCommandService;Landroid/content/Context;)V

    invoke-static {v0, v1}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->a(Lcom/xiaopeng/devtools/system/service/PcCommandService;Lcom/xiaopeng/devtools/system/service/PcCommandService$a;)Lcom/xiaopeng/devtools/system/service/PcCommandService$a;

    .line 54
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$1;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->b(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/system/service/PcCommandService$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->start()V

    .line 56
    :cond_0
    return-void
.end method
