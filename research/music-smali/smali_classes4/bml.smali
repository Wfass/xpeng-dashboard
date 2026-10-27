.class public Lbml;
.super Ljava/lang/Object;
.source "RankTitleItem.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lbml;->a:Ljava/lang/String;

    .line 14
    iput p2, p0, Lbml;->b:I

    .line 15
    iput p3, p0, Lbml;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 19
    iget v0, p0, Lbml;->b:I

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lbml;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()I
    .locals 1

    .line 27
    iget v0, p0, Lbml;->c:I

    return v0
.end method
