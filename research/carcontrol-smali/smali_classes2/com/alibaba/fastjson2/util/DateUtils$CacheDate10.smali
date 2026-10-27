.class Lcom/alibaba/fastjson2/util/DateUtils$CacheDate10;
.super Ljava/lang/Object;
.source "DateUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/util/DateUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CacheDate10"
.end annotation


# static fields
.field static final CACHE:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x400

    new-array v0, v0, [Ljava/lang/String;

    .line 64
    sput-object v0, Lcom/alibaba/fastjson2/util/DateUtils$CacheDate10;->CACHE:[Ljava/lang/String;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
