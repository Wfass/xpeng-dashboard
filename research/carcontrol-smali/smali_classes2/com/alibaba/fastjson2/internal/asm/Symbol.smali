.class final Lcom/alibaba/fastjson2/internal/asm/Symbol;
.super Ljava/lang/Object;
.source "Symbol.java"


# instance fields
.field final data:J

.field final hashCode:I

.field final index:I

.field info:I

.field final name:Ljava/lang/String;

.field next:Lcom/alibaba/fastjson2/internal/asm/Symbol;

.field final owner:Ljava/lang/String;

.field final tag:I

.field final value:Ljava/lang/String;


# direct methods
.method constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput p1, p0, Lcom/alibaba/fastjson2/internal/asm/Symbol;->index:I

    .line 61
    iput p2, p0, Lcom/alibaba/fastjson2/internal/asm/Symbol;->tag:I

    .line 62
    iput-object p3, p0, Lcom/alibaba/fastjson2/internal/asm/Symbol;->owner:Ljava/lang/String;

    .line 63
    iput-object p4, p0, Lcom/alibaba/fastjson2/internal/asm/Symbol;->name:Ljava/lang/String;

    .line 64
    iput-object p5, p0, Lcom/alibaba/fastjson2/internal/asm/Symbol;->value:Ljava/lang/String;

    .line 65
    iput-wide p6, p0, Lcom/alibaba/fastjson2/internal/asm/Symbol;->data:J

    .line 66
    iput p8, p0, Lcom/alibaba/fastjson2/internal/asm/Symbol;->hashCode:I

    return-void
.end method


# virtual methods
.method getArgumentsAndReturnSizes()I
    .locals 1

    .line 70
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/Symbol;->info:I

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/alibaba/fastjson2/internal/asm/Symbol;->value:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson2/internal/asm/Type;->getArgumentsAndReturnSizes(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alibaba/fastjson2/internal/asm/Symbol;->info:I

    .line 73
    :cond_0
    iget v0, p0, Lcom/alibaba/fastjson2/internal/asm/Symbol;->info:I

    return v0
.end method
