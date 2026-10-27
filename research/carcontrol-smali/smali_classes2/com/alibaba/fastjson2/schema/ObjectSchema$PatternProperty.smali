.class final Lcom/alibaba/fastjson2/schema/ObjectSchema$PatternProperty;
.super Ljava/lang/Object;
.source "ObjectSchema.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/schema/ObjectSchema;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "PatternProperty"
.end annotation


# instance fields
.field final pattern:Ljava/util/regex/Pattern;

.field final schema:Lcom/alibaba/fastjson2/schema/JSONSchema;


# direct methods
.method public constructor <init>(Ljava/util/regex/Pattern;Lcom/alibaba/fastjson2/schema/JSONSchema;)V
    .locals 0

    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 585
    iput-object p1, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema$PatternProperty;->pattern:Ljava/util/regex/Pattern;

    .line 586
    iput-object p2, p0, Lcom/alibaba/fastjson2/schema/ObjectSchema$PatternProperty;->schema:Lcom/alibaba/fastjson2/schema/JSONSchema;

    return-void
.end method
