.class public Lawv;
.super Ljava/lang/Object;
.source "MinePageModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lawv$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lawv;->b:Ljava/util/HashMap;

    return-void
.end method

.method synthetic constructor <init>(Lawv$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lawv;-><init>()V

    return-void
.end method

.method public static a()Lawv;
    .locals 1

    .line 16
    sget-object v0, Lawv$a;->a:Lawv;

    return-object v0
.end method


# virtual methods
.method public a(IZ)V
    .locals 1

    .line 35
    iget-object v0, p0, Lawv;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(I)Z
    .locals 2

    .line 39
    iget-object v0, p0, Lawv;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    iget-object v0, p0, Lawv;->b:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Z
    .locals 1

    .line 23
    iget-boolean v0, p0, Lawv;->a:Z

    return v0
.end method

.method public c()Z
    .locals 1

    .line 31
    invoke-virtual {p0}, Lawv;->b()Z

    move-result v0

    return v0
.end method
