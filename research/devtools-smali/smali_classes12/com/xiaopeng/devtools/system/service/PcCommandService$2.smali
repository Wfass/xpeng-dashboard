.class Lcom/xiaopeng/devtools/system/service/PcCommandService$2;
.super Ljava/lang/Object;
.source "PcCommandService.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


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

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$2;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientsUpdated(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/WifiClient;",
            ">;)V"
        }
    .end annotation

    .line 80
    const-string v0, "PcCommandService"

    const-string v1, "onClientsUpdated"

    invoke-static {v0, v1}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$2;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->b(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/system/service/PcCommandService$a;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$2;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->c(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/a/b;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$2;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    .line 82
    invoke-static {v0}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->c(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaopeng/devtools/a/b;->hS()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 85
    :cond_0
    const/4 v0, 0x1

    .line 86
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiClient;

    .line 87
    const-string v2, "PcCommandService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "client : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Landroid/net/wifi/WifiClient;->mIpAddr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    iget-object v1, v1, Landroid/net/wifi/WifiClient;->mIpAddr:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$2;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {v2}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->c(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/a/b;

    move-result-object v2

    invoke-virtual {v2}, Lcom/xiaopeng/devtools/a/b;->hS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    const/4 v0, 0x0

    .line 90
    goto :goto_1

    .line 92
    :cond_1
    goto :goto_0

    .line 93
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    .line 94
    iget-object p1, p0, Lcom/xiaopeng/devtools/system/service/PcCommandService$2;->Bs:Lcom/xiaopeng/devtools/system/service/PcCommandService;

    invoke-static {p1}, Lcom/xiaopeng/devtools/system/service/PcCommandService;->b(Lcom/xiaopeng/devtools/system/service/PcCommandService;)Lcom/xiaopeng/devtools/system/service/PcCommandService$a;

    move-result-object p1

    invoke-static {p1}, Lcom/xiaopeng/devtools/system/service/PcCommandService$a;->a(Lcom/xiaopeng/devtools/system/service/PcCommandService$a;)V

    .line 96
    :cond_3
    return-void

    .line 83
    :cond_4
    :goto_2
    return-void
.end method

.method public onNumClientsChanged(I)V
    .locals 0

    .line 76
    return-void
.end method

.method public onStateChanged(II)V
    .locals 3

    .line 69
    const-string v0, "PcCommandService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStateChanged state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", failureReason : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/xiaopeng/lib/utils/c;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    return-void
.end method
