.class Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$1;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$ContextProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;

    .line 68
    iput-object p1, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$1;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAppID()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$1;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;->access$200(Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAppPackageName()Ljava/lang/String;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$1;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;->access$300(Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 77
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 80
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getAppVersionCode()I
    .locals 4

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$1;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;->access$300(Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 86
    .local v0, "application":Landroid/app/Application;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 89
    .local v2, "info":Landroid/content/pm/PackageInfo;
    iget v3, v2, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v3

    .line 90
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v2

    .line 91
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 94
    .end local v2    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    return v1
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$1;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;->access$300(Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    .line 100
    .local v0, "application":Landroid/app/Application;
    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 103
    .local v1, "info":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 104
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v1

    .line 105
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 108
    .end local v1    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .line 113
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$1;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;->access$300(Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    return-object v0
.end method
