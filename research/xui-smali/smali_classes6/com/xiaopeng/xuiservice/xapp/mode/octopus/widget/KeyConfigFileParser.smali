.class public Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;
.super Ljava/lang/Object;
.source "KeyConfigFileParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyConfigFileParser"

.field private static final XP_KEYMAPS_DIR:Ljava/lang/String; = "/data/xuiservice/keyMap/"

.field private static final XP_KEYMAPS_SUFFIX:Ljava/lang/String; = ".key"

.field private static volatile mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;


# instance fields
.field private mStringSparseArrayHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Point;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;->mStringSparseArrayHashMap:Ljava/util/HashMap;

    .line 29
    return-void
.end method

.method private addPointer(Lorg/json/JSONArray;ILandroid/graphics/Point;)V
    .locals 3
    .param p1, "jsonArray"    # Lorg/json/JSONArray;
    .param p2, "keycode"    # I
    .param p3, "point"    # Landroid/graphics/Point;

    .line 84
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 86
    .local v0, "keyJsonObject":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "keycode"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 87
    const-string v1, "pointX"

    iget v2, p3, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 88
    const-string v1, "pointY"

    iget v2, p3, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_0

    .line 90
    :catch_0
    move-exception v1

    .line 91
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .line 93
    .end local v1    # "e":Lorg/json/JSONException;
    :goto_0
    return-void
.end method

.method private getContentFromFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "file"    # Ljava/lang/String;

    .line 122
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 123
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 124
    .local v1, "isr":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 126
    .local v2, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 127
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 130
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 132
    .end local v0    # "stringBuilder":Ljava/lang/StringBuilder;
    .end local v1    # "isr":Ljava/io/InputStreamReader;
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 133
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 135
    .end local v0    # "e":Ljava/io/IOException;
    const-string v0, ""

    return-object v0
.end method

.method public static getInstance()Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;
    .locals 2

    .line 32
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;

    if-nez v0, :cond_1

    .line 33
    const-class v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;

    monitor-enter v0

    .line 34
    :try_start_0
    sget-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;

    if-nez v1, :cond_0

    .line 35
    new-instance v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;

    invoke-direct {v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;-><init>()V

    sput-object v1, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;

    .line 37
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 39
    :cond_1
    :goto_0
    sget-object v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;->mInstance:Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;

    return-object v0
.end method

.method private getKeyCodePoint(I)Landroid/graphics/Point;
    .locals 2
    .param p1, "keycode"    # I

    .line 76
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;->mStringSparseArrayHashMap:Ljava/util/HashMap;

    const-string v1, "com.mark.apidemo"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 77
    .local v0, "keySparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Point;>;"
    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    return-object v1

    .line 80
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getKeyMapFilePackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "fileName"    # Ljava/lang/String;

    .line 57
    const-string v0, ".key"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 58
    .local v0, "LENGTH":I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 59
    const/4 v1, 0x0

    const-string v2, "."

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 61
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private loaderKeyMapFromFile()V
    .locals 6

    .line 43
    const-string v0, "KeyConfigFileParser"

    const-string v1, "loaderKeyMapFromFile"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/xuiservice/keyMap/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 45
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 47
    .local v1, "list":[Ljava/lang/String;
    if-eqz v1, :cond_0

    array-length v2, v1

    if-lez v2, :cond_0

    .line 48
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 49
    .local v4, "item":Ljava/lang/String;
    invoke-direct {p0, v4}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;->getKeyMapFilePackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 50
    .local v5, "packageName":Ljava/lang/String;
    invoke-direct {p0, v5}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;->loaderSingleKeyMapFromFile(Ljava/lang/String;)V

    .line 48
    .end local v4    # "item":Ljava/lang/String;
    .end local v5    # "packageName":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 54
    .end local v1    # "list":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private loaderSingleKeyMapFromFile(Ljava/lang/String;)V
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .line 65
    const-string v0, "KeyConfigFileParser"

    const-string v1, "loaderSingleKeyMapFromFile"

    invoke-static {v0, v1}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/xuiservice/keyMap/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".key"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "file":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;->getContentFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 68
    .local v1, "jsonContent":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;->parseKeyTouchConfig(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;

    move-result-object v2

    .line 69
    .local v2, "keyTouchConfig":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;
    const-string v3, "KeyConfigFileParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "keyTouchConfig: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    if-eqz v2, :cond_0

    .line 71
    iget-object v3, p0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;->mStringSparseArrayHashMap:Ljava/util/HashMap;

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;->access$000(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;->access$100(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;)Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    :cond_0
    return-void
.end method

.method private parseKeyTouchConfig(Ljava/lang/String;)Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;
    .locals 11
    .param p1, "jsonContent"    # Ljava/lang/String;

    .line 96
    new-instance v0, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;-><init>(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser;Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$1;)V

    .line 97
    .local v0, "keyTouchConfig":Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 98
    return-object v1

    .line 101
    :cond_0
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 102
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "pkgName"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;->access$002(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;Ljava/lang/String;)Ljava/lang/String;

    .line 103
    const-string v3, "keyMap"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    .line 104
    .local v3, "jsonArray":Lorg/json/JSONArray;
    new-instance v4, Landroid/util/SparseArray;

    invoke-direct {v4}, Landroid/util/SparseArray;-><init>()V

    .line 105
    .local v4, "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Point;>;"
    const/4 v5, 0x0

    .line 105
    .local v5, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 106
    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 107
    .local v6, "keyValue":Lorg/json/JSONObject;
    const-string v7, "keycode"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 108
    .local v7, "keycode":I
    const-string/jumbo v8, "x"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v8

    .line 109
    .local v8, "x":I
    const-string/jumbo v9, "y"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v9

    .line 110
    .local v9, "y":I
    new-instance v10, Landroid/graphics/Point;

    invoke-direct {v10, v8, v9}, Landroid/graphics/Point;-><init>(II)V

    invoke-virtual {v4, v7, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 105
    .end local v6    # "keyValue":Lorg/json/JSONObject;
    .end local v7    # "keycode":I
    .end local v8    # "x":I
    .end local v9    # "y":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 112
    .end local v5    # "i":I
    :cond_1
    invoke-static {v0, v4}, Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;->access$102(Lcom/xiaopeng/xuiservice/xapp/mode/octopus/widget/KeyConfigFileParser$KeyTouchConfig;Landroid/util/SparseArray;)Landroid/util/SparseArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    return-object v0

    .line 114
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "sparseArray":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/graphics/Point;>;"
    :catch_0
    move-exception v2

    .line 115
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 117
    .end local v2    # "e":Lorg/json/JSONException;
    return-object v1
.end method
