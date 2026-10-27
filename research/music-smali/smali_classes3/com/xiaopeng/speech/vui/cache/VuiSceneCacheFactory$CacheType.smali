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
    .locals 8

    .line 8
    new-instance v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    const/4 v1, 0x0

    const-string v2, "BUILD"

    invoke-direct {v0, v2, v1, v1}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    .line 9
    new-instance v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    const/4 v2, 0x1

    const-string v3, "UPDATE"

    invoke-direct {v0, v3, v2, v2}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    .line 10
    new-instance v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    const/4 v3, 0x2

    const-string v4, "ADD"

    invoke-direct {v0, v4, v3, v3}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->ADD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    .line 11
    new-instance v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    const/4 v4, 0x3

    const-string v5, "REMOVE"

    invoke-direct {v0, v5, v4, v4}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    .line 12
    new-instance v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    const/4 v5, 0x4

    const-string v6, "DEFAULT"

    invoke-direct {v0, v6, v5, v5}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    .line 13
    new-instance v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    const/4 v6, 0x5

    const-string v7, "DISPLAY_LOCATION"

    invoke-direct {v0, v7, v6, v6}, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    const/4 v0, 0x6

    .line 7
    new-array v0, v0, [Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    sget-object v7, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->BUILD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    aput-object v7, v0, v1

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->UPDATE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->ADD:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->REMOVE:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DEFAULT:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->DISPLAY_LOCATION:Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;->$VALUES:[Lcom/xiaopeng/speech/vui/cache/VuiSceneCacheFactory$CacheType;

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
