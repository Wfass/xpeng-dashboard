.class final Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$CduBucket;
.super Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;
.source "Bucket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CduBucket"
.end annotation


# static fields
.field private static final CDU_BUCKET_NAME:Ljava/lang/String; = "xmart-cdu-service-log"


# direct methods
.method private constructor <init>()V
    .locals 1

    const-string/jumbo v0, "xmart-cdu-service-log"

    .line 110
    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$1;)V
    .locals 0

    .line 106
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$CduBucket;-><init>()V

    return-void
.end method
