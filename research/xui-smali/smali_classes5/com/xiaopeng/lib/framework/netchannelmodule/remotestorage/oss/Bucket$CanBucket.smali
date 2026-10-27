.class final Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$CanBucket;
.super Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;
.source "Bucket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "CanBucket"
.end annotation


# static fields
.field private static final CAN_BUCKET_NAME:Ljava/lang/String; = "xmart-can-service-log"


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 118
    const-string v0, "xmart-can-service-log"

    invoke-direct {p0, v0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket;-><init>(Ljava/lang/String;)V

    .line 119
    return-void
.end method

.method synthetic constructor <init>(Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$1;

    .line 114
    invoke-direct {p0}, Lcom/xiaopeng/lib/framework/netchannelmodule/remotestorage/oss/Bucket$CanBucket;-><init>()V

    return-void
.end method
