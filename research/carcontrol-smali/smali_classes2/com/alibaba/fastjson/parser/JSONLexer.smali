.class public interface abstract Lcom/alibaba/fastjson/parser/JSONLexer;
.super Ljava/lang/Object;
.source "JSONLexer.java"


# static fields
.field public static final ARRAY:I = 0x2

.field public static final END:I = 0x4

.field public static final EOI:C = '\u001a'

.field public static final NOT_MATCH:I = -0x1

.field public static final NOT_MATCH_NAME:I = -0x2

.field public static final OBJECT:I = 0x1

.field public static final UNKNOWN:I = 0x0

.field public static final VALUE:I = 0x3

.field public static final VALUE_NULL:I = 0x5


# virtual methods
.method public abstract decimalValue()Ljava/math/BigDecimal;
.end method

.method public abstract getCurrent()C
.end method

.method public abstract getReader()Lcom/alibaba/fastjson2/JSONReader;
.end method

.method public abstract intValue()I
.end method

.method public abstract isBlankInput()Z
.end method

.method public abstract isEOF()Z
.end method

.method public abstract longValue()J
.end method

.method public abstract nextToken()V
.end method

.method public abstract nextToken(I)V
.end method

.method public abstract stringVal()Ljava/lang/String;
.end method
