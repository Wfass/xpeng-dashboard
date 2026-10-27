.class public Laau;
.super Ljava/lang/Object;
.source "FastJsonConfig.java"


# instance fields
.field private a:Ljava/nio/charset/Charset;

.field private b:Ljava/lang/String;

.field private c:[Lcom/alibaba/fastjson2/u$d;

.field private d:[Lcom/alibaba/fastjson2/ab$b;

.field private e:[Lqo;

.field private f:[Lqo;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss"

    .line 71
    iput-object v0, p0, Laau;->b:Ljava/lang/String;

    .line 72
    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    iput-object v0, p0, Laau;->a:Ljava/nio/charset/Charset;

    const/4 v0, 0x0

    .line 73
    new-array v1, v0, [Lcom/alibaba/fastjson2/u$d;

    iput-object v1, p0, Laau;->c:[Lcom/alibaba/fastjson2/u$d;

    const/4 v1, 0x2

    .line 74
    new-array v1, v1, [Lcom/alibaba/fastjson2/ab$b;

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->WriteByteArrayAsBase64:Lcom/alibaba/fastjson2/ab$b;

    aput-object v2, v1, v0

    sget-object v2, Lcom/alibaba/fastjson2/ab$b;->BrowserSecure:Lcom/alibaba/fastjson2/ab$b;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    iput-object v1, p0, Laau;->d:[Lcom/alibaba/fastjson2/ab$b;

    .line 78
    new-array v1, v0, [Lqo;

    iput-object v1, p0, Laau;->e:[Lqo;

    .line 79
    new-array v0, v0, [Lqo;

    iput-object v0, p0, Laau;->f:[Lqo;

    .line 80
    iput-boolean v3, p0, Laau;->g:Z

    return-void
.end method


# virtual methods
.method public a()[Lcom/alibaba/fastjson2/ab$b;
    .locals 1

    .line 143
    iget-object v0, p0, Laau;->d:[Lcom/alibaba/fastjson2/ab$b;

    return-object v0
.end method
