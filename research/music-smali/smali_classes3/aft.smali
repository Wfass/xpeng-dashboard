.class Laft;
.super Lahp;
.source "ObjectWriterImplBoolean.java"


# static fields
.field static final a:Laft;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Laft;

    invoke-direct {v0}, Laft;-><init>()V

    sput-object v0, Laft;->a:Laft;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lahp;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 14
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->u()V

    return-void

    .line 17
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->b(Z)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->u()V

    return-void

    .line 26
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->b(Z)V

    return-void
.end method
