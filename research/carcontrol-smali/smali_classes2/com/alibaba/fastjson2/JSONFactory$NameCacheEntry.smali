.class final Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;
.super Ljava/lang/Object;
.source "JSONFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "NameCacheEntry"
.end annotation


# instance fields
.field final name:Ljava/lang/String;

.field final value:J


# direct methods
.method public constructor <init>(Ljava/lang/String;J)V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;->name:Ljava/lang/String;

    .line 76
    iput-wide p2, p0, Lcom/alibaba/fastjson2/JSONFactory$NameCacheEntry;->value:J

    return-void
.end method
