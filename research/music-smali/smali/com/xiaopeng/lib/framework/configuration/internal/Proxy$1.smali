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
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$1;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;->access$300(Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAppVersionCode()I
    .locals 3

    .line 85
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$1;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;->access$300(Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 88
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 89
    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 91
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    return v1
.end method

.method public getAppVersionName()Ljava/lang/String;
    .locals 3

    .line 99
    iget-object v0, p0, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy$1;->this$0:Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;

    invoke-static {v0}, Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;->access$300(Lcom/xiaopeng/lib/framework/configuration/internal/Proxy;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Application;

    if-eqz v0, :cond_0

    .line 102
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/app/Application;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 103
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 105
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    :cond_0
    const/4 v0, 0x0

    return-object v0
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
