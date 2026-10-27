.class Lcom/xiaopeng/lib/feature/XpFeatureImpl$1;
.super Landroid/content/BroadcastReceiver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/feature/XpFeatureImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/feature/XpFeatureImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/feature/XpFeatureImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl$1;->this$0:Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string p1, "android.intent.extra.IG_STATE"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    sget-object p2, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: restore update config.json MCU_IG_DATA="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, " version:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl$1;->this$0:Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    invoke-static {v0}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->access$000(Lcom/xiaopeng/lib/feature/XpFeatureImpl;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/xiaopeng/lib/feature/XpFeatureImpl$1;->this$0:Lcom/xiaopeng/lib/feature/XpFeatureImpl;

    const-string p2, "/mnt/vendor/persist/etc/xpfeature/config.json"

    invoke-static {p1, p2}, Lcom/xiaopeng/lib/feature/XpFeatureImpl;->access$100(Lcom/xiaopeng/lib/feature/XpFeatureImpl;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
