.class Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider$2;
.super Landroid/database/ContentObserver;
.source "AppStoreStatusProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;
    .param p2, "x0"    # Landroid/os/Handler;

    .line 166
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 169
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 170
    invoke-static {}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->access$100()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider$2;->this$0:Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityThread;->getApplication()Landroid/app/Application;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;->access$000(Lcom/xiaopeng/xuiservice/xapp/store/AppStoreStatusProvider;Landroid/content/Context;)V

    .line 173
    :cond_0
    return-void
.end method
