.class final Lcom/android/car/ui/core/CarUiInstaller$1;
.super Ljava/lang/Object;
.source "CarUiInstaller.java"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/car/ui/core/CarUiInstaller;->a(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field private a:Lcom/android/car/ui/baselayout/a;

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 1

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 110
    iput-object v0, p0, Lcom/android/car/ui/core/CarUiInstaller$1;->a:Lcom/android/car/ui/baselayout/a;

    const/4 v0, 0x0

    .line 111
    iput-boolean v0, p0, Lcom/android/car/ui/core/CarUiInstaller$1;->b:Z

    return-void
.end method

.method private a(Landroid/app/Activity;)Z
    .locals 1

    .line 114
    sget v0, Lcom/android/car/ui/e$a;->carUiActivity:I

    invoke-static {p1, v0}, Laiq;->a(Landroid/app/Activity;I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 6

    .line 119
    invoke-direct {p0, p1}, Lcom/android/car/ui/core/CarUiInstaller$1;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 124
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 123
    invoke-static {p1, v0}, Landroid/content/ComponentName;->createRelative(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarUiInstaller started for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CarUiInstaller"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-static {p1}, Lcom/android/car/ui/core/CarUiInstaller;->a(Landroid/content/Context;)V

    .line 130
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/car/ui/core/a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string p1, "build"

    .line 129
    invoke-static {v0, v1, p1, v2, v4}, Lcom/android/car/ui/core/CarUiInstaller;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    const-string p1, "CAR_UI_INSET_LEFT"

    .line 137
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "CAR_UI_INSET_TOP"

    .line 138
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const-string v1, "CAR_UI_INSET_RIGHT"

    .line 139
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "CAR_UI_INSET_BOTTOM"

    .line 140
    invoke-virtual {p2, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 141
    new-instance v2, Lcom/android/car/ui/baselayout/a;

    invoke-direct {v2, p1, v0, v1, p2}, Lcom/android/car/ui/baselayout/a;-><init>(IIII)V

    iput-object v2, p0, Lcom/android/car/ui/core/CarUiInstaller$1;->a:Lcom/android/car/ui/baselayout/a;

    .line 144
    :cond_1
    iput-boolean v3, p0, Lcom/android/car/ui/core/CarUiInstaller$1;->b:Z

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 5

    .line 234
    invoke-direct {p0, p1}, Lcom/android/car/ui/core/CarUiInstaller$1;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 239
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/car/ui/core/a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string p1, "destroy"

    .line 238
    invoke-static {v0, v1, p1, v2, v3}, Lcom/android/car/ui/core/CarUiInstaller;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPostStarted(Landroid/app/Activity;)V
    .locals 7

    .line 149
    invoke-direct {p0, p1}, Lcom/android/car/ui/core/CarUiInstaller$1;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 154
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/car/ui/core/a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    const-string v6, "getBaseLayoutController"

    .line 153
    invoke-static {v0, v1, v6, v2, v4}, Lcom/android/car/ui/core/CarUiInstaller;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 159
    iget-object v1, p0, Lcom/android/car/ui/core/CarUiInstaller$1;->a:Lcom/android/car/ui/baselayout/a;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/car/ui/core/CarUiInstaller$1;->b:Z

    if-eqz v1, :cond_1

    .line 162
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Lcom/android/car/ui/core/a;

    new-array v3, v3, [Ljava/lang/Object;

    .line 166
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    iget-object v4, p0, Lcom/android/car/ui/core/CarUiInstaller$1;->a:Lcom/android/car/ui/baselayout/a;

    invoke-static {p1, v4}, Lcom/android/car/ui/core/CarUiInstaller;->a(Ljava/lang/ClassLoader;Lcom/android/car/ui/baselayout/a;)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v3, v5

    const-string p1, "dispatchNewInsets"

    .line 161
    invoke-static {v1, v2, p1, v0, v3}, Lcom/android/car/ui/core/CarUiInstaller;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    iput-boolean v5, p0, Lcom/android/car/ui/core/CarUiInstaller$1;->b:Z

    :cond_1
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 6

    .line 189
    invoke-direct {p0, p1}, Lcom/android/car/ui/core/CarUiInstaller$1;->a(Landroid/app/Activity;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 194
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-class v1, Lcom/android/car/ui/core/a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string v5, "getBaseLayoutController"

    .line 193
    invoke-static {v0, v1, v5, v2, v3}, Lcom/android/car/ui/core/CarUiInstaller;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 201
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Lcom/android/car/ui/core/a;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v5, "getInsets"

    .line 200
    invoke-static {v1, v2, v5, v0, v3}, Lcom/android/car/ui/core/CarUiInstaller;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 207
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Lcom/android/car/ui/baselayout/a;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v5, "getLeft"

    .line 206
    invoke-static {v1, v2, v5, v0, v3}, Lcom/android/car/ui/core/CarUiInstaller;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "CAR_UI_INSET_LEFT"

    .line 205
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 213
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Lcom/android/car/ui/baselayout/a;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v5, "getTop"

    .line 212
    invoke-static {v1, v2, v5, v0, v3}, Lcom/android/car/ui/core/CarUiInstaller;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "CAR_UI_INSET_TOP"

    .line 211
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v2, Lcom/android/car/ui/baselayout/a;

    new-array v3, v4, [Ljava/lang/Object;

    const-string v5, "getRight"

    .line 218
    invoke-static {v1, v2, v5, v0, v3}, Lcom/android/car/ui/core/CarUiInstaller;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "CAR_UI_INSET_RIGHT"

    .line 217
    invoke-virtual {p2, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 225
    invoke-virtual {p1}, Landroid/app/Activity;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    const-class v1, Lcom/android/car/ui/baselayout/a;

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "getBottom"

    .line 224
    invoke-static {p1, v1, v3, v0, v2}, Lcom/android/car/ui/core/CarUiInstaller;->a(Ljava/lang/ClassLoader;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const-string v0, "CAR_UI_INSET_BOTTOM"

    .line 223
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
