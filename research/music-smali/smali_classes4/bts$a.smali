.class public Lbts$a;
.super Ljava/lang/Object;
.source "FormatData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Ljava/lang/String;

.field private d:Lbtp;

.field private e:Ljava/lang/String;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Lbtp;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lbts$a;->a:I

    .line 75
    iput p2, p0, Lbts$a;->b:I

    .line 76
    iput-object p3, p0, Lbts$a;->c:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lbts$a;->d:Lbtp;

    return-void
.end method

.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Lbtp;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lbts$a;->a:I

    .line 82
    iput p2, p0, Lbts$a;->b:I

    .line 83
    iput-object p3, p0, Lbts$a;->e:Ljava/lang/String;

    .line 84
    iput-object p4, p0, Lbts$a;->f:Ljava/lang/String;

    .line 85
    iput-object p5, p0, Lbts$a;->d:Lbtp;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 42
    iget-object v0, p0, Lbts$a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lbts$a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public c()Lbtp;
    .locals 1

    .line 58
    iget-object v0, p0, Lbts$a;->d:Lbtp;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 66
    iget-object v0, p0, Lbts$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public e()I
    .locals 1

    .line 89
    iget v0, p0, Lbts$a;->a:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 97
    iget v0, p0, Lbts$a;->b:I

    return v0
.end method
