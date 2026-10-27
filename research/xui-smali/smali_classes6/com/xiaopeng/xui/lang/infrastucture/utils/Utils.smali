.class public Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 32
    const-class v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static bitmap2Base64(Landroid/graphics/Bitmap;)Ljava/lang/String;
    .locals 7
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .line 183
    const/4 v0, 0x0

    .line 184
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .line 186
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    if-eqz p0, :cond_2

    .line 187
    :try_start_0
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    move-object v1, v2

    .line 188
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 190
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 191
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 193
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 194
    .local v2, "bitmapBytes":[B
    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    .end local v2    # "bitmapBytes":[B
    goto :goto_5

    .line 200
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 196
    :catch_0
    move-exception v2

    .line 197
    .local v2, "e":Ljava/io/IOException;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 198
    sget-object v3, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "bitmap2Base64. e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 202
    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 203
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 205
    :catch_1
    move-exception v2

    .line 206
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 207
    sget-object v3, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    const-string v5, "bitmap2Base64. f e:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_6

    .line 208
    :cond_0
    :goto_1
    goto :goto_6

    .line 200
    :goto_2
    nop

    .line 201
    if-eqz v1, :cond_1

    .line 202
    :try_start_3
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 203
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 205
    :catch_2
    move-exception v3

    .line 206
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 207
    sget-object v4, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "bitmap2Base64. f e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 208
    :cond_1
    :goto_3
    nop

    .line 209
    :goto_4
    throw v2

    .line 201
    :cond_2
    :goto_5
    if-eqz v1, :cond_0

    .line 202
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 203
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    .line 205
    :catch_3
    move-exception v2

    .line 206
    .restart local v2    # "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    .line 207
    sget-object v3, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_0

    .line 210
    .end local v2    # "e":Ljava/io/IOException;
    :goto_6
    return-object v0
.end method

.method public static getBooleanByReflection(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;

    .line 48
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 49
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    .local v1, "textId":Z
    return v1

    .line 52
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "textId":Z
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 54
    const/4 v1, 0x0

    return v1
.end method

.method public static getEOLangValue(Landroid/content/Context;Landroid/view/View;)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .line 101
    instance-of v0, p1, Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 102
    sget-object v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    const-string v2, "getEOLangValue. Not TextView"

    invoke-static {v0, v2}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    return-object v1

    .line 105
    :cond_0
    const-class v0, Landroid/widget/TextView;

    const-string v2, "mTextSetFromXmlOrResourceId"

    invoke-static {v0, p1, v2}, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->getBooleanByReflection(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 106
    sget-object v0, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    const-string v2, "getEOLangValue. Not from resId"

    invoke-static {v0, v2}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    return-object v1

    .line 109
    :cond_1
    const-class v0, Landroid/widget/TextView;

    const-string v2, "mTextId"

    invoke-static {v0, p1, v2}, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->getIntByReflection(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)I

    move-result v0

    .line 110
    .local v0, "resId":I
    if-gtz v0, :cond_2

    .line 111
    sget-object v2, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEOLangValue. Invalid resId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    return-object v1

    .line 114
    :cond_2
    invoke-static {p0, v0}, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->getStringOfEOLang(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getIntByReflection(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)I
    .locals 2
    .param p0, "cls"    # Ljava/lang/Class;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "methodName"    # Ljava/lang/String;

    .line 36
    :try_start_0
    invoke-virtual {p0, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 37
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    .local v1, "textId":I
    return v1

    .line 40
    .end local v0    # "field":Ljava/lang/reflect/Field;
    .end local v1    # "textId":I
    :catch_0
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/ReflectiveOperationException;
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 42
    const/4 v1, -0x1

    return v1
.end method

.method public static getScreenShotBase64()Ljava/lang/String;
    .locals 4

    .line 139
    invoke-static {}, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->getScreenShotBitmapByADB()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 140
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_0

    .line 141
    sget-object v1, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    const-string v2, "getScreenShotBase64. No bitmap"

    invoke-static {v1, v2}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    const/4 v1, 0x0

    return-object v1

    .line 144
    :cond_0
    invoke-static {v0}, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->bitmap2Base64(Landroid/graphics/Bitmap;)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 146
    sget-object v2, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    const-string v3, "getScreenShotBase64. No str"

    invoke-static {v2, v3}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    :cond_1
    invoke-static {v1}, Lcom/xiaopeng/xui/lang/infrastucture/utils/FileUtils;->saveString2SDCard(Ljava/lang/String;)V

    .line 149
    return-object v1
.end method

.method public static getScreenShotBitmapByADB()Landroid/graphics/Bitmap;
    .locals 8

    .line 156
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 157
    .local v0, "time":J
    const-string v2, "screencap -d 0 -p /sdcard/screen.png"

    .line 159
    .local v2, "cmd":Ljava/lang/String;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v3

    .line 160
    .local v3, "process":Ljava/lang/Process;
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 161
    .local v4, "reader":Ljava/io/BufferedReader;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 163
    .local v5, "output":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    move-object v7, v6

    .local v7, "line":Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 164
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 166
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Process;->waitFor()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    .end local v3    # "process":Ljava/lang/Process;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .end local v5    # "output":Ljava/lang/StringBuilder;
    .end local v7    # "line":Ljava/lang/String;
    goto :goto_1

    .line 167
    :catch_0
    move-exception v3

    .line 168
    .local v3, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getScreenShotBitmapByADB. e:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 171
    .end local v3    # "e":Ljava/lang/Exception;
    :goto_1
    const-string v3, "/sdcard/screen.png"

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 172
    .local v3, "bitmap":Landroid/graphics/Bitmap;
    if-nez v3, :cond_1

    .line 173
    sget-object v4, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    const-string v5, "getScreenShotBitmapByADB. No bitmap"

    invoke-static {v4, v5}, Lcom/xiaopeng/xui/lang/infrastucture/L;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    const/4 v4, 0x0

    return-object v4

    .line 176
    :cond_1
    sget-object v4, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getScreenShotBitmapByADB. Delta time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 176
    invoke-static {v4, v5}, Lcom/xiaopeng/xui/lang/infrastucture/L;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    return-object v3
.end method

.method public static getStatusBarHeight(Landroid/view/View;)I
    .locals 2
    .param p0, "decorView"    # Landroid/view/View;

    .line 133
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 134
    .local v0, "rect":Landroid/graphics/Rect;
    invoke-virtual {p0, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 135
    iget v1, v0, Landroid/graphics/Rect;->top:I

    return v1
.end method

.method public static getStringByLanguage(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "languageCode"    # Ljava/lang/String;

    .line 66
    new-instance v0, Ljava/util/Locale;

    invoke-direct {v0, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 67
    .local v0, "frenchLocale":Ljava/util/Locale;
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    .line 68
    .local v1, "config":Landroid/content/res/Configuration;
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    move-object v1, v2

    .line 69
    invoke-virtual {v1, v0}, Landroid/content/res/Configuration;->setLocale(Ljava/util/Locale;)V

    .line 72
    invoke-virtual {p0, v1}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v2

    .line 75
    .local v2, "frenchContext":Landroid/content/Context;
    invoke-virtual {v2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "localizedString":Ljava/lang/String;
    return-object v3
.end method

.method public static getStringByLanguageV2(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I
    .param p2, "languageCode"    # Ljava/lang/String;

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 82
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 83
    .local v1, "originalLocale":Ljava/util/Locale;
    new-instance v2, Ljava/util/Locale;

    invoke-direct {v2, p2}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    .line 84
    .local v2, "localeEN":Ljava/util/Locale;
    new-instance v3, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 85
    .local v3, "config":Landroid/content/res/Configuration;
    iput-object v2, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 86
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 87
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, "stringInEO":Ljava/lang/String;
    iput-object v1, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 90
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 92
    return-object v4
.end method

.method public static getStringOfEOLang(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .line 96
    const-string v0, "eo"

    .line 97
    .local v0, "languageCode":Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lcom/xiaopeng/xui/lang/infrastucture/utils/Utils;->getStringByLanguageV2(Landroid/content/Context;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static isDebuggable(Landroid/content/Context;)Z
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .line 215
    const/4 v0, 0x0

    move v1, v0

    .line 217
    .local v1, "debuggable":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 218
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x40

    .line 217
    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 219
    .local v2, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v3, v2, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 220
    .local v3, "signatures":[Landroid/content/pm/Signature;
    array-length v4, v3

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 221
    .local v6, "signature":Landroid/content/pm/Signature;
    const-string v7, "SHA"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v7

    .line 222
    .local v7, "md":Ljava/security/MessageDigest;
    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/security/MessageDigest;->update([B)V

    .line 223
    invoke-virtual {v7}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-static {v8, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v8

    .line 225
    .local v8, "currentSignature":Ljava/lang/String;
    const-string v9, "DEBUG"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v9, :cond_0

    .line 226
    const/4 v1, 0x1

    .line 227
    goto :goto_1

    .line 220
    .end local v6    # "signature":Landroid/content/pm/Signature;
    .end local v7    # "md":Ljava/security/MessageDigest;
    .end local v8    # "currentSignature":Ljava/lang/String;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 232
    .end local v2    # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v3    # "signatures":[Landroid/content/pm/Signature;
    :cond_1
    :goto_1
    goto :goto_2

    .line 230
    :catch_0
    move-exception v0

    .line 231
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return v1
.end method


# virtual methods
.method public valid2Splicing(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p1, "originString"    # Ljava/lang/String;
    .param p2, "eoLang"    # Ljava/lang/String;

    .line 118
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 121
    :cond_0
    const-string v0, "\\d+"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    .line 122
    .local v0, "isNumeric":Z
    if-eqz v0, :cond_1

    .line 123
    return v1

    .line 125
    :cond_1
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 126
    return v1

    .line 128
    :cond_2
    const/4 v1, 0x1

    return v1

    .line 119
    .end local v0    # "isNumeric":Z
    :cond_3
    :goto_0
    return v1
.end method
