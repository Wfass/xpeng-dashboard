.class public Lqe;
.super Ljava/lang/Object;
.source "BeanInfo.java"


# instance fields
.field public A:Ljava/util/Locale;

.field public B:Z

.field public C:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Lcom/alibaba/fastjson2/u$a;",
            ">;"
        }
    .end annotation
.end field

.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/Class;

.field public d:Ljava/lang/reflect/Method;

.field public e:Ljava/lang/String;

.field public f:[Ljava/lang/Class;

.field public g:[Ljava/lang/String;

.field public h:Ljava/lang/Class;

.field public i:Ljava/lang/reflect/Constructor;

.field public j:Ljava/lang/reflect/Constructor;

.field public k:Ljava/lang/reflect/Method;

.field public l:[Ljava/lang/String;

.field public m:J

.field public n:J

.field public o:Z

.field public p:Ljava/lang/String;

.field public q:[Ljava/lang/String;

.field public r:[Ljava/lang/String;

.field public s:[Ljava/lang/String;

.field public t:Z

.field public u:Z

.field public v:Ljava/lang/Class;

.field public w:Ljava/lang/Class;

.field public x:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Lqo;",
            ">;"
        }
    .end annotation
.end field

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lqe;->B:Z

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 2

    .line 51
    iget-object v0, p0, Lqe;->y:Ljava/lang/String;

    const-string v1, "required"

    if-nez v0, :cond_0

    .line 52
    invoke-static {p1}, Lcom/alibaba/fastjson2/JSONArray;->of(Ljava/lang/Object;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/alibaba/fastjson2/e;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/alibaba/fastjson2/e;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson2/e;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lqe;->y:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_0
    invoke-static {v0}, Lcom/alibaba/fastjson2/e;->j(Ljava/lang/String;)Lcom/alibaba/fastjson2/e;

    move-result-object v0

    .line 55
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson2/e;->c(Ljava/lang/String;)Lcom/alibaba/fastjson2/JSONArray;

    move-result-object v1

    .line 56
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson2/JSONArray;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-virtual {v0}, Lcom/alibaba/fastjson2/e;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lqe;->y:Ljava/lang/String;

    :goto_0
    return-void
.end method
