.class final Laab;
.super Laai;
.source "Any.java"


# static fields
.field public static final a:Laab;

.field public static final b:Laai;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 5
    new-instance v0, Laab;

    invoke-direct {v0}, Laab;-><init>()V

    sput-object v0, Laab;->a:Laab;

    .line 6
    new-instance v0, Laaj;

    sget-object v1, Laab;->a:Laab;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Laaj;-><init>(Laai;[Laai$b;Ljava/lang/Boolean;)V

    sput-object v0, Laab;->b:Laai;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 9
    invoke-direct {p0, v0, v0}, Laai;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()Laai$b;
    .locals 1

    .line 14
    sget-object v0, Laai$b;->Any:Laai$b;

    return-object v0
.end method

.method public a(Ljava/lang/Object;)Laaq;
    .locals 0

    .line 19
    sget-object p1, Laab;->u:Laaq;

    return-object p1
.end method
