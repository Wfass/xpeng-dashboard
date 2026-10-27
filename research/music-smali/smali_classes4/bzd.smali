.class public Lbzd;
.super Lbzb;
.source "ComparisonFailure.java"


# static fields
.field private static final MAX_CONTEXT_LENGTH:I = 0x14

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field private fActual:Ljava/lang/String;

.field private fExpected:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lbzb;-><init>(Ljava/lang/String;)V

    .line 24
    iput-object p2, p0, Lbzd;->fExpected:Ljava/lang/String;

    .line 25
    iput-object p3, p0, Lbzd;->fActual:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .locals 4

    .line 36
    new-instance v0, Lbzc;

    iget-object v1, p0, Lbzd;->fExpected:Ljava/lang/String;

    iget-object v2, p0, Lbzd;->fActual:Ljava/lang/String;

    const/16 v3, 0x14

    invoke-direct {v0, v3, v1, v2}, Lbzc;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Lbzb;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbzc;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
