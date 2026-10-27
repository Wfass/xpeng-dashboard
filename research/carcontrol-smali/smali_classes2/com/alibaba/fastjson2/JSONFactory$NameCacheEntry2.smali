.class final Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;
.super Ljava/lang/Object;
.source "JSONFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NameCacheEntry2"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final value0:J

.field final value1:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJ)V
    .locals 0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->name:Ljava/lang/String;

    .line 87
    iput-wide p2, p0, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->value0:J

    .line 88
    iput-wide p4, p0, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry2;->value1:J

    return-void
.end method
