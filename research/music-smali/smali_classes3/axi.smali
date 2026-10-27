.class public Laxi;
.super Ljava/lang/Object;
.source "DataDirtyModelFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Laxi$a;
    }
.end annotation


# instance fields
.field private a:Laxe;

.field private b:Laxj;

.field private c:Laxm;


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    new-instance v0, Laxe;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Laxe;-><init>(Z)V

    iput-object v0, p0, Laxi;->a:Laxe;

    .line 13
    new-instance v0, Laxj;

    invoke-direct {v0, v1}, Laxj;-><init>(Z)V

    iput-object v0, p0, Laxi;->b:Laxj;

    .line 15
    new-instance v0, Laxm;

    invoke-direct {v0, v1}, Laxm;-><init>(Z)V

    iput-object v0, p0, Laxi;->c:Laxm;

    return-void
.end method

.method synthetic constructor <init>(Laxi$1;)V
    .locals 0

    .line 9
    invoke-direct {p0}, Laxi;-><init>()V

    return-void
.end method

.method public static a()Laxi;
    .locals 1

    .line 22
    sget-object v0, Laxi$a;->a:Laxi;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/b;
    .locals 1

    const-string v0, "FROM_MAIN"

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 30
    iget-object p1, p0, Laxi;->a:Laxe;

    return-object p1

    .line 32
    :cond_0
    new-instance p1, Laxe;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Laxe;-><init>(Z)V

    return-object p1
.end method

.method public b(Ljava/lang/String;)Lcom/xiaopeng/musicradio/datalist/b;
    .locals 1

    const-string v0, "FROM_MAIN"

    .line 36
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 37
    iget-object p1, p0, Laxi;->b:Laxj;

    return-object p1

    .line 39
    :cond_0
    new-instance p1, Laxj;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Laxj;-><init>(Z)V

    return-object p1
.end method

.method public c(Ljava/lang/String;)Laxm;
    .locals 1

    const-string v0, "FROM_MAIN"

    .line 43
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Laxi;->c:Laxm;

    return-object p1

    .line 46
    :cond_0
    new-instance p1, Laxm;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Laxm;-><init>(Z)V

    return-object p1
.end method
