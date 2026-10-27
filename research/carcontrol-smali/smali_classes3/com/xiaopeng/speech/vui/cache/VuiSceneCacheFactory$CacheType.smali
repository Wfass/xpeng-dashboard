.class public final enum Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;
.super Ljava/lang/Enum;
.source "VuiSceneCacheFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CacheType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

.field public static final enum ADD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

.field public static final enum BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

.field public static final enum DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

.field public static final enum DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

.field public static final enum REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

.field public static final enum UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;


# instance fields
.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 8
    new-instance v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    const-string v1, "BUILD"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    .line 9
    new-instance v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    const-string v3, "UPDATE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    .line 10
    new-instance v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    const-string v5, "ADD"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->ADD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    .line 11
    new-instance v5, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    const-string v7, "REMOVE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8, v8}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    .line 12
    new-instance v7, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    const-string v9, "DEFAULT"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10, v10}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    .line 13
    new-instance v9, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    const-string v11, "DISPLAY_LOCATION"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12, v12}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 7
    sput-object v11, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->$VALUES:[Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->type:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;
    .locals 1

    .line 7
    const-class v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    return-object p0
.end method

.method public static values()[Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;
    .locals 1

    .line 7
    sget-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->$VALUES:[Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    invoke-virtual {v0}, [Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    return-object v0
.end method


# virtual methods
.method public getType()I
    .locals 1

    .line 21
    iget v0, p0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->type:I

    return v0
.end method
