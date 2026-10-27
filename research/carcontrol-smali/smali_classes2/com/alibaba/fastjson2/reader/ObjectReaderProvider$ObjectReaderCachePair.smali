.class Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;
.super Ljava/lang/Object;
.source "ObjectReaderProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/reader/ObjectReaderProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ObjectReaderCachePair"
.end annotation


# instance fields
.field final hashCode:J

.field volatile missCount:I

.field final reader:Lcom/alibaba/fastjson2/reader/ObjectReader;


# direct methods
.method public constructor <init>(JLcom/alibaba/fastjson2/reader/ObjectReader;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-wide p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;->hashCode:J

    .line 53
    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderProvider$ObjectReaderCachePair;->reader:Lcom/alibaba/fastjson2/reader/ObjectReader;

    return-void
.end method
