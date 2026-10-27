.class public Lbhg;
.super Ljava/lang/Object;
.source "AudioDownModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbhg$a;
    }
.end annotation


# instance fields
.field private a:Lbhi;

.field private b:Lbhh;

.field private c:Lbhj;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Lbhi;

    invoke-direct {v0}, Lbhi;-><init>()V

    iput-object v0, p0, Lbhg;->a:Lbhi;

    .line 40
    new-instance v0, Lbhh;

    invoke-direct {v0}, Lbhh;-><init>()V

    iput-object v0, p0, Lbhg;->b:Lbhh;

    .line 41
    new-instance v0, Lbhj;

    invoke-direct {v0}, Lbhj;-><init>()V

    iput-object v0, p0, Lbhg;->c:Lbhj;

    return-void
.end method

.method synthetic constructor <init>(Lbhg$1;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lbhg;-><init>()V

    return-void
.end method

.method public static a()Lbhg;
    .locals 1

    .line 16
    sget-object v0, Lbhg$a;->a:Lbhg;

    return-object v0
.end method


# virtual methods
.method public a(I)Lbhi;
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 29
    iget-object p1, p0, Lbhg;->a:Lbhi;

    return-object p1

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 31
    iget-object p1, p0, Lbhg;->b:Lbhh;

    return-object p1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 33
    iget-object p1, p0, Lbhg;->c:Lbhj;

    return-object p1

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Lbhi;
    .locals 1

    .line 20
    iget-object v0, p0, Lbhg;->a:Lbhi;

    return-object v0
.end method

.method public c()Lbhh;
    .locals 1

    .line 24
    iget-object v0, p0, Lbhg;->b:Lbhh;

    return-object v0
.end method
