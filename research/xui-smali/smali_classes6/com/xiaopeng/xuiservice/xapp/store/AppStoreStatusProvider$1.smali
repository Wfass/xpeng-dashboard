.class Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider$1;
.super Ljava/lang/Object;
.source "AppStoreStatusProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;

    .line 67
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider$1;->this$0:Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->access$000(Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;Landroid/content/Context;)V

    .line 71
    return-void
.end method
