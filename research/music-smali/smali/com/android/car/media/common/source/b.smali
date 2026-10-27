.class public Lcom/android/car/media/common/source/b;
.super Ljava/lang/Object;
.source "MediaSource.java"


# instance fields
.field private final a:Landroid/content/ComponentName;

.field private final b:Ljava/lang/CharSequence;

.field private final c:Landroid/graphics/drawable/Drawable;

.field private final d:Lcom/android/car/apps/common/g;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/car/apps/common/g;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/android/car/media/common/source/b;->a:Landroid/content/ComponentName;

    .line 92
    iput-object p2, p0, Lcom/android/car/media/common/source/b;->b:Ljava/lang/CharSequence;

    .line 93
    iput-object p3, p0, Lcom/android/car/media/common/source/b;->c:Landroid/graphics/drawable/Drawable;

    .line 94
    iput-object p4, p0, Lcom/android/car/media/common/source/b;->d:Lcom/android/car/apps/common/g;

    return-void
.end method

.method public static a(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 3

    if-eqz p1, :cond_0

    .line 226
    sget p1, Lcom/android/car/media/common/f$i;->launcher_popup_intent:I

    goto :goto_0

    :cond_0
    sget p1, Lcom/android/car/media/common/f$i;->launcher_intent:I

    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 229
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    invoke-static {p0, p1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 232
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Wrong app-launcher intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method public static a(Landroid/content/Context;Landroid/content/ComponentName;)Lcom/android/car/media/common/source/b;
    .locals 7

    .line 67
    invoke-static {p0, p1}, Lcom/android/car/media/common/source/b;->b(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 69
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v2, v1

    .line 70
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    const-string v4, "MediaSource"

    if-eqz v3, :cond_1

    .line 71
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No MediaBrowserService found in component "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 71
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 77
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 78
    invoke-static {p0, v0, v3}, Lcom/android/car/media/common/source/b;->a(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v5

    .line 79
    invoke-static {p0, v0, v3}, Lcom/android/car/media/common/source/b;->b(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 80
    new-instance v6, Landroid/content/ComponentName;

    invoke-direct {v6, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    new-instance v2, Lcom/android/car/media/common/source/b;

    new-instance v3, Lcom/android/car/apps/common/g;

    invoke-direct {v3, p0}, Lcom/android/car/apps/common/g;-><init>(Landroid/content/Context;)V

    invoke-direct {v2, v6, v5, v0, v3}, Lcom/android/car/media/common/source/b;-><init>(Landroid/content/ComponentName;Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Lcom/android/car/apps/common/g;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 83
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Component not found "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1
.end method

.method private static a(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p1, :cond_0

    .line 136
    iget v0, p1, Landroid/content/pm/ServiceInfo;->labelRes:I

    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ServiceInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/16 v0, 0x80

    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 142
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private static b(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 3

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 107
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.media.browse.MediaBrowserService"

    .line 108
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/16 v1, 0x40

    .line 110
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 112
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 116
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x0

    .line 117
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    return-object p0

    .line 119
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 120
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 121
    iget-object v2, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static b(Landroid/content/Context;Landroid/content/pm/ServiceInfo;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-eqz p1, :cond_0

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/pm/ServiceInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 153
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 155
    :goto_0
    invoke-static {p0, p1}, Lcom/android/car/apps/common/a;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a()Ljava/lang/CharSequence;
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/car/media/common/source/b;->b:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public b()Landroid/content/ComponentName;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/car/media/common/source/b;->a:Landroid/content/ComponentName;

    return-object v0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 2

    .line 195
    iget-object v0, p0, Lcom/android/car/media/common/source/b;->d:Lcom/android/car/apps/common/g;

    iget-object v1, p0, Lcom/android/car/media/common/source/b;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/android/car/apps/common/g;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-eqz p1, :cond_2

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 202
    :cond_1
    check-cast p1, Lcom/android/car/media/common/source/b;

    .line 203
    iget-object v0, p0, Lcom/android/car/media/common/source/b;->a:Landroid/content/ComponentName;

    iget-object p1, p1, Lcom/android/car/media/common/source/b;->a:Landroid/content/ComponentName;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public hashCode()I
    .locals 3

    const/4 v0, 0x1

    .line 208
    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/car/media/common/source/b;->a:Landroid/content/ComponentName;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/android/car/media/common/source/b;->a:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
