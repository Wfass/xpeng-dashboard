.class Lcom/android/car/CarVolumeGroupsHelper;
.super Ljava/lang/Object;
.source "CarVolumeGroupsHelper.java"


# static fields
.field private static final TAG_CONTEXT:Ljava/lang/String; = "context"

.field private static final TAG_GROUP:Ljava/lang/String; = "group"

.field private static final TAG_VOLUME_GROUPS:Ljava/lang/String; = "volumeGroups"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mXmlConfiguration:I


# direct methods
.method constructor <init>(Landroid/content/Context;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xmlConfiguration"    # I

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/android/car/CarVolumeGroupsHelper;->mContext:Landroid/content/Context;

    .line 43
    iput p2, p0, Lcom/android/car/CarVolumeGroupsHelper;->mXmlConfiguration:I

    .line 44
    return-void
.end method

.method static synthetic lambda$parseVolumeGroup$0(Ljava/lang/Integer;)I
    .locals 1
    .param p0, "i"    # Ljava/lang/Integer;

    .line 97
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method static synthetic lambda$parseVolumeGroup$1(I)Z
    .locals 1
    .param p0, "i"    # I

    .line 97
    if-ltz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private parseVolumeGroup(ILandroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;)Lcom/android/car/CarVolumeGroup;
    .locals 7
    .param p1, "id"    # I
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "parser"    # Landroid/content/res/XmlResourceParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v0, "contexts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v1

    .line 83
    .local v1, "innerDepth":I
    :cond_0
    :goto_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    move v3, v2

    .local v3, "type":I
    const/4 v4, 0x1

    if-eq v2, v4, :cond_3

    const/4 v2, 0x3

    if-ne v3, v2, :cond_1

    .line 84
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_3

    .line 85
    :cond_1
    if-ne v3, v2, :cond_2

    .line 86
    goto :goto_0

    .line 88
    :cond_2
    const-string v2, "context"

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 89
    iget-object v2, p0, Lcom/android/car/CarVolumeGroupsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v4, Lcom/android/car/R$styleable;->volumeGroups_context:[I

    invoke-virtual {v2, p2, v4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 91
    .local v2, "c":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v2, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 93
    .end local v2    # "c":Landroid/content/res/TypedArray;
    goto :goto_0

    .line 96
    :cond_3
    new-instance v2, Lcom/android/car/CarVolumeGroup;

    iget-object v4, p0, Lcom/android/car/CarVolumeGroupsHelper;->mContext:Landroid/content/Context;

    .line 97
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    sget-object v6, Lcom/android/car/-$$Lambda$CarVolumeGroupsHelper$yg0hwA7ToAISa03d4TPV8L_tJJ4;->INSTANCE:Lcom/android/car/-$$Lambda$CarVolumeGroupsHelper$yg0hwA7ToAISa03d4TPV8L_tJJ4;

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object v5

    sget-object v6, Lcom/android/car/-$$Lambda$CarVolumeGroupsHelper$ip4YucxW5hze_uutvBYXQJtco9c;->INSTANCE:Lcom/android/car/-$$Lambda$CarVolumeGroupsHelper$ip4YucxW5hze_uutvBYXQJtco9c;

    invoke-interface {v5, v6}, Ljava/util/stream/IntStream;->filter(Ljava/util/function/IntPredicate;)Ljava/util/stream/IntStream;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object v5

    invoke-direct {v2, v4, p1, v5}, Lcom/android/car/CarVolumeGroup;-><init>(Landroid/content/Context;I[I)V

    .line 96
    return-object v2
.end method


# virtual methods
.method loadVolumeGroups()[Lcom/android/car/CarVolumeGroup;
    .locals 10

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .local v0, "carVolumeGroups":Ljava/util/List;, "Ljava/util/List<Lcom/android/car/CarVolumeGroup;>;"
    :try_start_0
    iget-object v1, p0, Lcom/android/car/CarVolumeGroupsHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/android/car/CarVolumeGroupsHelper;->mXmlConfiguration:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .local v1, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v2, 0x0

    .line 49
    :try_start_1
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v3

    .line 52
    .local v3, "attrs":Landroid/util/AttributeSet;
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    move v5, v4

    .local v5, "type":I
    const/4 v6, 0x1

    if-eq v4, v6, :cond_0

    const/4 v4, 0x2

    if-eq v5, v4, :cond_0

    .end local v5    # "type":I
    goto :goto_0

    .line 56
    .restart local v5    # "type":I
    :cond_0
    const-string v4, "volumeGroups"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 59
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 60
    .local v4, "outerDepth":I
    const/4 v7, 0x0

    .line 61
    .local v7, "id":I
    :cond_1
    :goto_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v8

    move v5, v8

    if-eq v8, v6, :cond_4

    const/4 v8, 0x3

    if-ne v5, v8, :cond_2

    .line 62
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v9

    if-le v9, v4, :cond_4

    .line 63
    :cond_2
    if-ne v5, v8, :cond_3

    .line 64
    goto :goto_1

    .line 66
    :cond_3
    const-string v8, "group"

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 67
    invoke-direct {p0, v7, v3, v1}, Lcom/android/car/CarVolumeGroupsHelper;->parseVolumeGroup(ILandroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;)Lcom/android/car/CarVolumeGroup;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 71
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v4    # "outerDepth":I
    .end local v5    # "type":I
    .end local v7    # "id":I
    :cond_4
    if-eqz v1, :cond_5

    :try_start_2
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 73
    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :cond_5
    goto :goto_4

    .line 57
    .restart local v1    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v3    # "attrs":Landroid/util/AttributeSet;
    .restart local v5    # "type":I
    :cond_6
    :try_start_3
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v6, "Meta-data does not start with volumeGroups tag"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 71
    .end local v3    # "attrs":Landroid/util/AttributeSet;
    .end local v5    # "type":I
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 48
    :catch_0
    move-exception v2

    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 71
    :goto_2
    if-eqz v1, :cond_8

    if-eqz v2, :cond_7

    :try_start_5
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_3

    :catch_1
    move-exception v4

    :try_start_6
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_8
    :goto_3
    throw v3
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    .end local v1    # "parser":Landroid/content/res/XmlResourceParser;
    :catch_2
    move-exception v1

    .line 72
    .local v1, "e":Ljava/lang/Exception;
    const-string v2, "CAR.AUDIO"

    const-string v3, "Error parsing volume groups configuration"

    invoke-static {v2, v3, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/android/car/CarVolumeGroup;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/android/car/CarVolumeGroup;

    return-object v1
.end method
