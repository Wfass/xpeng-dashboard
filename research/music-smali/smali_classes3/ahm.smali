.class final Lahm;
.super Lahp;
.source "ObjectWriterImplUUID.java"


# static fields
.field static final a:Lahm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lahm;

    invoke-direct {v0}, Lahm;-><init>()V

    sput-object v0, Lahm;->a:Lahm;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lahp;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 19
    :cond_0
    check-cast p2, Ljava/util/UUID;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/util/UUID;)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 29
    :cond_0
    check-cast p2, Ljava/util/UUID;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/util/UUID;)V

    return-void
.end method
