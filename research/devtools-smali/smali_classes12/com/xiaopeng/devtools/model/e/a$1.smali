.class Lcom/xiaopeng/devtools/model/e/a$1;
.super Ljava/lang/Object;
.source "OtaModel.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/devtools/model/e/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic tT:Lcom/xiaopeng/devtools/model/e/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/devtools/model/e/a;)V
    .locals 0

    .line 32
    iput-object p1, p0, Lcom/xiaopeng/devtools/model/e/a$1;->tT:Lcom/xiaopeng/devtools/model/e/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    .line 43
    const-string p1, "OtaModel"

    const-string v0, "onServiceConnected"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/e/a$1;->tT:Lcom/xiaopeng/devtools/model/e/a;

    invoke-static {p2}, Lcom/xiaopeng/ota/IOTAService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/xiaopeng/ota/IOTAService;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/model/e/a;->a(Lcom/xiaopeng/devtools/model/e/a;Lcom/xiaopeng/ota/IOTAService;)Lcom/xiaopeng/ota/IOTAService;

    .line 45
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/e/a$1;->tT:Lcom/xiaopeng/devtools/model/e/a;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/xiaopeng/devtools/model/e/a;->a(Lcom/xiaopeng/devtools/model/e/a;Z)Z

    .line 46
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 36
    const-string p1, "OtaModel"

    const-string v0, "onServiceDisconnected"

    invoke-static {p1, v0}, Lcom/xiaopeng/lib/utils/c;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/e/a$1;->tT:Lcom/xiaopeng/devtools/model/e/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/model/e/a;->a(Lcom/xiaopeng/devtools/model/e/a;Lcom/xiaopeng/ota/IOTAService;)Lcom/xiaopeng/ota/IOTAService;

    .line 38
    iget-object p1, p0, Lcom/xiaopeng/devtools/model/e/a$1;->tT:Lcom/xiaopeng/devtools/model/e/a;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/xiaopeng/devtools/model/e/a;->a(Lcom/xiaopeng/devtools/model/e/a;Z)Z

    .line 39
    return-void
.end method
