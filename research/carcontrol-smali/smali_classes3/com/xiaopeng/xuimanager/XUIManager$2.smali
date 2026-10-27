.class Lcom/xiaopeng/xuimanager/XUIManager$2;
.super Ljava/lang/Object;
.source "XUIManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuimanager/XUIManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuimanager/XUIManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuimanager/XUIManager;)V
    .locals 0

    .line 383
    iput-object p1, p0, Lcom/xiaopeng/xuimanager/XUIManager$2;->this$0:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 386
    iget-object v0, p0, Lcom/xiaopeng/xuimanager/XUIManager$2;->this$0:Lcom/xiaopeng/xuimanager/XUIManager;

    invoke-static {v0}, Lcom/xiaopeng/xuimanager/XUIManager;->access$700(Lcom/xiaopeng/xuimanager/XUIManager;)Landroid/content/ServiceConnection;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaopeng.xuiservice"

    const-string v3, "com.xiaopeng.xuiservice.XUIService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Landroid/content/ServiceConnection;->onServiceDisconnected(Landroid/content/ComponentName;)V

    return-void
.end method
