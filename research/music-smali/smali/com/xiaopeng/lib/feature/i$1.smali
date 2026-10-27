.class Lcom/xiaopeng/lib/feature/i$1;
.super Landroid/content/BroadcastReceiver;
.source "XpFeatureImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/feature/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/lib/feature/i;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/feature/i;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/lib/feature/i$1;->a:Lcom/xiaopeng/lib/feature/i;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "android.intent.extra.IG_STATE"

    const/4 v0, 0x0

    .line 63
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    .line 66
    sget-object p2, Lcom/xiaopeng/lib/feature/i;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: restore update config.json MCU_IG_DATA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " version:"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/xiaopeng/lib/feature/i$1;->a:Lcom/xiaopeng/lib/feature/i;

    invoke-static {p1}, Lcom/xiaopeng/lib/feature/i;->a(Lcom/xiaopeng/lib/feature/i;)Ljava/util/Map;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    iget-object p1, p0, Lcom/xiaopeng/lib/feature/i$1;->a:Lcom/xiaopeng/lib/feature/i;

    const-string p2, "/mnt/vendor/persist/etc/xpfeature/config.json"

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/feature/i;->a(Lcom/xiaopeng/lib/feature/i;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
