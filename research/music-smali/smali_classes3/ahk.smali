.class final Lahk;
.super Lahp;
.source "ObjectWriterImplTimeZone.java"


# static fields
.field static final a:Lahk;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 10
    new-instance v0, Lahk;

    invoke-direct {v0}, Lahk;-><init>()V

    sput-object v0, Lahk;->a:Lahk;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Lahp;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 15
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 19
    :cond_0
    check-cast p2, Ljava/util/TimeZone;

    invoke-virtual {p2}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    return-void
.end method
