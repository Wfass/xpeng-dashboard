.class public Lcom/alibaba/fastjson2/support/config/FastJsonConfig;
.super Ljava/lang/Object;
.source "FastJsonConfig.java"


# instance fields
.field private charset:Ljava/nio/charset/Charset;

.field private dateFormat:Ljava/lang/String;

.field private jsonb:Z

.field private readerFeatures:[Lcom/alibaba/fastjson2/JSONReader$Feature;

.field private readerFilters:[Lcom/alibaba/fastjson2/filter/Filter;

.field private symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

.field private writeContentLength:Z

.field private writerFeatures:[Lcom/alibaba/fastjson2/JSONWriter$Feature;

.field private writerFilters:[Lcom/alibaba/fastjson2/filter/Filter;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    .line 71
    iput-object v0, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->dateFormat:Ljava/lang/String;

    .line 72
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->charset:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/alibaba/fastjson2/JSONReader$Feature;

    .line 73
    iput-object v1, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->readerFeatures:[Lcom/alibaba/fastjson2/JSONReader$Feature;

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/alibaba/fastjson2/JSONWriter$Feature;

    .line 74
    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->WriteByteArrayAsBase64:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    aput-object v2, v1, v0

    sget-object v2, Lcom/alibaba/fastjson2/JSONWriter$Feature;->BrowserSecure:Lcom/alibaba/fastjson2/JSONWriter$Feature;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iput-object v1, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->writerFeatures:[Lcom/alibaba/fastjson2/JSONWriter$Feature;

    new-array v1, v0, [Lcom/alibaba/fastjson2/filter/Filter;

    .line 78
    iput-object v1, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->readerFilters:[Lcom/alibaba/fastjson2/filter/Filter;

    new-array v0, v0, [Lcom/alibaba/fastjson2/filter/Filter;

    .line 79
    iput-object v0, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->writerFilters:[Lcom/alibaba/fastjson2/filter/Filter;

    .line 80
    iput-boolean v3, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->writeContentLength:Z

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getDateFormat()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->dateFormat:Ljava/lang/String;

    return-object v0
.end method

.method public getReaderFeatures()[Lcom/alibaba/fastjson2/JSONReader$Feature;
    .locals 1

    .line 125
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->readerFeatures:[Lcom/alibaba/fastjson2/JSONReader$Feature;

    return-object v0
.end method

.method public getReaderFilters()[Lcom/alibaba/fastjson2/filter/Filter;
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->readerFilters:[Lcom/alibaba/fastjson2/filter/Filter;

    return-object v0
.end method

.method public getSymbolTable()Lcom/alibaba/fastjson2/SymbolTable;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    return-object v0
.end method

.method public getWriterFeatures()[Lcom/alibaba/fastjson2/JSONWriter$Feature;
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->writerFeatures:[Lcom/alibaba/fastjson2/JSONWriter$Feature;

    return-object v0
.end method

.method public getWriterFilters()[Lcom/alibaba/fastjson2/filter/Filter;
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->writerFilters:[Lcom/alibaba/fastjson2/filter/Filter;

    return-object v0
.end method

.method public isJSONB()Z
    .locals 1

    .line 216
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->jsonb:Z

    return v0
.end method

.method public isWriteContentLength()Z
    .locals 1

    .line 197
    iget-boolean v0, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->writeContentLength:Z

    return v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->charset:Ljava/nio/charset/Charset;

    return-void
.end method

.method public setDateFormat(Ljava/lang/String;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->dateFormat:Ljava/lang/String;

    return-void
.end method

.method public setJSONB(Z)V
    .locals 0

    .line 226
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->jsonb:Z

    return-void
.end method

.method public varargs setReaderFeatures([Lcom/alibaba/fastjson2/JSONReader$Feature;)V
    .locals 0

    .line 134
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->readerFeatures:[Lcom/alibaba/fastjson2/JSONReader$Feature;

    return-void
.end method

.method public varargs setReaderFilters([Lcom/alibaba/fastjson2/filter/Filter;)V
    .locals 0

    .line 170
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->readerFilters:[Lcom/alibaba/fastjson2/filter/Filter;

    return-void
.end method

.method public varargs setSymbolTable([Ljava/lang/String;)V
    .locals 0

    .line 246
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONB;->symbolTable([Ljava/lang/String;)Lcom/alibaba/fastjson2/SymbolTable;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->symbolTable:Lcom/alibaba/fastjson2/SymbolTable;

    return-void
.end method

.method public setWriteContentLength(Z)V
    .locals 0

    .line 206
    iput-boolean p1, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->writeContentLength:Z

    return-void
.end method

.method public varargs setWriterFeatures([Lcom/alibaba/fastjson2/JSONWriter$Feature;)V
    .locals 0

    .line 152
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->writerFeatures:[Lcom/alibaba/fastjson2/JSONWriter$Feature;

    return-void
.end method

.method public varargs setWriterFilters([Lcom/alibaba/fastjson2/filter/Filter;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/alibaba/fastjson2/support/config/FastJsonConfig;->writerFilters:[Lcom/alibaba/fastjson2/filter/Filter;

    return-void
.end method
