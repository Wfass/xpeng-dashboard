.class public interface abstract Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;
.super Ljava/lang/Object;
.source "ParserConfig.java"

# interfaces
.implements Lcom/alibaba/fastjson2/u$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/parser/ParserConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AutoTypeCheckHandler"
.end annotation


# virtual methods
.method public apply(JLjava/lang/Class;J)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/Class<",
            "*>;J)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    const/4 p1, 0x0

    return-object p1
.end method

.method public apply(Ljava/lang/String;Ljava/lang/Class;J)Ljava/lang/Class;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;J)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    long-to-int p3, p3

    .line 122
    invoke-interface {p0, p1, p2, p3}, Lcom/alibaba/fastjson/parser/ParserConfig$AutoTypeCheckHandler;->handler(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public abstract handler(Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method
