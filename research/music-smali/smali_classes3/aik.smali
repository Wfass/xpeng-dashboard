.class public final Laik;
.super Ljava/lang/Object;
.source "PluginFactorySingleton.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "LogConditional"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laik$a;
    }
.end annotation


# static fields
.field private static a:Laij;

.field private static b:Laik$a;

.field private static c:Landroid/content/Context;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    sget-object v0, Laik$a;->NOT_SET:Laik$a;

    sput-object v0, Laik;->b:Laik$a;

    const/4 v0, 0x0

    .line 75
    sput-object v0, Laik;->c:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Laig;
    .locals 5

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 248
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 249
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    :cond_0
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x10000000

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 252
    invoke-static {}, Laik;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 253
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "!/lib/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 257
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    .line 258
    invoke-static {v1, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 260
    :goto_1
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 261
    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 266
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->pathSeparator:Ljava/lang/String;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->sharedLibraryFiles:[Ljava/lang/String;

    .line 267
    invoke-static {v1, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 271
    :cond_3
    new-instance p0, Laig;

    invoke-direct {p0, v1, v0, p1, p2}, Laig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)V

    return-object p0
.end method

.method public static a(Landroid/content/Context;)Laij;
    .locals 1

    :try_start_0
    const-string v0, "car-ui-plugin-load"

    .line 86
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 87
    invoke-static {p0}, Laik;->d(Landroid/content/Context;)Laij;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 90
    throw p0
.end method

.method private static a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 275
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    invoke-static {}, Landroid/os/Process;->is64Bit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    goto :goto_0

    .line 279
    :cond_0
    sget-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v0, v1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    :goto_0
    return-object v0
.end method

.method private static synthetic a(Landroid/content/pm/PackageInfo;Laim;)Z
    .locals 0

    .line 157
    invoke-virtual {p1, p0}, Laim;->a(Landroid/content/pm/PackageInfo;)Z

    move-result p0

    return p0
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 289
    sget v0, Lcom/android/car/ui/e$h;->car_ui_plugin_package_provider_authority_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v1, 0x20200

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 296
    :cond_0
    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Z
    .locals 5

    .line 303
    sget v0, Lcom/android/car/ui/e$h;->car_ui_plugin_package_provider_authority_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const v1, 0x20200

    .line 306
    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 312
    :cond_0
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v4, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getComponentEnabledSetting(Landroid/content/ComponentName;)I

    move-result p0

    if-nez p0, :cond_1

    .line 316
    iget-boolean p0, v0, Landroid/content/pm/ProviderInfo;->enabled:Z

    return p0

    :cond_1
    const/4 v0, 0x1

    if-ne p0, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0
.end method

.method private static d(Landroid/content/Context;)Laij;
    .locals 14

    const-string v0, "Could not load CarUi plugin"

    const-string v1, " was not found."

    const-string v2, "Could not load CarUi plugin, package "

    const-string v3, "getPluginFactory"

    const-string v4, "aih"

    const-string v5, "carui"

    .line 94
    sget-object v6, Laik;->a:Laij;

    if-eqz v6, :cond_0

    return-object v6

    .line 98
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    .line 101
    sget-object v6, Laik$1;->a:[I

    sget-object v7, Laik;->b:Laik$a;

    invoke-virtual {v7}, Laik$a;->ordinal()I

    move-result v7

    aget v6, v6, v7

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eq v6, v9, :cond_2

    if-eq v6, v7, :cond_1

    .line 110
    invoke-static {p0}, Laik;->c(Landroid/content/Context;)Z

    move-result v6

    goto :goto_0

    :cond_1
    move v6, v8

    goto :goto_0

    :cond_2
    move v6, v9

    :goto_0
    if-nez v6, :cond_3

    .line 115
    new-instance p0, Lail;

    invoke-direct {p0}, Lail;-><init>()V

    sput-object p0, Laik;->a:Laij;

    .line 116
    sget-object p0, Laik;->a:Laij;

    return-object p0

    :cond_3
    const/4 v6, 0x0

    .line 123
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 124
    new-array v11, v7, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    aput-object v12, v11, v8

    const-class v12, Ljava/lang/String;

    aput-object v12, v11, v9

    invoke-virtual {v10, v3, v11}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 126
    invoke-virtual {v10, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 127
    new-array v11, v7, [Ljava/lang/Object;

    aput-object p0, v11, v8

    .line 128
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v11, v9

    invoke-virtual {v10, v6, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Laij;

    sput-object v10, Laik;->a:Laij;

    .line 129
    sget-object p0, Laik;->a:Laij;
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 134
    :catch_0
    invoke-static {p0}, Laik;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v10

    .line 136
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 137
    new-instance p0, Lail;

    invoke-direct {p0}, Lail;-><init>()V

    sput-object p0, Laik;->a:Laij;

    .line 138
    sget-object p0, Laik;->a:Laij;

    return-object p0

    .line 143
    :cond_4
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 144
    invoke-virtual {v11, v10, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v11
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    .line 152
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    .line 153
    instance-of v13, v12, Laii;

    if-eqz v13, :cond_5

    .line 154
    check-cast v12, Laii;

    .line 155
    invoke-interface {v12}, Laii;->a()Ljava/util/Set;

    move-result-object v12

    if-eqz v12, :cond_5

    .line 156
    invoke-interface {v12}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v12

    new-instance v13, L-$$Lambda$aik$Jy_2alWKNUXjetGFT13FKmQZyFI;

    invoke-direct {v13, v11}, L-$$Lambda$aik$Jy_2alWKNUXjetGFT13FKmQZyFI;-><init>(Landroid/content/pm/PackageInfo;)V

    .line 157
    invoke-interface {v12, v13}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " denied loading plugin "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    new-instance p0, Lail;

    invoke-direct {p0}, Lail;-><init>()V

    sput-object p0, Laik;->a:Laij;

    .line 161
    sget-object p0, Laik;->a:Laij;

    return-object p0

    :cond_5
    const/4 v12, 0x3

    .line 167
    :try_start_2
    invoke-virtual {p0, v10, v12}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    .line 178
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    const-class v12, Laik;

    .line 179
    invoke-virtual {v12}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v12

    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/ClassLoader;

    .line 180
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v13

    .line 178
    invoke-static {v2, v12, v13}, Laik;->a(Landroid/content/pm/ApplicationInfo;Ljava/lang/ClassLoader;Ljava/lang/ClassLoader;)Laig;

    move-result-object v2

    .line 184
    :try_start_3
    invoke-virtual {v2, v4}, Laig;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 185
    new-array v4, v7, [Ljava/lang/Class;

    const-class v12, Landroid/content/Context;

    aput-object v12, v4, v8

    const-class v12, Ljava/lang/String;

    aput-object v12, v4, v9

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 187
    invoke-virtual {v2, v9}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 188
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v8

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-virtual {v2, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Laij;

    sput-object v2, Laik;->a:Laij;
    :try_end_3
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_3 .. :try_end_3} :catch_1

    .line 196
    sget-object v2, Laik;->a:Laij;

    if-nez v2, :cond_6

    .line 197
    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    new-instance p0, Lail;

    invoke-direct {p0}, Lail;-><init>()V

    sput-object p0, Laik;->a:Laij;

    .line 199
    sget-object p0, Laik;->a:Laij;

    return-object p0

    .line 202
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Loaded plugin "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " version "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 203
    invoke-virtual {v11}, Landroid/content/pm/PackageInfo;->getLongVersionCode()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " for package "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 202
    invoke-static {v5, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object p0, Laik;->b:Laik$a;

    sget-object v0, Laik$a;->NOT_SET:Laik$a;

    if-eq p0, v0, :cond_7

    .line 207
    sput-object v1, Laik;->c:Landroid/content/Context;

    .line 210
    :cond_7
    sget-object p0, Laik;->a:Laij;

    return-object p0

    :catch_1
    move-exception p0

    .line 191
    invoke-static {v5, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 192
    new-instance p0, Lail;

    invoke-direct {p0}, Lail;-><init>()V

    sput-object p0, Laik;->a:Laij;

    .line 193
    sget-object p0, Laik;->a:Laij;

    return-object p0

    .line 171
    :catch_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance p0, Lail;

    invoke-direct {p0}, Lail;-><init>()V

    sput-object p0, Laik;->a:Laij;

    .line 174
    sget-object p0, Laik;->a:Laij;

    return-object p0

    .line 146
    :catch_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    new-instance p0, Lail;

    invoke-direct {p0}, Lail;-><init>()V

    sput-object p0, Laik;->a:Laij;

    .line 149
    sget-object p0, Laik;->a:Laij;

    return-object p0
.end method

.method public static synthetic lambda$Jy_2alWKNUXjetGFT13FKmQZyFI(Landroid/content/pm/PackageInfo;Laim;)Z
    .locals 0

    invoke-static {p0, p1}, Laik;->a(Landroid/content/pm/PackageInfo;Laim;)Z

    move-result p0

    return p0
.end method
