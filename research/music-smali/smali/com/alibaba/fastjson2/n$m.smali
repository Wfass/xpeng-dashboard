.class final Lcom/alibaba/fastjson2/n$m;
.super Lcom/alibaba/fastjson2/n;
.source "JSONPathSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "m"
.end annotation


# static fields
.field static final a:Lcom/alibaba/fastjson2/n$m;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1085
    new-instance v0, Lcom/alibaba/fastjson2/n$m;

    invoke-direct {v0}, Lcom/alibaba/fastjson2/n$m;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson2/n$m;->a:Lcom/alibaba/fastjson2/n$m;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1087
    invoke-direct {p0}, Lcom/alibaba/fastjson2/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/g$a;)V
    .locals 1

    .line 1101
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 1102
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    goto :goto_0

    .line 1103
    :cond_0
    iget-object v0, p1, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    iget-object v0, v0, Lcom/alibaba/fastjson2/g$a;->f:Ljava/lang/Object;

    :goto_0
    iput-object v0, p1, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    return-void
.end method

.method public a(Lcom/alibaba/fastjson2/u;Lcom/alibaba/fastjson2/g$a;)V
    .locals 1

    .line 1092
    iget-object v0, p2, Lcom/alibaba/fastjson2/g$a;->b:Lcom/alibaba/fastjson2/g$a;

    if-nez v0, :cond_0

    .line 1095
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/u;->aY()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Lcom/alibaba/fastjson2/g$a;->g:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 1096
    iput-boolean p1, p2, Lcom/alibaba/fastjson2/g$a;->h:Z

    return-void

    .line 1093
    :cond_0
    new-instance p1, Lcom/alibaba/fastjson2/c;

    const-string p2, "not support operation"

    invoke-direct {p1, p2}, Lcom/alibaba/fastjson2/c;-><init>(Ljava/lang/String;)V

    throw p1
.end method
