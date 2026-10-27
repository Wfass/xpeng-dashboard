.class Lbnc$a;
.super Ljava/lang/Object;
.source "ClientCenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbnc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field static final a:Lbne;

.field static final b:Lbnb;

.field static final c:Lbnd;

.field static final d:Lbnf;

.field static final e:Lbng;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 23
    new-instance v0, Lbne;

    invoke-direct {v0}, Lbne;-><init>()V

    sput-object v0, Lbnc$a;->a:Lbne;

    .line 24
    new-instance v0, Lbnb;

    invoke-direct {v0}, Lbnb;-><init>()V

    sput-object v0, Lbnc$a;->b:Lbnb;

    .line 25
    new-instance v0, Lbnd;

    invoke-direct {v0}, Lbnd;-><init>()V

    sput-object v0, Lbnc$a;->c:Lbnd;

    .line 26
    new-instance v0, Lbnf;

    invoke-direct {v0}, Lbnf;-><init>()V

    sput-object v0, Lbnc$a;->d:Lbnf;

    .line 27
    new-instance v0, Lbng;

    invoke-direct {v0}, Lbng;-><init>()V

    sput-object v0, Lbnc$a;->e:Lbng;

    return-void
.end method
