.class final Lahi;
.super Lahp;
.source "ObjectWriterImplString.java"


# static fields
.field static final a:Lahi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 9
    new-instance v0, Lahi;

    invoke-direct {v0}, Lahi;-><init>()V

    sput-object v0, Lahi;->a:Lahi;

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

    .line 13
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    return-void
.end method

.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    .line 18
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    return-void
.end method
