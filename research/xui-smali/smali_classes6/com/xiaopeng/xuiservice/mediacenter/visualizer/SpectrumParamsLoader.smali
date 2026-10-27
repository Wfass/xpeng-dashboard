.class public Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;
.super Ljava/lang/Object;
.source "SpectrumParamsLoader.java"


# static fields
.field private static final FREQUENCY_DEFAULT:[F

.field private static final KEY_FREQUENCY:Ljava/lang/String; = "FrequencyValue"

.field private static final KEY_MEDIA_TYPE:Ljava/lang/String; = "MediaType"

.field private static final KEY_MEDIA_TYPE_NAME:Ljava/lang/String; = "MediaTypeName"

.field private static final KEY_RATIO_DELTA:Ljava/lang/String; = "ratioDelta"

.field private static final KEY_WEIGHT:Ljava/lang/String; = "WeightValue"

.field private static final K_DEFAULT:[D

.field private static final POLICY_FILE_DATA:Ljava/lang/String; = "/data/xuiservice/xui_spectrum_params.json"

.field private static final POLICY_FILE_SYSTEM:Ljava/lang/String; = "/system/etc/xui_spectrum_params.json"

.field private static final TAG:Ljava/lang/String; = "SpectrumParamsLoader"


# instance fields
.field private mFrequencyValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[F>;"
        }
    .end annotation
.end field

.field private mRatioDeltaArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mSpectrumParams:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;",
            ">;"
        }
    .end annotation
.end field

.field private mWeightValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "[D>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    const/16 v0, 0x1e

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->FREQUENCY_DEFAULT:[F

    .line 41
    new-array v0, v0, [D

    fill-array-data v0, :array_1

    sput-object v0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->K_DEFAULT:[D

    return-void

    nop

    :array_0
    .array-data 4
        0x41c80000    # 25.0f
        0x41fc0000    # 31.5f
        0x42200000    # 40.0f
        0x42480000    # 50.0f
        0x427c0000    # 63.0f
        0x42a00000    # 80.0f
        0x42c80000    # 100.0f
        0x42fa0000    # 125.0f
        0x43200000    # 160.0f
        0x43480000    # 200.0f
        0x437a0000    # 250.0f
        0x439d8000    # 315.0f
        0x43c80000    # 400.0f
        0x43fa0000    # 500.0f
        0x441d8000    # 630.0f
        0x44480000    # 800.0f
        0x447a0000    # 1000.0f
        0x449c4000    # 1250.0f
        0x44c80000    # 1600.0f
        0x44fa0000    # 2000.0f
        0x451c4000    # 2500.0f
        0x4544e000    # 3150.0f
        0x457a0000    # 4000.0f
        0x459c4000    # 5000.0f
        0x45c4e000    # 6300.0f
        0x45fa0000    # 8000.0f
        0x461c4000    # 10000.0f
        0x46435000    # 12500.0f
        0x467a0000    # 16000.0f
        0x469c4000    # 20000.0f
    .end array-data

    :array_1
    .array-data 8
        0x3f01c3e3a7be424fL    # 3.38844156139202E-5
        0x3f1e1920e6ec6f94L    # 1.14815362149688E-4
        0x3f36b9476ed9da48L    # 3.46736850452532E-4
        0x3f4f4b0ef6629dceL    # 9.54992586021436E-4
        0x3f63a6b79df1b882L    # 0.00239883291901949
        0x3f77089380241edeL    # 0.00562341325190349
        0x3f893226cadfd4f7L    # 0.0123026877081238
        0x3f9922df44900b57L    # 0.0245470891568503
        0x3fa7672575282092L    # 0.0457088189614875
        0x3fb4cef750695c07L    # 0.0812830516164099
        0x3fc1ab3e3f9e7e95L    # 0.138038426460288
        0x3fcc00db7750bb54L    # 0.218776162394955
        0x3fd53140965d276dL    # 0.331131121482591
        0x3fdea1e01c5a0f6aL    # 0.478630092322638
        0x3fe4a9330ec74b4bL    # 0.645654229034656
        0x3fea9dcf0e5c4677L    # 0.831763771102671
        0x3ff0000000000000L    # 1.0
        0x3ff25ed654f1cf1aL    # 1.14815362149688
        0x3ff4248ef8fc2610L    # 1.25892541179417
        0x3ff5179460bd4d6dL    # 1.31825673855641
        0x3ff5955a1a83fc01L    # 1.34896288259165
        0x3ff5179460bd4d6dL    # 1.31825673855641
        0x3ff4248ef8fc2610L    # 1.25892541179417
        0x3ff1f3c99f6bc427L    # 1.12201845430196
        0x3fef4586fe0e0d63L    # 0.977237220955811
        0x3fe8d70431711adeL    # 0.776247116628692
        0x3fe1feb33c1c381dL    # 0.562341325190349
        0x3fd7c73bb29230c1L    # 0.371535229097173
        0x3fcc00db7750bb54L    # 0.218776162394955
        0x3fbe13cf01762917L    # 0.117489755493953
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->mWeightValueMap:Ljava/util/Map;

    .line 33
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->mFrequencyValueMap:Ljava/util/Map;

    .line 34
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->mRatioDeltaArray:Landroid/util/SparseArray;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->mSpectrumParams:Ljava/util/List;

    .line 55
    return-void
.end method

.method private initParamsMap()V
    .locals 8

    .line 96
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->mSpectrumParams:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;

    .line 97
    .local v1, "params":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;
    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;->getMediaType()Ljava/util/List;

    move-result-object v2

    .line 98
    .local v2, "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 99
    .local v4, "type":Ljava/lang/Integer;
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->mWeightValueMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;->getWeightValues()[D

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->mFrequencyValueMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;->getFrequencyValues()[F

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    iget-object v5, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->mRatioDeltaArray:Landroid/util/SparseArray;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-virtual {v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;->getRatioDelta()F

    move-result v7

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 102
    .end local v4    # "type":Ljava/lang/Integer;
    goto :goto_1

    .line 103
    .end local v1    # "params":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;
    .end local v2    # "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_0
    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->mWeightValueMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 105
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/Integer;[D>;>;"
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 107
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[D>;"
    const-string v2, "SpectrumParamsLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " &value[0]:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [D

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/xiaopeng/xuimanager/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Integer;[D>;"
    goto :goto_2

    .line 109
    :cond_2
    return-void
.end method

.method private parseFrequencyValue(Ljava/lang/String;)[F
    .locals 4
    .param p1, "value"    # Ljava/lang/String;

    .line 156
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "frequencyArray":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [F

    .line 159
    .local v1, "frequencyValue":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 160
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v1, v2

    .line 159
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 162
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 164
    .end local v0    # "frequencyArray":[Ljava/lang/String;
    .end local v1    # "frequencyValue":[F
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private parseMediaType(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 132
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 134
    .local v0, "typeArray":[Ljava/lang/String;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 135
    .local v1, "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 136
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 140
    .end local v0    # "typeArray":[Ljava/lang/String;
    .end local v1    # "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private parseWeightValue(Ljava/lang/String;)[D
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    const-string v0, "\\|"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 146
    .local v0, "weightArray":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [D

    .line 147
    .local v1, "weightValue":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 148
    aget-object v3, v0, v2

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 147
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 150
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 152
    .end local v0    # "weightArray":[Ljava/lang/String;
    .end local v1    # "weightValue":[D
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getFileContent(Ljava/io/File;)Ljava/lang/String;
    .locals 5
    .param p1, "file"    # Ljava/io/File;

    .line 169
    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v0, "builder":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 172
    .local v1, "reader":Ljava/io/InputStreamReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 174
    .local v2, "br":Ljava/io/BufferedReader;
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 175
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 177
    :cond_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 178
    invoke-virtual {v1}, Ljava/io/InputStreamReader;->close()V

    .line 179
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 181
    .end local v0    # "builder":Ljava/lang/StringBuilder;
    .end local v1    # "reader":Ljava/io/InputStreamReader;
    .end local v2    # "br":Ljava/io/BufferedReader;
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 182
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .end local v0    # "e":Ljava/lang/Exception;
    goto :goto_1

    .line 183
    :cond_1
    nop

    .line 184
    :goto_1
    const-string v0, ""

    return-object v0
.end method

.method public getFrequencyValue(I)[F
    .locals 2
    .param p1, "mediaType"    # I

    .line 120
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->mFrequencyValueMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    .line 121
    .local v0, "value":[F
    if-eqz v0, :cond_0

    .line 122
    return-object v0

    .line 124
    :cond_0
    sget-object v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->FREQUENCY_DEFAULT:[F

    return-object v1
.end method

.method public getRatioDeltaValue(I)F
    .locals 2
    .param p1, "mediaType"    # I

    .line 128
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->mRatioDeltaArray:Landroid/util/SparseArray;

    const/high16 v1, 0x3e800000    # 0.25f

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public getWeightValue(I)[D
    .locals 2
    .param p1, "mediaType"    # I

    .line 112
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->mWeightValueMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 113
    .local v0, "value":[D
    if-eqz v0, :cond_0

    .line 114
    return-object v0

    .line 116
    :cond_0
    sget-object v1, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->K_DEFAULT:[D

    return-object v1
.end method

.method public load()V
    .locals 12

    .line 58
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/xuiservice/xui_spectrum_params.json"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "dataFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/xui_spectrum_params.json"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .local v1, "systemFile":Ljava/io/File;
    invoke-virtual {p0, v0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->getFileContent(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "content":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    invoke-virtual {p0, v1}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->getFileContent(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 63
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 64
    return-void

    .line 68
    :cond_0
    :try_start_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3, v2}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 69
    .local v3, "jsonArray":Lorg/json/JSONArray;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 70
    new-instance v5, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;

    invoke-direct {v5}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;-><init>()V

    .line 71
    .local v5, "spectrumParams":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;
    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    .line 72
    .local v6, "jsonObject":Lorg/json/JSONObject;
    const-string v7, "MediaTypeName"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;->setMediaTypeName(Ljava/lang/String;)V

    .line 73
    const-string v7, "WeightValue"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->parseWeightValue(Ljava/lang/String;)[D

    move-result-object v7

    .line 74
    .local v7, "weightValue":[D
    const-string v8, "FrequencyValue"

    const-string v9, ""

    invoke-virtual {v6, v8, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->parseFrequencyValue(Ljava/lang/String;)[F

    move-result-object v8

    .line 75
    .local v8, "frequencyValue":[F
    const-string v9, "ratioDelta"

    const-wide/high16 v10, 0x3fd0000000000000L    # 0.25

    invoke-virtual {v6, v9, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v9, v9

    .line 76
    .local v9, "ratioDelta":F
    const-string v10, "MediaType"

    const-string v11, ""

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->parseMediaType(Ljava/lang/String;)Ljava/util/List;

    move-result-object v10

    .line 77
    .local v10, "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz v7, :cond_1

    .line 78
    invoke-virtual {v5, v7}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;->setWeightValues([D)V

    .line 80
    :cond_1
    if-eqz v8, :cond_2

    .line 81
    invoke-virtual {v5, v8}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;->setFrequencyValues([F)V

    .line 83
    :cond_2
    if-eqz v10, :cond_3

    .line 84
    invoke-virtual {v5, v10}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;->setMediaType(Ljava/util/List;)V

    .line 86
    :cond_3
    invoke-virtual {v5, v9}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;->setRatioDelta(F)V

    .line 87
    iget-object v11, p0, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->mSpectrumParams:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .end local v5    # "spectrumParams":Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParams;
    .end local v6    # "jsonObject":Lorg/json/JSONObject;
    .end local v7    # "weightValue":[D
    .end local v8    # "frequencyValue":[F
    .end local v9    # "ratioDelta":F
    .end local v10    # "typeList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 91
    .end local v3    # "jsonArray":Lorg/json/JSONArray;
    .end local v4    # "i":I
    :cond_4
    goto :goto_1

    .line 89
    :catch_0
    move-exception v3

    .line 90
    .local v3, "e":Lorg/json/JSONException;
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V

    .line 92
    .end local v3    # "e":Lorg/json/JSONException;
    :goto_1
    invoke-direct {p0}, Lcom/xiaopeng/xuiservice/mediacenter/visualizer/SpectrumParamsLoader;->initParamsMap()V

    .line 93
    return-void
.end method
