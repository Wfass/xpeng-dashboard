.class public Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Utils"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmap2Base64(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x0

    const-string v1, "bitmap2Base64. f e:"

    if-eqz p0, :cond_2

    .line 187
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 188
    :try_start_1
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {p0, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 190
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 191
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 193
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    const/4 v3, 0x0

    .line 194
    invoke-static {p0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object p0, v0

    move-object v0, v2

    goto :goto_4

    :catch_0
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    move-object v2, v0

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v2, v0

    .line 197
    :goto_0
    :try_start_2
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 198
    sget-object v3, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bitmap2Base64. e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v2, :cond_0

    .line 202
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 203
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception p0

    .line 206
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 207
    sget-object v2, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_1
    move-object p0, v0

    goto :goto_5

    :catchall_1
    move-exception p0

    :goto_2
    if-eqz v2, :cond_1

    .line 202
    :try_start_4
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 203
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_3

    :catch_3
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 207
    sget-object v2, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    :cond_1
    :goto_3
    throw p0

    :cond_2
    move-object p0, v0

    :goto_4
    if-eqz v0, :cond_3

    .line 202
    :try_start_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 203
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_5

    :catch_4
    move-exception v0

    .line 206
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 207
    sget-object v2, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_5
    return-object p0
.end method

.method public static getBooleanByReflection(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 0

    .line 48
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p2, 0x1

    .line 49
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 50
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 53
    :goto_0
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    const/4 p0, 0x0

    return p0
.end method

.method public static getEOLangValue(Landroid/content/Context;Landroid/view/View;)Ljava/lang/String;
    .locals 3

    .line 101
    instance-of v0, p1, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 102
    sget-object p0, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    const-string p1, "getEOLangValue. Not TextView"

    invoke-static {p0, p1}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 105
    :cond_0
    const-class v0, Landroid/widget/TextView;

    const-string v2, "mTextSetFromXmlOrResourceId"

    invoke-static {v0, p1, v2}, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->getBooleanByReflection(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    sget-object p0, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    const-string p1, "getEOLangValue. Not from resId"

    invoke-static {p0, p1}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 109
    :cond_1
    const-class v0, Landroid/widget/TextView;

    const-string v2, "mTextId"

    invoke-static {v0, p1, v2}, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->getIntByReflection(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)I

    move-result p1

    if-gtz p1, :cond_2

    .line 111
    sget-object p0, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEOLangValue. Invalid resId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 114
    :cond_2
    invoke-static {p0, p1}, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->getStringOfEOLang(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getIntByReflection(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 0

    .line 36
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    const/4 p2, 0x1

    .line 37
    invoke-virtual {p0, p2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 38
    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 41
    :goto_0
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    const/4 p0, -0x1

    return p0
.end method

.method public static getScreenShotBase64()Ljava/lang/String;
    .locals 3

    .line 139
    invoke-static {}, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->getScreenShotBitmapByADB()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    .line 141
    sget-object v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    const-string v1, "getScreenShotBase64. No bitmap"

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 144
    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->bitmap2Base64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v0

    .line 145
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 146
    sget-object v1, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    const-string v2, "getScreenShotBase64. No str"

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_1
    invoke-static {v0}, Lcom/xiaopeng/xui/lang/infrastucture/utils/FileUtils;->saveString2SDCard(Ljava/lang/String;)V

    return-object v0
.end method

.method public static getScreenShotBitmapByADB()Landroid/graphics/Bitmap;
    .locals 7

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "screencap -d 0 -p /sdcard/screen.png"

    .line 159
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 160
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    invoke-virtual {v2}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 161
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 164
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    .line 168
    :goto_1
    sget-object v3, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getScreenShotBitmapByADB. e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    const-string v2, "/sdcard/screen.png"

    .line 171
    invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_1

    .line 173
    sget-object v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    const-string v1, "getScreenShotBitmapByADB. No bitmap"

    invoke-static {v0, v1}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 176
    :cond_1
    sget-object v3, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getScreenShotBitmapByADB. Delta time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    invoke-static {v3, v0}, Lcom/xiaopeng/xui/lang/infrastucture/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method

.method public static getStatusBarHeight(Landroid/view/View;)I
    .locals 1

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 134
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 135
    iget p0, v0, Landroid/graphics/Rect;->top:I

    return p0
.end method

.method public static getStringByLanguage(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 66
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 68
    new-instance v1, Landroid/content/res/Configuration;

    invoke-direct {v1, p2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 69
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 72
    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p0

    .line 75
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getStringByLanguageV2(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 83
    new-instance v1, Ljava/util/Locale;

    invoke-direct {v1, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 84
    new-instance p2, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {p2, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 85
    iput-object v1, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 86
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-virtual {p0, p2, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 87
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 89
    iput-object v0, p2, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 90
    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    return-object p1
.end method

.method public static getStringOfEOLang(Landroid/content/Context;I)Ljava/lang/String;
    .locals 1

    const-string v0, "eo"

    .line 97
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->getStringByLanguageV2(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static isDebuggable(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    .line 217
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const/16 v2, 0x40

    .line 217
    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 219
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 220
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    const-string v4, "SHA"

    .line 221
    invoke-static {v4}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 222
    invoke-virtual {v3}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/security/MessageDigest;->update([B)V

    .line 223
    invoke-virtual {v4}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v3

    invoke-static {v3, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DEBUG"

    .line 225
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    move v0, p0

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    .line 231
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_2
    return v0
.end method


# virtual methods
.method public valid2Splicing(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "\\d+"

    .line 121
    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 125
    :cond_1
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    :goto_0
    return v1
.end method
