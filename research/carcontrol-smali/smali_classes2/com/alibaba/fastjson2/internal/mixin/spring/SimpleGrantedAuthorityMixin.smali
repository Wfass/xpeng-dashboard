.class public Lcom/alibaba/fastjson2/internal/mixin/spring/SimpleGrantedAuthorityMixin;
.super Ljava/lang/Object;
.source "SimpleGrantedAuthorityMixin.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONField;
            name = "authority"
        .end annotation
    .end param
    .annotation runtime Lcom/alibaba/fastjson2/annotation/JSONCreator;
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
