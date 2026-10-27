.class public Lcom/amap/api/services/a/av;
.super Ljava/lang/Object;
.source "AppInfo.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:Ljava/lang/String;

.field private static c:Ljava/lang/String;

.field private static d:Ljava/lang/String;

.field private static e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 19
    const-string v0, ""

    sput-object v0, Lcom/amap/api/services/a/av;->a:Ljava/lang/String;

    .line 20
    const-string v0, ""

    sput-object v0, Lcom/amap/api/services/a/av;->b:Ljava/lang/String;

    .line 21
    const-string v0, ""

    sput-object v0, Lcom/amap/api/services/a/av;->c:Ljava/lang/String;

    .line 22
    const-string v0, ""

    sput-object v0, Lcom/amap/api/services/a/av;->d:Ljava/lang/String;

    .line 23
    const/4 v0, 0x0

    sput-object v0, Lcom/amap/api/services/a/av;->e:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 32
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/av;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 33
    :catch_0
    move-exception p0

    .line 34
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    sget-object p0, Lcom/amap/api/services/a/av;->d:Ljava/lang/String;

    return-object p0
.end method

.method static a(Ljava/lang/String;)V
    .locals 0

    .line 165
    sput-object p0, Lcom/amap/api/services/a/av;->d:Ljava/lang/String;

    .line 166
    return-void
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 46
    nop

    .line 47
    nop

    .line 49
    :try_start_0
    const-string v0, ""

    sget-object v1, Lcom/amap/api/services/a/av;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 50
    sget-object p0, Lcom/amap/api/services/a/av;->a:Ljava/lang/String;

    return-object p0

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 53
    nop

    .line 54
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    .line 53
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 55
    nop

    .line 56
    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    sput-object p0, Lcom/amap/api/services/a/av;->a:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    goto :goto_0

    .line 57
    :catch_0
    move-exception p0

    .line 58
    const-string v0, "AppInfo"

    const-string v1, "getApplicationName"

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :goto_0
    sget-object p0, Lcom/amap/api/services/a/av;->a:Ljava/lang/String;

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 89
    :try_start_0
    sget-object v0, Lcom/amap/api/services/a/av;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/amap/api/services/a/av;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 90
    sget-object p0, Lcom/amap/api/services/a/av;->b:Ljava/lang/String;

    return-object p0

    .line 92
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/services/a/av;->b:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    goto :goto_0

    .line 94
    :catch_0
    move-exception p0

    .line 96
    const-string v0, "AppInfo"

    const-string v1, "getPackageName"

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    :goto_0
    sget-object p0, Lcom/amap/api/services/a/av;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 110
    nop

    .line 113
    :try_start_0
    const-string v0, ""

    sget-object v1, Lcom/amap/api/services/a/av;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    sget-object p0, Lcom/amap/api/services/a/av;->c:Ljava/lang/String;

    return-object p0

    .line 116
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 117
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 119
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    sput-object p0, Lcom/amap/api/services/a/av;->c:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 124
    goto :goto_0

    .line 120
    :catch_0
    move-exception p0

    .line 122
    const-string v0, "AppInfo"

    const-string v1, "getApplicationVersion"

    .line 123
    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    :goto_0
    sget-object p0, Lcom/amap/api/services/a/av;->c:Ljava/lang/String;

    if-nez p0, :cond_1

    const-string p0, ""

    goto :goto_1

    :cond_1
    sget-object p0, Lcom/amap/api/services/a/av;->c:Ljava/lang/String;

    :goto_1
    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .line 135
    :try_start_0
    sget-object v0, Lcom/amap/api/services/a/av;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, ""

    sget-object v1, Lcom/amap/api/services/a/av;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 136
    sget-object p0, Lcom/amap/api/services/a/av;->e:Ljava/lang/String;

    return-object p0

    .line 138
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 139
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x40

    .line 138
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 141
    iget-object v0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v0

    .line 142
    const-string v2, "SHA1"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 143
    invoke-virtual {v2, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 144
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 145
    :goto_0
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 146
    const/16 v3, 0xff

    aget-byte v4, v0, v1

    and-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    .line 148
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    .line 149
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 150
    :cond_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 151
    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 145
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 153
    :cond_2
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 154
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/services/a/av;->e:Ljava/lang/String;

    .line 155
    sget-object p0, Lcom/amap/api/services/a/av;->e:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 156
    :catch_0
    move-exception p0

    .line 158
    const-string v0, "AppInfo"

    const-string v1, "getSHA1AndPackage"

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 160
    sget-object p0, Lcom/amap/api/services/a/av;->e:Ljava/lang/String;

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 176
    :try_start_0
    invoke-static {p0}, Lcom/amap/api/services/a/av;->g(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 177
    :catch_0
    move-exception p0

    .line 178
    const-string v0, "AppInfo"

    const-string v1, "getKey"

    invoke-static {p0, v0, v1}, Lcom/amap/api/services/a/bg;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    sget-object p0, Lcom/amap/api/services/a/av;->d:Ljava/lang/String;

    return-object p0
.end method

.method private static g(Landroid/content/Context;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 187
    sget-object v0, Lcom/amap/api/services/a/av;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/amap/api/services/a/av;->d:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 188
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 189
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    .line 191
    if-eqz p0, :cond_3

    iget-object v0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-nez v0, :cond_1

    goto :goto_0

    .line 194
    :cond_1
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v0, "com.amap.api.v2.apikey"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/amap/api/services/a/av;->d:Ljava/lang/String;

    .line 195
    sget-object p0, Lcom/amap/api/services/a/av;->d:Ljava/lang/String;

    if-nez p0, :cond_2

    .line 196
    const-string p0, ""

    sput-object p0, Lcom/amap/api/services/a/av;->d:Ljava/lang/String;

    .line 199
    :cond_2
    sget-object p0, Lcom/amap/api/services/a/av;->d:Ljava/lang/String;

    return-object p0

    .line 192
    :cond_3
    :goto_0
    sget-object p0, Lcom/amap/api/services/a/av;->d:Ljava/lang/String;

    return-object p0
.end method
