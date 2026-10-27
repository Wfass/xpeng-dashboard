.class public Lahl;
.super Lahp;
.source "ObjectWriterImplToString.java"


# static fields
.field public static final a:Lahl;

.field public static final b:Lahl;


# instance fields
.field private final c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 9
    new-instance v0, Lahl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lahl;-><init>(Z)V

    sput-object v0, Lahl;->a:Lahl;

    .line 10
    new-instance v0, Lahl;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lahl;-><init>(Z)V

    sput-object v0, Lahl;->b:Lahl;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, v0}, Lahl;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0

    .line 18
    invoke-direct {p0}, Lahp;-><init>()V

    .line 19
    iput-boolean p1, p0, Lahl;->c:Z

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson2/ab;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;J)V
    .locals 0

    if-nez p2, :cond_0

    .line 25
    invoke-virtual {p1}, Lcom/alibaba/fastjson2/ab;->q()V

    return-void

    .line 28
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 29
    iget-boolean p3, p0, Lahl;->c:Z

    if-eqz p3, :cond_1

    .line 30
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 32
    :cond_1
    invoke-virtual {p1, p2}, Lcom/alibaba/fastjson2/ab;->d(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
