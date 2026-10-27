.class Lcom/xiaopeng/xuiservice/XUIServiceApplication$2;
.super Ljava/lang/Object;
.source "XUIServiceApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/XUIServiceApplication;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    .line 138
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$2;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 141
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/XUIServiceApplication$2;->this$0:Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    invoke-static {v0}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$300(Lcom/xiaopeng/xuiservice/XUIServiceApplication;)V

    .line 144
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$400()Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$400()Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/xuiservice/iot/IoTService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 146
    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$400()Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-static {}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->access$400()Lcom/xiaopeng/xuiservice/XUIServiceApplication;

    move-result-object v2

    const-class v3, Lcom/xiaopeng/xuiservice/opensdk/OpenCarService;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xuiservice/XUIServiceApplication;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 147
    return-void
.end method
