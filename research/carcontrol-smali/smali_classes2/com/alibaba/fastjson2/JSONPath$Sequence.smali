.class Lcom/alibaba/fastjson2/JSONPath$Sequence;
.super Ljava/lang/Object;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Sequence"
.end annotation


# instance fields
.field final values:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1168
    iput-object p1, p0, Lcom/alibaba/fastjson2/JSONPath$Sequence;->values:Ljava/util/List;

    return-void
.end method
