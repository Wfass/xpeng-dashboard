.class abstract Lcom/alibaba/fastjson2/schema/UnresolvedReference$ResolveTask;
.super Ljava/lang/Object;
.source "UnresolvedReference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/schema/UnresolvedReference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "ResolveTask"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract resolve(Lcom/alibaba/fastjson2/schema/JSONSchema;)V
.end method
