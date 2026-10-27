.class Lasl$a;
.super Landroid/content/BroadcastReceiver;
.source "CodriverBluetoothModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lasl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Z

.field final synthetic b:Lasl;


# direct methods
.method private constructor <init>(Lasl;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lasl$a;->b:Lasl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 p1, 0x0

    .line 42
    iput-boolean p1, p0, Lasl$a;->a:Z

    return-void
.end method

.method synthetic constructor <init>(Lasl;Lasl$1;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lasl$a;-><init>(Lasl;)V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;)V
    .locals 2

    .line 45
    iget-boolean v0, p0, Lasl$a;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lasl$a;->a:Z

    .line 47
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "xiaopeng.bluetooth.action.CONNECTION_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CoBlueModel"

    invoke-static {v1, v0}, Lcom/xiaopeng/lib/utils/LogUtils;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "xiaopeng.bluetooth.action.CONNECTION_STATE_CHANGED"

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    const-string v0, "state"

    .line 56
    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 58
    iget-object p1, p0, Lasl$a;->b:Lasl;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lasl;->a(Lasl;Z)Z

    goto :goto_0

    .line 60
    :cond_0
    iget-object v0, p0, Lasl$a;->b:Lasl;

    invoke-static {v0, p1}, Lasl;->a(Lasl;Z)Z

    .line 62
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive state = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/xiaopeng/lib/utils/LogUtils;->i(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
